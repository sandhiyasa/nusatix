import 'package:flutter/material.dart';

class BookmarkState extends ChangeNotifier {
  // Menyimpan daftar ID acara yang di-bookmark
  final List<String> _bookmarkedEventIds = [];

  // Getter untuk mengambil data
  List<String> get bookmarkedEventIds => _bookmarkedEventIds;

  // Fungsi untuk menambah atau menghapus bookmark
  void toggleBookmark(String idAcara) {
    if (_bookmarkedEventIds.contains(idAcara)) {
      _bookmarkedEventIds.remove(idAcara);
    } else {
      _bookmarkedEventIds.add(idAcara);
    }
    // Memberitahu UI (ListenableBuilder) untuk merender ulang
    notifyListeners();
  }

  // Fungsi pengecekan status bookmark
  bool isBookmarked(String idAcara) {
    return _bookmarkedEventIds.contains(idAcara);
  }
}
