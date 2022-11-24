### Shafa Aleyda - 2106634534 
#### Tugas 7 PBP
#
##### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

Stateless widget merupakan widget yang tidak dapat diubah lagi sejak widget pertama kali dibuat. Stateless widget hanya berfungsi untuk menampilkan sesuatu secara statis sehingga stateless widget tidak membaca perubahan data yang terjadi. Stateless widget juga tidak berpengaruh oleh input dari user. Sebaliknya, stateful widget adalah widget yang bersifat dinamis. Stateful widget merupakan widget yang dapat berubah bergantung terhadap kondisi yang ditentukan. Stateful widget juga dapat dikatakan sebagai mutable widget. 

##### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Text widget 

Text widget pada proyek kali ini digunakan untuk menampilkan string. Pada proyek kali ini, text widget digunakan untuk menampilkan variable counter serta string untuk menandakan apakah counter bernilai ganjil atau genap. 
- Stateless widget

Pada proyek kali ini, stateless widget yang digunakan berupa floatingActionButton. floatingActionButton berfungsi untuk men-trigger event sehingga nilai counter dapat berkurang atau bertambah. 

- Stateful widget 

Pada proyek kali ini, stateful widgetnya berupa text yang dapat berubah-ubah sesuai dengan button yang di-click oleh user serta nilai counter. 

- Button widget 

Button widget yang ada pada proyek kali ini adalah floatingActionButton yang digunakan sebagai trigger untuk melakukan increment ataupun decrement pada counter. 

##### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Apabila ingin melakukan perubahan pada sebuah object State, fungsi yang digunakan untuk melakukan perubahan tersebut diletakkan pada setState. 

Pada tugas kali ini, setState berfungsi untuk mengubah nilai dari variabel counter dengan melakukan increment pada fungsi _incrementCounter dan decrement nilai dari variabel counter dengan melakukan decrement pada fungsi _decrementCounter. 

##### Jelaskan perbedaan antara const dengan final.
Keyword const dengan final keduanya digunakan untuk menyimpan value yang bersifat immutable. Pada penggunaan keyword final, nilai dari variabel diketahui pada saat runtime. Sedangkan, penggunaan keyword const mengakibatkan variabel menjadi konstan pada saat compile-time. Data pada const harus berupa data yang dapat dikalkulasi pada saat compile time. 

##### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

Pertama-tama, saya melakukan flutter create counter_7 terlebih dahulu untuk membuat sebuah aplikasi flutter baru. Setelah itu, saya mulai memodifikasi program pada main.dart sesuai dengan ketentuan tugas. Saya menambahkan fungsi baru yang _decrementCounter yang berfungsi untuk melakukan decrement pada nilai counter dengan syarat bahwa nilai counter tidak lebih kecil dari 1. Setelah itu, saya menambahkan satu floatingActionButton dengan icon remove dengan trigger onclick untuk melakukan proses decrement pada counter. Alignment antara button increment dengan decrement diatur dengan MainAxisAlignment.spaceBetween. 

#
#### Tugas 8 PBP

##### Perbedaan Navigator.push dengan Navigator.pushReplacement

Navigator.push adalah sebuah method pada Flutter yang berfungsi untuk menambahkan route baru ke stack route dimana stack route sendiri dikelola oleh Navigator. Sedangkan, Navigator.pushReplacement sendiri adalah sebuah method pada Flutter yang berfungsi untuk mengganti route yang sedang aktif pada navigator dengan melakukan operasi push route baru dan membuang route sebelumnya apabila route yang baru telah selesai melakukan 

##### Widget yang digunakan dan fungsinya 

- Text: menampilkan tulisan serta memodifikasi tampilan tulisan 
- Form: mengelompokkan dan melakukan validasi pada beberapa formfields
- Row & Column: widgets pada Flutter yang memungkinkan children di-align secara horizontal ataupun vertikal 
- TextButton: button tanpa border yang memiliki reaksi terhadap onPressed dan onLongPress
- Padding: menambahkan padding atau space kosong pada sekeliling widget 
- Drawer: untuk navigasi antar halaman
- Container: sebuah widget yang bertugas sebagai pembungkus dari widget lain

