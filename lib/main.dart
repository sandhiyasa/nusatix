import 'package:flutter/material.dart';
import 'detailAcaraScreen.dart';
import 'bookmarkState.dart';
import 'ProfilScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NusaTix',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MainScreen(),
    );
  }
}

// ============================================================================
// 1. MAIN SCREEN DENGAN BOTTOM NAVIGATION BAR
// ============================================================================
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // Inisialisasi State Manager untuk diteruskan ke halaman anak (Beranda & Profil)
  final BookmarkState _bookmarkState = BookmarkState();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Daftar halaman yang menerima injeksi _bookmarkState
    final List<Widget> _halaman = [
      BerandaAplikasi(bookmarkState: _bookmarkState),
      const Center(
        child: Text('Halaman Tiket Saya', style: TextStyle(fontSize: 20)),
      ),
      ProfilScreen(bookmarkState: _bookmarkState),
    ];

    return Scaffold(
      body: _halaman[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.deepPurple,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_num),
            label: 'Tiket Saya',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}

// ============================================================================
// 2. BERANDA APLIKASI (MENGUBAH & MENDENGARKAN STATE)
// ============================================================================
class BerandaAplikasi extends StatelessWidget {
  // Variabel untuk menerima state yang dilempar dari MainScreen
  final BookmarkState bookmarkState;

  const BerandaAplikasi({super.key, required this.bookmarkState});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NusaTix'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // --- HEADER HERO IMAGE ---
            Stack(
              children: [
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: AssetImage('assets/image/jatiluwih.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.7),
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 20,
                  left: 16,
                  right: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'EKSPLORASI NUSANTARA',
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Temukan Tiket Acara Budaya & Destinasi Favorit Anda',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const Padding(
              padding: EdgeInsets.only(
                left: 16.0,
                top: 20.0,
                right: 16.0,
                bottom: 8.0,
              ),
              child: Text(
                'Acara Kebudayaan Terdekat',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),

            // --- CARD 1: DENPASAR FESTIVAL ---
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Card(
                elevation: 3,
                shadowColor: Colors.orange.withOpacity(0.2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              'Denpasar Festival (Denfest)',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange.shade900,
                              ),
                            ),
                          ),
                          // IMPLEMENTASI STATE MANAGEMENT: ListenableBuilder merender ulang ikon
                          ListenableBuilder(
                            listenable: bookmarkState,
                            builder: (context, child) {
                              bool isSaved = bookmarkState.isBookmarked(
                                'Denpasar Festival (Denfest)',
                              );
                              return IconButton(
                                icon: Icon(
                                  isSaved
                                      ? Icons.bookmark
                                      : Icons.bookmark_border,
                                  color: isSaved
                                      ? Colors.orange.shade800
                                      : Colors.grey,
                                ),
                                onPressed: () {
                                  bookmarkState.toggleBookmark(
                                    'Denpasar Festival (Denfest)',
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_rounded,
                            size: 16,
                            color: Colors.orange.shade700,
                          ),
                          const SizedBox(width: 6),
                          const Expanded(
                            child: Text(
                              'Kawasan Catur Muka, Denpasar',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Eksibisi seni, budaya, dan kuliner tahunan yang merayakan kreativitas masyarakat urban di jantung kota.',
                        style: TextStyle(
                          color: Colors.black87,
                          height: 1.4,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DetailAcaraScreen(
                                  namaAcara: 'Denpasar Festival (Denfest)',
                                  lokasi: 'Kawasan Catur Muka, Denpasar',
                                  deskripsi:
                                      'Eksibisi seni, budaya, dan kuliner tahunan yang merayakan kreativitas masyarakat urban di jantung kota.',
                                ),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange.shade800,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 0,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.confirmation_number_outlined,
                                size: 18,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Pesan Tiket',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // --- CARD 2: PESTA KESENIAN BALI ---
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Card(
                elevation: 3,
                shadowColor: Colors.teal.withOpacity(0.2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              'Pesta Kesenian Bali (PKB)',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal.shade900,
                              ),
                            ),
                          ),
                          // IMPLEMENTASI STATE MANAGEMENT: ListenableBuilder merender ulang ikon
                          ListenableBuilder(
                            listenable: bookmarkState,
                            builder: (context, child) {
                              bool isSaved = bookmarkState.isBookmarked(
                                'Pesta Kesenian Bali (PKB)',
                              );
                              return IconButton(
                                icon: Icon(
                                  isSaved
                                      ? Icons.bookmark
                                      : Icons.bookmark_border,
                                  color: isSaved
                                      ? Colors.teal.shade800
                                      : Colors.grey,
                                ),
                                onPressed: () {
                                  bookmarkState.toggleBookmark(
                                    'Pesta Kesenian Bali (PKB)',
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_rounded,
                            size: 16,
                            color: Colors.teal.shade700,
                          ),
                          const SizedBox(width: 6),
                          const Expanded(
                            child: Text(
                              'Denpasar, Bali',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Pawai seni budaya tahunan yang menampilkan parade seni, lomba, seminar, dan pameran kerajinan khas Bali.',
                        style: TextStyle(
                          color: Colors.black87,
                          height: 1.4,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DetailAcaraScreen(
                                  namaAcara: 'Pesta Kesenian Bali (PKB)',
                                  lokasi: 'Denpasar, Bali',
                                  deskripsi:
                                      'Pawai seni budaya tahunan yang menampilkan parade seni, lomba, seminar, dan pameran kerajinan khas Bali.',
                                ),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal.shade800,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 0,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.confirmation_number_outlined,
                                size: 18,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Pesan Tiket',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
