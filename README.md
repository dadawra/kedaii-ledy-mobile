# kedaii_ledy

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

<details>
<summary> Tugas 7 </summary>

# TUGAS 7

### 1. Stateless widget & stateful widget
Stateless widget adalah widget statis yang tidak bisa berubah.
Stateful widget adalah widget dinamis yang dapat berubah tampilannya jika terjadi events baik dari pengaruh user atau ada variabel yang berubah.
Kedua proses ini sama-sama memiliki proses constructor dan build. __Constructor__ adalah tahap penyusunan setiap state yang akan diterapkan, sedangkan __build__ adalah tahap dimana setiap widget dan state dibangun ke dalam bentuk UI. Yang berbeda adalah, stateful widget memiliki proses internal state. __Internal state__ adalah tahap dimana terdapat pemrosesan state yang dipicu dari adanya penambahan atau perubahan data, jika sistem ini dipicu, maka sistem akan me-render tampilan dari widget terbaru.

### 2. Widget 
Widget yang digunakan di dalam proyek ini:
1. __Scaffold__, struktur dasar halaman yang menyediakan kerangka dan AppBar dan body. 
2. __AppBar__, menampilkan judul atau toolbar pada atas halaman.
3. __Text__, menampilkan teks di layar.
4. __Padding__, menambahkan jarak di sekitar widget untuk merapikan tata letak.
5. __Column dan row__, menyusun widget secara vertikan dan horizontal.
6. __SizedBox__, menambahkan spasi kosong atau mengatur ukuran widget.
7. __Center__, memusatkan widget di dalam kontainer.
8. __GridView.count__, menampilkan item dalam bentuk grid dengan jumlah tertentu.
9. __Card__, membuat tampilan seperti kartu dengan efek bayangan.
10. __Container__, menampung widget dan memberikan kontrol untuk tata letaknya.
11. __Mediaquery__, mengambil informasi ukuran layar untuk menyesuaikan layout.
12. __Material__, memberikan tampilan material pada widget seperti warna dan bayangan.
13. __InkWell__, menambahkan efek percikan tinta (ripple) sebagai umpan balik visual pada widget.
14. __ScaffoldMessenger__, menampilkan pesan (SnackBar) di layar sementara.
15. __SnackBar__, menampilkan pesan sementara.
16. __Icon__, menampilkan ikon grafis dari _Icons_ dan _IconData_.
17. __ItemHomepage__, menyimpan data untuk setiap item pada grid.


### 3. Fungsi setState()
setState() berfungsi untuk memberitahu framework bahwa terdapat perubahan pada state yang harus di re-build. Widget yang memanggil fungsi ini akan di re-build sehingga perubahannya bisa dilihat lnagsung oleh pengguna. Namun fungsi ini hanya bisa dilakukan pada StatefulWidget. 

Jika fungsi ini dipanggil, variabel-variabel yang ada di dalam MyhomePage akan terpengaruh pada perubahan yang terjadi.

### 4. Perbedaan const dan final
__Final__ dapat digunakan untuk menginisiasi variable yang bersifat _immutable_ dimana nilai variabelnya sudah atau belum diketahui pada saat kompilasi berjalan. Sedangkan __const__ digunakan untuk mendeklarasikan variabel _immutable_ yang nilainya bersifat konstan dan harus sudah diketahui pada saat waktu berjalan, atau dalam artian nilai dari variabel tersebut harus sudah ada sebelum di compile.

### 5. Cara mengimplementasikan checklist-cechklist tugas 7
Pertama, saya membuat proyek Flutter baru dengan command `flutter create kedaii_ledy`, setelah itu merapikan struktur proyek dengan menambahkan `menu.dart` di dalam direktori `lib`. Selanjutnya, mengubah warna tema aplikasi menjadi warna coklat. Setelah itu, buat `MyHomePage` menjadi _stateless_.

