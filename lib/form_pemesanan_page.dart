import 'package:flutter/material.dart';

class FormPemesananScreen extends StatefulWidget {
  const FormPemesananScreen({super.key});

  @override
  State<FormPemesananScreen> createState() => _FormPemesananScreenState();
}

class _FormPemesananScreenState extends State<FormPemesananScreen> {
  // 1. Inisialisasi GlobalKey untuk Form
  final _formKey = GlobalKey<FormState>();

  // Variabel penyimpan data input
  String? _nama;
  String? _email;
  String? _tipeTiket;
  bool _setujuSyarat = false;

  // Daftar opsi untuk Dropdown
  final List<String> _opsiTiket = ['Reguler (Rp 50.000)', 'VIP (Rp 150.000)'];

  // Fungsi untuk memproses data saat tombol submit ditekan
  void _prosesPemesanan() {
    // 2. Mengeksekusi seluruh validator di dalam Form
    if (_formKey.currentState!.validate()) {
      // Validasi manual untuk Checkbox (karena bukan turunan FormField bawaan)
      if (!_setujuSyarat) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Anda harus menyetujui syarat & ketentuan!'),
            backgroundColor: Colors.red,
          ),
        );
        return;
      }

      // Menyimpan nilai dari semua input ke dalam variabel
      _formKey.currentState!.save();

      // Menampilkan feedback sukses kepada pengguna
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Pemesanan Tiket $_tipeTiket atas nama $_nama Berhasil!',
          ),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Pemesanan Tiket')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        // 3. Membungkus seluruh input dengan widget Form
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Lengkapi Data Pemesanan',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              // --- INPUT NAMA ---
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nama Lengkap',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Nama lengkap tidak boleh kosong'; // Pesan error humanis
                  }
                  if (value.length < 3) {
                    return 'Nama harus terdiri dari minimal 3 karakter';
                  }
                  return null; // Mengembalikan null berarti input valid
                },
                onSaved: (value) => _nama = value,
              ),
              const SizedBox(height: 16),

              // --- INPUT EMAIL ---
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Alamat Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email tidak boleh kosong';
                  }
                  // Validasi format email menggunakan Regular Expression
                  final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                  if (!regex.hasMatch(value)) {
                    return 'Masukkan format email yang valid (contoh: user@mail.com)';
                  }
                  return null;
                },
                onSaved: (value) => _email = value,
              ),
              const SizedBox(height: 16),

              // --- INPUT DROPDOWN TIKET ---
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Pilih Tipe Tiket',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.confirmation_num),
                ),
                items: _opsiTiket.map((String tiket) {
                  return DropdownMenuItem<String>(
                    value: tiket,
                    child: Text(tiket),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _tipeTiket = newValue;
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return 'Silakan pilih tipe tiket terlebih dahulu';
                  }
                  return null;
                },
                onSaved: (value) => _tipeTiket = value,
              ),
              const SizedBox(height: 16),

              // --- INPUT CHECKBOX ---
              CheckboxListTile(
                title: const Text(
                  'Saya menyetujui Syarat dan Ketentuan yang berlaku.',
                ),
                value: _setujuSyarat,
                onChanged: (bool? value) {
                  setState(() {
                    _setujuSyarat = value ?? false;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: EdgeInsets.zero,
              ),
              const SizedBox(height: 24),

              // --- TOMBOL SUBMIT ---
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: _prosesPemesanan,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text(
                    'Konfirmasi Pesanan',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
