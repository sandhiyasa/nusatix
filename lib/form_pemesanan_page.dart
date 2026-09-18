import 'package:flutter/material.dart';

class FormPemesananPage extends StatefulWidget {
  const FormPemesananPage({super.key});

  @override
  _FormPemesananPageState createState() => _FormPemesananPageState();
}

class _FormPemesananPageState extends State<FormPemesananPage> {
  final _formKey = GlobalKey<FormState>();
  String? _jenisTiket;
  bool _syaratDisetujui = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Pemesanan Tiket")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nama Pemesan', border: OutlineInputBorder()),
                validator: (value) => value!.isEmpty ? 'Nama wajib diisi' : null,
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(labelText: 'Jenis Tiket', border: OutlineInputBorder()),
                items: ['Ekonomi', 'Bisnis', 'VIP'].map((String val) {
                  return DropdownMenuItem(value: val, child: Text(val));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _jenisTiket = newValue;
                  });
                },
                validator: (value) => value == null ? 'Pilih jenis tiket terlebih dahulu' : null,
              ),
              const SizedBox(height: 16),
              CheckboxListTile(
                title: const Text("Saya setuju dengan syarat dan ketentuan"),
                value: _syaratDisetujui,
                onChanged: (newValue) {
                  setState(() {
                    _syaratDisetujui = newValue ?? false;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (!_syaratDisetujui) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Anda harus menyetujui syarat & ketentuan')),
                      );
                      return;
                    }
                    // Proses data jika semua valid
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Tiket $_jenisTiket berhasil dipesan')),
                    );
                  }
                },
                child: const Text('Pesan Tiket'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