##### Jenis-jenis action pada Flutter 
- onPressed()
- onClick()
- onSaved()
- onLongPress()
- onTap()

##### Cara kerja Navigator dalam “mengganti” halaman pada Flutter 

Navigator menyediakan methods untuk mengubah stack dengan melakukan operasi push pada stack ataupun pop dari stack. Method Navigator.push digunakan untuk navigasi ke halaman baru sedangkan navigator pop digunakan untuk kembali dari halaman yang sedang diakses ke halaman sebelumnya. Pada aplikasi mobile, full-screen elements umumnya disebut sebagai “screens” atau “pages”. Pada flutter, elemen tersebut dikenal sebagai routes dan dikelola oleh widget Navigator. Navigator mengelola sebuah stack yang berisi objek-objek dari routes. Navigator akan mengubah Navigator.pages menjadi sebuah stack berisi routes. Apabila terjadi perubahan pada Navigator.pages maka hal tersebut akan men-trigger perubahan pada stack of routes. Navigator akan memperbarui routes agar sesuai dengan konfigurasi baru pada Navigator.pages. Route yang berada pada posisi paling bawah pada Navigator stack dapat diimplementasikan dengan MaterialApp.

##### Bagaimana cara kamu implementasi checklist di atas

- Membuat drawer yang berfungsi sebagai navigasi menuju halaman home, form budget dan data budget 
- Memodifikasi halaman form.dart dengan menerapkan widget form yang menerima input dari user dalam bentuk TextForm untuk input nominal dan judul serta list drop down untuk tipe budget. Halaman budget form juga dilengkapi dengan floatingActionButton yang berfungsi untuk melakukan proses penyimpanan data input user ke list dan mengeluarkan dialog box yang menginformasikan kepada user bahwa data sudah berhasil disimpan. 
- Memodifikasi halaman data.dart sehingga dapat menampilkan data hasil input user yang disimpan pada list judul dan nominal. Data pada list diakses sesuai dengan indexnya. Hal tersebut diimplementasikan dengan ListView.builder sehingga objek data input user pada list seluruhnya dapat ditampilkan. 


#
#### Tugas 9 PBP

#####Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Kita dapat melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Walaupun bisa, namun penggunaan model mempermudah penambilan data tanpa menggunakan list multidimensi. 

##### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- RichText: menampilkan string dan fethed data JSON
- ListView: menampilkan widget dalam bentuk list
- InkWell: membuat widget memiliki behaviour ketika user klik pada widget tersebut 
- Stack: menyusun data secara menumpuk 

##### Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
Pertama-tama, hal yang dilakukan adalah menambahkan depedensi http ke dalam proyek. Depedensi ini berfungsi untuk bertukar data melalui metode HTTP request. Setelah itu, tambahkan potongan kode berupa user-permisiion yang berfungsi untuk membuka akses agar proyek dapat mengakses data dari internet. Model yang diperoleh melalui Quicktype kemudian disimpan di dalam file my_watchlist.dart yang berada pada folder model. Selanjutnya, akan dibuat halaman utama yang menunjukkan list model my_watchlist. Data pada JSON diperoleh melalui fungsi fetchMyWatchlist. 
Kemudian, untuk menampilkan data pada halaman detail, dilakukan dengan bantuan pushNamed dengan routing menuju halaman detail my watchlist ketika user onTap pada list tertentu (sebelumnya, routing dibuat pada materialApp pada halaman main.dart) dengan melakukan pass argumen berupa snapshot data sesuai dengan index pada list yang akan di klik oleh user. Data pada halaman detail kemudian ditampilkan sesuai key name dari masing-masing data. 

##### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Membuat folder model dan menyimpan model pada file my_watchlist.dart
- Membuat folder page dan memindahkan seluruh file kecuali file main ke folder tersebut
- Membuat model pada QuickType
- Fetch data JSON sehingga data bisa ditampilkan pada halaman 
