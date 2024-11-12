import 'package:flutter/material.dart';
import 'package:kedaii_ledy/screens/productentry_form.dart';

class ItemHomepage {
  final String name;
  final IconData icon;

  ItemHomepage(this.name, this.icon);
}

// memunculkan tombol 
class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.

  final ItemHomepage item; 
  
  const ItemCard(this.item, {super.key}); 

  @override
  Widget build(BuildContext context) {
    // Membuat setiap tombol memiliki warna yang berbeda
  Color backgroundColor;
  switch (item.name) {
    case 'Lihat Daftar Produk':
      backgroundColor = Colors.amberAccent;
      break;
    case 'Tambah Produk':
      backgroundColor = Colors.lightGreen;
      break;
    case 'Logout':
      backgroundColor = Colors.blueGrey;
      break;
    default:
        backgroundColor = Theme.of(context).colorScheme.secondary;
  }

    return Material(
      color: backgroundColor, // Menggunakan warna yang ditentukan di atas.
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(15),
      
      child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
            
          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Tambah Product") {
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => ProductEntryFormPage(),
            ));
          }
        },
        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}