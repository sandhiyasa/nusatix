

<!-- ===================Lampiran 1 =================--> 
<!-- 
import 'package:flutter/material.dart';

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
      home: const BerandaAplikasi(),
    );
  }
}

class BerandaAplikasi extends StatelessWidget {
  const BerandaAplikasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NusaTix'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.orange.shade300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Festival Budaya Lembah Baliem',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange.shade900,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Lokasi: Wamena, Papua Pegunungan',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Festival adat tertua di Papua yang menampilkan simulasi perang antarsuku serta tarian tradisional.',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.teal.shade100,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.teal.shade300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pesta Kesenian Bali (PKB)',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Lokasi: Denpasar, Bali',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Pawai seni budaya tahunan yang menampilkan parade seni, lomba, seminar, dan pameran kerajinan khas Bali.',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.red.shade100,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.red.shade300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Festival Nasional Reog Ponorogo',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red.shade900,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Lokasi: Ponorogo, Jawa Timur',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Pertunjukan tari topeng raksasa terbesar di Indonesia dengan iringan musik gamelan yang magis.',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
<!-- =================== End Lampiran 1 =================--> 
 


<!-- =================== Lampiran 2 =================--> 
 <!-- 
 import 'package:flutter/material.dart';

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
      home: const BerandaAplikasi(),
    );
  }
}

class BerandaAplikasi extends StatelessWidget {
  const BerandaAplikasi({super.key});

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
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.orange.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Festival Budaya Lembah Baliem',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange.shade900,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Lokasi: Wamena, Papua Pegunungan',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Festival adat tertua di Papua yang menampilkan simulasi perang antarsuku serta tarian tradisional.',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.teal.shade100,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.teal.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pesta Kesenian Bali (PKB)',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal.shade900,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Lokasi: Denpasar, Bali',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Pawai seni budaya tahunan yang menampilkan parade seni, lomba, seminar, dan pameran kerajinan khas Bali.',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.red.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Festival Nasional Reog Ponorogo',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red.shade900,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Lokasi: Ponorogo, Jawa Timur',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Pertunjukan tari topeng raksasa terbesar di Indonesia dengan iringan musik gamelan yang magis.',
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: Text(
                'Destinasi Wisata Populer',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12.0,
                      right: 6.0,
                      bottom: 12.0,
                    ),
                    child: Container(
                      width: 200,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: Colors.blue.shade300),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Raja Ampat',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text('Papua Barat'),
                          SizedBox(height: 4),
                          Text(
                            'Surga bawah laut terindah di dunia dengan gugusan pulau karang.',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6.0,
                      vertical: 12.0,
                    ),
                    child: Container(
                      width: 200,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: Colors.green.shade300),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Candi Borobudur',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text('Jawa Tengah'),
                          SizedBox(height: 4),
                          Text(
                            'Candi Buddha terbesar di dunia dan salah satu warisan budaya UNESCO.',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 6.0,
                      right: 12.0,
                      bottom: 12.0,
                    ),
                    child: Container(
                      width: 200,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.purple.shade100,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: Colors.purple.shade300),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Taman Nasional Komodo',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text('Nusa Tenggara Timur'),
                          SizedBox(height: 4),
                          Text(
                            'Habitat asli kadal raksasa purba Komodo yang menakjubkan.',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

  -->
  <!-- =================== end Lampiran 2 =================--> 

  <!-- =================== Lampiran 3 =================--> 
  <!--
import 'package:flutter/material.dart';

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
      home: const BerandaAplikasi(),
    );
  }
}

