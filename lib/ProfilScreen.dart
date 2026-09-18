import 'package:flutter/material.dart';
import 'bookmarkState.dart';

class ProfilScreen extends StatelessWidget {
  final BookmarkState bookmarkState;

  const ProfilScreen({super.key, required this.bookmarkState});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil & Bookmark')),
      body: ListenableBuilder(
        listenable: bookmarkState,
        builder: (context, child) {
          final bookmarks = bookmarkState.bookmarkedEventIds;

          if (bookmarks.isEmpty) {
            return const Center(child: Text('Belum ada acara yang disimpan.'));
          }

          return ListView.builder(
            itemCount: bookmarks.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.bookmark, color: Colors.deepPurple),
                title: Text('ID Acara Tersimpan: ${bookmarks[index]}'),
              );
            },
          );
        },
      ),
    );
  }
}
