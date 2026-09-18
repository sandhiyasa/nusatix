import 'package:flutter/material.dart';

class DetailAcaraScreen extends StatelessWidget {
  // Deklarasi variabel untuk menerima data yang di-passing
  final String namaAcara;
  final String lokasi;
  final String deskripsi;

  // Konstruktor wajib menerima data parameter
  const DetailAcaraScreen({
    super.key,
    required this.namaAcara,
    required this.lokasi,
    required this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Acara'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Icon(
                Icons.local_activity,
                size: 100,
                color: Colors.deepPurple.shade300,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              namaAcara, // Menampilkan data namaAcara yang di-passing
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.red.shade600),
                const SizedBox(width: 8),
                Text(
                  lokasi, // Menampilkan data lokasi yang di-passing
                  style: const TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ],
            ),
            const Divider(height: 40, thickness: 1),
            const Text(
              'Deskripsi Acara',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(
              deskripsi, // Menampilkan data deskripsi yang di-passing
              style: const TextStyle(
                fontSize: 15,
                height: 1.5,
                color: Colors.black87,
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                // Implementasi Navigator.pop untuk kembali
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Konfirmasi & Kembali',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