class BerandaAplikasi extends StatelessWidget {
  const BerandaAplikasi({super.key});

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
            Stack(
              children: [
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1596402184320-417e7178b2cd?auto=format&fit=crop&w=1200&q=80',
                      ),
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
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.orange.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Festival Budaya Lembah Baliem',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange.shade900,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Lokasi: Wamena, Papua Pegunungan',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Festival adat tertua di Papua yang menampilkan simulasi perang antarsuku serta tarian tradisional.',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.teal.shade100,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.teal.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pesta Kesenian Bali (PKB)',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal.shade900,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Lokasi: Denpasar, Bali',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Pawai seni budaya tahunan yang menampilkan parade seni, lomba, seminar, dan pameran kerajinan khas Bali.',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.red.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Festival Nasional Reog Ponorogo',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red.shade900,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Lokasi: Ponorogo, Jawa Timur',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Pertunjukan tari topeng raksasa terbesar di Indonesia dengan iringan musik gamelan yang magis.',
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: Text(
                'Destinasi Wisata Populer',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12.0,
                      right: 6.0,
                      bottom: 12.0,
                    ),
                    child: Container(
                      width: 200,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: Colors.blue.shade300),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Raja Ampat',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text('Papua Barat'),
                          SizedBox(height: 4),
                          Text(
                            'Surga bawah laut terindah di dunia dengan gugusan pulau karang.',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6.0,
                      vertical: 12.0,
                    ),
                    child: Container(
                      width: 200,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: Colors.green.shade300),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Candi Borobudur',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text('Jawa Tengah'),
                          SizedBox(height: 4),
                          Text(
                            'Candi Buddha terbesar di dunia dan salah satu warisan budaya UNESCO.',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 6.0,
                      right: 12.0,
                      bottom: 12.0,
                    ),
                    child: Container(
                      width: 200,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.purple.shade100,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: Colors.purple.shade300),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Taman Nasional Komodo',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text('Nusa Tenggara Timur'),
                          SizedBox(height: 4),
                          Text(
                            'Habitat asli kadal raksasa purba Komodo yang menakjubkan.',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

  -->
  <!-- =================== end Lampiran 3 =================--> 


  <!-- =================== Mulai Lampiran 4 ===================
  import 'package:flutter/material.dart';

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
      home: const BerandaAplikasi(),
    );
  }
}

