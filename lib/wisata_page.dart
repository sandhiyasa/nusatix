import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'api_service.dart';

class WisataPage extends StatefulWidget {
  const WisataPage({super.key});

  @override
  State<WisataPage> createState() => _WisataPageState();
}

class _WisataPageState extends State<WisataPage> {
  final ApiService _apiService = ApiService();
  late Future<List<dynamic>> _wisataListFuture;

  @override
  void initState() {
    super.initState();
    // Panggil GET Request saat inisialisasi
    _wisataListFuture = _apiService.fetchWisata();
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
            // Ambil 10 data pertama saja agar tidak terlalu panjang
            final dataList = snapshot.data!.take(10).toList();
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