Langkah selanjutnya, membuat card sederhana yang berisi NPM, nama, dan kelas di dalam `class MyHomePage`, dan membuat class `InfoCard` untuk mengatur ukuran info card. Setelah itu membuat button untuk card dengan membuat class `ItemHomepage` baru yang akan dimunculkan di `MyHomePage`.  Pada class `ItemCard` dibuat widget dan mengatur style ItemCard. Selanjutnya mengintegrasikan antara InfoCard dan ItemCard ditampilkan di `MyHomePage` di dalam `Widget Build()`.

Terakhir melakukan `flutter analyze` dan jika tidak ada masalah melakukan add, commit dan push.

</details>

<details>
<summary> Tugas 8 </summary>

# TUGAS 8

### 1. Fungsi dan apa keuntungan dari menggunakan `const` di Flutter? 
`const` digunakan untuk mendeklarasikan variabel yang nilainya tidak akan berubah selama kompilasi. Dengan menggunakan `const`, bisa mengoptimalkan kinerja Flutter dengan meningkatkan efisiensi memori, membuat aplikasi jadi lebih cepat, memudahkan dalam pemeliharaan kode, dan mengurangi risiko kesalahan saat melakukan pembaruan. `const` sebaiknya digunakan pada nilai variabel yang tetap dan tidak akan berubah, dan jangan dilakukan pada nilai variabel yang nilainya tidak boleh diubah setelah ditentukan.

### 2. Column dan Row pada Flutter
Column dan row adalah widget layout yang digunakan untuk mengatur tata letak. Column mengatur widget secara vertikal (satu dibawah yang lain), biasanya digunakan untuk membuat list atau formulir. Row mengatur widget secara horizontal (bersebelahan satu sama lain), biasanya digunakan untuk membuat navbar atau card dengan beberapa elemen yang disusun dari kiri ke kanan.

Contoh column: 
``` 
Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Image.asset('images/pic1.jpg'),
    Image.asset('images/pic2.jpg'),
    Image.asset('images/pic3.jpg'),
  ],
);
```

Contoh row:
```
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Image.asset('images/pic1.jpg'),
    Image.asset('images/pic2.jpg'),
    Image.asset('images/pic3.jpg'),
  ],
);
```

### 3. Elemen input yang digunakan pada halaman form di tugas ini, dan apa saja yang tidak digunakan
Pada *productentry_form.dart* saya menggunakan `TextFormField` untuk menerima input nama, deskripsi, dan jumlah stok produk. Selain itu saya juga menggunakan `ElevatedButton` sebagai tombol save untuk memvalidasi form dan menampilkan dialog jika data produk berhasil disimpan. Beberapa elemen input yang tidak digunakan pada *productentry_form.dart* antara lain `Checbox`, `Radio`, `DropdownButton`, dan `Switch`.

### 4. Cara mengatur tema dalam aplikasi Flutter agar konsisten 
Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Iya, saya mengimpelementasikan tema dalam aplikasi yang saya buat. Saya mengatur tema pada aplikasi saya dengan menggunaka `ThemeData` pada `MaterialApp` untuk menerapkan tema global untuk warna aplikasi, yaitu Red. Jika ingin menggunakan warna tersebut, saya tinggal memanggil `color: Theme.of(context).colorScheme.primary,` agar warna sesuai dengan tema aplikasi saya.

### 5. Cara menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter
Menangani navigasi bisa menggunakan widget `Navigator` yang sudah disediakan oleh Flutter. Widget ini memudahkan kita untuk berpindah antar halaman. `Navigator` cocok untuk struktur halaman yang sederhana. Namun jika struktur halamannya lebih kompleks dan membutuhkan navigasi yang dinamis, maka bisa menggunakan `Navigator 2.0 (Router)`

Sumber : https://docs.flutter.dev/

</details>

<details>
<summary> Tugas 9 </summary>

# Tugas 9

### 1. Mengapa perlu membuat model untuk melakukan pengambilan dan pengiriman data JSON? 
karena, jika kita melakukan _request_ ke suatu _web service_ menggunakan __GET__ maupun __POST__, secara umum kita akan mendapatkan hasil pemangggilan berupa JSON. Sehingga perlu untuk kita melakukan konversi data agar Flutter mengenali JSON sebagai object _class_ dan memastikan data JSON memiliki struktur dan keamanan yang baik. Jika tidak membuat model, aplikasi bisa tetap berjalan namun memiliki risiko error pada sistem yang kompleks.

