import 'package:flutter/material.dart';
import 'package:kedaii_ledy/screens/list_productentry.dart';
import 'package:kedaii_ledy/screens/menu.dart';
import 'package:kedaii_ledy/screens/productentry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Kedaii Ledy',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Cari Keperluarnmu Disini!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Tambah Produk'),
            // Bagian redirection ke ProductEntryFormPage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    // ignore: prefer_const_constructors
                    builder: (context) => ProductEntryFormPage(),
                  ));
            },
            ),
          ListTile(
                leading: const Icon(Icons.list),
                title: const Text('Daftar Product'),
                onTap: () {
                    // Route menu ke halaman Product
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ProductEntryPage()),
                    );
                },
          ),
          
        ],
      ),
    );
  }
}