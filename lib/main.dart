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
