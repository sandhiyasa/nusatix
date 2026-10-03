import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'api_service.dart';

class WisataPage extends StatefulWidget {
  const WisataPage({super.key});

  @override
  State<WisataPage> createState() => _WisataPageState();
}

class _WisataPageState extends State<WisataPage> {
  final ApiService _apiService = ApiService();
  late Future<List<dynamic>> _wisataListFuture;
  final List<dynamic> _addedItems = [];

  @override
  void initState() {
    super.initState();
    // Panggil GET Request saat inisialisasi
    _wisataListFuture = _tarikDataDenganCache();
  }

  Future<List<dynamic>> _tarikDataDenganCache() async {
    final prefs = await SharedPreferences.getInstance();
    try {
      // Mencoba menarik data langsung dari Server (Online)
      final dataOnline = await _apiService.fetchWisata();
      
      // Jika sukses, simpan (encode) data tersebut ke memori lokal
      prefs.setString('cache_berita', jsonEncode(dataOnline));
      return dataOnline;
    } catch (e) {
      // Jika koneksi gagal, cari data cadangan di memori lokal (Offline)
      final cacheString = prefs.getString('cache_berita');
      if (cacheString != null) {
        return jsonDecode(cacheString); // Decode kembali ke List
      }
      throw Exception('Tidak ada koneksi internet & cache kosong.');
    }
  }

  Future<void> _showAddWisataDialog() async {
    final prefs = await SharedPreferences.getInstance();
    final TextEditingController _namaController = TextEditingController(text: prefs.getString('draft_nama') ?? '');
    final TextEditingController _deskripsiController = TextEditingController(text: prefs.getString('draft_deskripsi') ?? '');

    if (!mounted) return;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Tambah Data (POST)'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _namaController,
                decoration: const InputDecoration(labelText: 'Judul'),
                onChanged: (value) => prefs.setString('draft_nama', value),
              ),
              TextField(
                controller: _deskripsiController,
                decoration: const InputDecoration(labelText: 'Deskripsi'),
                onChanged: (value) => prefs.setString('draft_deskripsi', value),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () async {
                if (_namaController.text.isNotEmpty &&
                    _deskripsiController.text.isNotEmpty) {
                  try {
                    // Panggil POST Request
                    final result = await _apiService.createWisata(
                      _namaController.text,
                      _deskripsiController.text,
                    );

                    if (mounted) {
                      await prefs.remove('draft_nama');
                      await prefs.remove('draft_deskripsi');

                      Navigator.pop(context);
                      
                      setState(() {
                        _addedItems.insert(0, {
                          'title': result['title'],
                          'body': result['body'],
                        });
                        // Tetap refresh data API jika diperlukan
                        _wisataListFuture = _tarikDataDenganCache();
                      });
                      
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Berhasil POST data! ID: ${result['id']}',
                          ),
                        ),
                      );
                    }
                  } catch (e) {
                    if (mounted) {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text('Gagal: $e')));
                    }
                  }
                }
              },
              child: const Text('Simpan'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Berita CNN Nasional')),
      body: FutureBuilder<List<dynamic>>(
        future: _wisataListFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Terjadi Kesalahan: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Tidak ada data'));
          } else {
            // Gabungkan data yang baru ditambahkan lokal dengan data dari API
            final apiDataList = snapshot.data!.take(10).toList();
            final dataList = [..._addedItems, ...apiDataList];
            
            return ListView.builder(
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                final item = dataList[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.place, color: Colors.blue),
                    title: Text(
                      item['title'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      item['contentSnippet'] ??
                          item['body'] ??
                          'Tidak ada deskripsi',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddWisataDialog,
        child: const Icon(Icons.add),
        tooltip: 'Tambah Data (POST)',
      ),
    );
  }
}
