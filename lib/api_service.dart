import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  // GET: Mengambil berita/artikel berbahasa Indonesia (contoh: CNN Nasional)
  static const String getUrl = 'https://berita-indo-api-next.vercel.app/api/cnn-news/nasional';
  
  // POST: Tetap menggunakan JSONPlaceholder karena API berita di atas bersifat read-only.
  // Ini digunakan hanya untuk mensimulasikan proses POST (pembelajaran).
  static const String postUrl = 'https://jsonplaceholder.typicode.com/posts';

  // GET: Mengambil daftar berita/artikel bahasa Indonesia
  Future<List<dynamic>> fetchWisata() async {
    try {
      final response = await http.get(Uri.parse(getUrl));
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body);
        // API berita ini mengembalikan object JSON dengan array di dalam key 'data'
        return decoded['data'];
      } else {
        throw Exception('Gagal mengambil data dari API Indonesia');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  // POST: Menambahkan atau memproses data acara / tempat wisata baru
  Future<Map<String, dynamic>> createWisata(String nama, String deskripsi) async {
    try {
      final response = await http.post(
        Uri.parse(postUrl),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json.encode({
          'title': nama,
          'body': deskripsi,
          'userId': 1,
        }),
      );

      if (response.statusCode == 201) { // 201 Created
        return json.decode(response.body);
      } else {
        throw Exception('Gagal menambahkan data');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