class BerandaAplikasi extends StatelessWidget {
  const BerandaAplikasi({super.key});

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
            // --- BAGIAN BODY: EVENT UTAMA (CARD-BASED) ---
            const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 20.0, right: 16.0, bottom: 8.0),
              child: Text(
                'Acara Kebudayaan Terdekat',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            
            // Card 1: Baliem
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Card(
                elevation: 3,
                shadowColor: Colors.orange.withOpacity(0.2),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
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
                              'Festival Budaya Lembah Baliem',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange.shade900,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.orange.shade100,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              'Budaya',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange.shade800,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.location_on_rounded, size: 16, color: Colors.orange.shade700),
                          const SizedBox(width: 6),
                          const Expanded(
                            child: Text(
                              'Wamena, Papua Pegunungan',
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
                        'Festival adat tertua di Papua yang menampilkan simulasi perang antarsuku serta tarian tradisional.',
                        style: TextStyle(color: Colors.black87, height: 1.4, fontSize: 14),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        height: 48, // Accessible Tappable Area (>= 48dp)
                        child: ElevatedButton(
                          onPressed: () {},
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
                              Icon(Icons.confirmation_number_outlined, size: 18),
                              SizedBox(width: 8),
                              Text(
                                'Pesan Tiket',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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

            // Card 2: Bali
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Card(
                elevation: 3,
                shadowColor: Colors.teal.withOpacity(0.2),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
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
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.teal.shade100,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              'Seni',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal.shade800,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.location_on_rounded, size: 16, color: Colors.teal.shade700),
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
                        style: TextStyle(color: Colors.black87, height: 1.4, fontSize: 14),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {},
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
                              Icon(Icons.confirmation_number_outlined, size: 18),
                              SizedBox(width: 8),
                              Text(
                                'Pesan Tiket',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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

            // Card 3: Reog
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Card(
                elevation: 3,
                shadowColor: Colors.red.withOpacity(0.2),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
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
                              'Festival Nasional Reog Ponorogo',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.red.shade900,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.red.shade100,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              'Festival',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.red.shade800,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.location_on_rounded, size: 16, color: Colors.red.shade700),
                          const SizedBox(width: 6),
                          const Expanded(
                            child: Text(
                              'Ponorogo, Jawa Timur',
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
                        'Pertunjukan tari topeng raksasa terbesar di Indonesia dengan iringan musik gamelan yang magis.',
                        style: TextStyle(color: Colors.black87, height: 1.4, fontSize: 14),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red.shade800,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 0,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.confirmation_number_outlined, size: 18),
                              SizedBox(width: 8),
                              Text(
                                'Pesan Tiket',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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

            // --- BAGIAN BODY: DESTINASI POPULER (HORIZONTAL ROW) ---
            const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 24.0, right: 16.0, bottom: 12.0),
              child: Text(
                'Destinasi Wisata Populer',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            
            SizedBox(
              height: 200, // Memberikan tinggi tetap agar layout Row aman
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    // Destinasi 1: Raja Ampat
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 6.0, bottom: 16.0),
                      child: Container(
                        width: 220,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(color: Colors.blue.shade200),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Raja Ampat',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade900,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(Icons.location_on, size: 14, color: Colors.blue.shade700),
                                const SizedBox(width: 4),
                                const Text(
                                  'Papua Barat',
                                  style: TextStyle(fontSize: 12, color: Colors.black54),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            const Expanded(
                              child: Text(
                                'Surga bawah laut terindah di dunia dengan gugusan pulau karang.',
                                style: TextStyle(fontSize: 12, color: Colors.black87),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: double.infinity,
                              height: 36,
                              child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.blue.shade800,
                                  side: BorderSide(color: Colors.blue.shade300),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text(
                                  'Detail Wisata',
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Destinasi 2: Borobudur
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 0.0),
                      child: Container(
                        width: 220,
                        margin: const EdgeInsets.only(bottom: 16.0),
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.green.shade50,
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(color: Colors.green.shade200),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Candi Borobudur',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.green.shade900,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(Icons.location_on, size: 14, color: Colors.green.shade700),
                                const SizedBox(width: 4),
                                const Text(
                                  'Jawa Tengah',
                                  style: TextStyle(fontSize: 12, color: Colors.black54),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            const Expanded(
                              child: Text(
                                'Candi Buddha terbesar di dunia dan salah satu warisan budaya UNESCO.',
                                style: TextStyle(fontSize: 12, color: Colors.black87),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: double.infinity,
                              height: 36,
                              child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.green.shade800,
                                  side: BorderSide(color: Colors.green.shade300),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text(
                                  'Detail Wisata',
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Destinasi 3: Komodo
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0, right: 16.0, bottom: 16.0),
                      child: Container(
                        width: 220,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.purple.shade50,
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(color: Colors.purple.shade200),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Taman Nasional Komodo',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple.shade900,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(Icons.location_on, size: 14, color: Colors.purple.shade700),
                                const SizedBox(width: 4),
                                const Text(
                                  'Nusa Tenggara Timur',
                                  style: TextStyle(fontSize: 12, color: Colors.black54),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            const Expanded(
                              child: Text(
                                'Habitat asli kadal raksasa purba Komodo yang menakjubkan.',
                                style: TextStyle(fontSize: 12, color: Colors.black87),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: double.infinity,
                              height: 36,
                              child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.purple.shade800,
                                  side: BorderSide(color: Colors.purple.shade300),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text(
                                  'Detail Wisata',
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                ),
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
          ],
        ),
      ),
    );
  }
}
   -->

<!-- 
 =================== Mulai Lampiran 5  Pertemuan 4 ===================
import 'package:flutter/material.dart';
import 'detailAcaraScreen.dart';

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
      // MENGUBAH HOME KE MAINSCREEN (UNTUK BOTTOM NAVIGATION BAR)
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

  // Daftar halaman yang akan ditampilkan berdasarkan tab yang aktif
  final List<Widget> _halaman = [
    const BerandaAplikasi(),
    const Center(
      child: Text('Halaman Tiket Saya', style: TextStyle(fontSize: 20)),
    ),
    const Center(child: Text('Halaman Profil', style: TextStyle(fontSize: 20))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Mengubah state indeks navigasi
    });
  }

  @override
  Widget build(BuildContext context) {
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
// 2. BERANDA APLIKASI (SUMBER DATA)
// ============================================================================
class BerandaAplikasi extends StatelessWidget {
  const BerandaAplikasi({super.key});

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

            // Card 1: Denpasar Festival
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
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.orange.shade100,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              'Festival',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange.shade800,
                              ),
                            ),
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
                        height: 48, // Accessible Tappable Area (>= 48dp)
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

            // Card 2: Bali
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
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.teal.shade100,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              'Seni',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal.shade800,
                              ),
                            ),
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
                          // MODIFIKASI: Implementasi Navigator.push dan Passing Data
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
            // (Card Destinasi Horisontal dapat dibiarkan seperti sebelumnya untuk menghemat baris kode)
          ],
        ),
      ),
    );
  }
}


// ============================================================================
// 3. HALAMAN DETAIL (PENERIMA DATA & NAVIGATOR.POP)
// ============================================================================
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
 -->

 <!-- pertamuan 5
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

// ============================================================================
// 3. HALAMAN DETAIL (PENERIMA DATA & NAVIGATOR.POP)
// ============================================================================
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

 
  -->