### 2. Fungsi library _http_ pada tugas ini
_Hypertext Transfer Protocol_ berfungsi untuk melakukan permintaan HTTP, menangani respons dan kesalahan, serta mengambil data dari server, pada tugas ini kita menggunakan JSON.

### 3. Fungsi dari _CookieRequest_ dan mengapa _instanse CookieRequest_ perlu untuk dibagikan ke semua komponen di aplikasi Flutter
_CookieRequest_ berfungsi untuk menangani autentikasi berbasis cookie antar aplikasi Flutter dan server pada Django. Library ini  akan mengelolas status login, mengelola Cookie, mempermudah HTTP request dan memvalidasi respons dari server. Kita perlu membagikan _instanse CookieRequest_ ke seluruh komponen di aplikasi Flutter agar semua komponen bisa mendapatkan data yang sinkron satu sama lain dan efisiense sehingga tidak terjadi konflik data.

### 4. Mekanisme pengiriman data
User akan membuka halaman formulir produk, mengisi formulir sesuai dengan tipe data yang diinginkan. Menekan tombol _save_. Ketika tombol _save ditekan, data dari formulir akan divalidasi, jika valid data akan dikirim ke server Django. Data diproses di server dan akan mengembalikan respons JSON. Jika berhasil, pesan berhasil akan ditampilkan dan akan diarahkan ke halaman utama. Jika gagal, pesan kesalahan akan ditampilkan.

### 5. Mekanisme autentikasi
__LOGIN__
User akan memasukkan username dan password di form. Data tersebut akan dikirim menggunakan HTTP POST ke endpoint django dan server akan memvalidasi data. Setelah itu akan mengembalikan respon apakah berhasil maupun gagal. Flutter akan menampilkan hasil tersebut kepada user. Jika berhasil login, cookie autentikasi akan disimpan.

__REGISTER__
User akan menekan tombol _Register_ pada halaman login dan akan diarahkan ke halamn register. User akan memasukkan username dan password baru. Data tersebut akan dikirim menggunakan HTTP POST ke endpoint django dan server akan memvalidasi data. Setelah itu akan mengembalikan respon apakah berhasil maupun gagal. Flutter akan menampilkan hasil tersebut kepada user. Jika berhasil, user akan dikembalikan ke menu Login untuk melakukan Login User. Cookie akan disimpan.

__LOGOUT__
User akan menekan tombol logout, permintaan logout akan dikirim ke server. Jika berhasil, akan muncul pesan _Sampai Jumpa, $username_ dan user akan diarahkan ke halaman login.

### 6. Bagaimana cara mengimplementasikan tugas diatas step-by-step
Pertama, saya melakukan integrasi autentikasi pada Django untuk Flutter dengan membuat django-app bernama `authentication` yang akan berisi metode view login, register, dan logout. setelah itu saya melakukan integrasi sistem autentikasi pada Flutter dengan menginstal _package_ yang dibutuhkan dan memodifikasi root wigdet untuk menyediakan `CookieRequest`  ke semua _child widget_ dengan `Provider`. Di Flutter, saya membuat folder _screens_ yang berisi `login.dart`, `register.dart` untuk keperluan autentikasi. File `main.dart` juga diubah menjadi `home: const LoginPage()` agar saat pertama kali memasuki web, user akan langsung ke _login page_.

Untuk integrasi data, saya membuat model kustom dengan bantuan _Quicktype_ dan menambahkan dependensi _HTTP_. Saya juga membuat list_productentry.dart yang berfungsi untuk mengambil data dan membuatnya menjadi list.

Selain itu saya membuat fungsi baru pada Django yang akan menyimpan produk baru yang ditambahkan melalui Flutter. Dan menambahkan validasi baru untuk penambahan ini pada aplikasi Flutter.

Terakhir saya menambahkan metode view logout pada proyek Django dan menambahkan metode ini pada Flutter agar user bisa logout saat menekan tombol logout pada Flutter.

</details>