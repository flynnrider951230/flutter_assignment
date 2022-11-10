#### Shafa Aleyda - 2106634534 
#### Tugas 7 PBP
- Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

Stateless widget merupakan widget yang tidak dapat diubah lagi sejak widget pertama kali dibuat. Stateless widget hanya berfungsi untuk menampilkan sesuatu secara statis 

sehingga stateless widget tidak membaca perubahan data yang terjadi. Stateless widget juga tidak berpengaruh oleh input dari user. Sebaliknya, stateful widget adalah widget 

yang bersifat dinamis. Stateful widget merupakan widget yang dapat berubah bergantung terhadap kondisi yang ditentukan. Stateful widget juga dapat dikatakan sebagai mutable widget. 

- Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Text widget 

Text widget pada proyek kali ini digunakan untuk menampilkan string. Pada proyek kali ini, text widget digunakan untuk menampilkan variable counter serta string untuk menandakan apakah counter bernilai ganjil atau genap. 
- Stateless widget

Pada proyek kali ini, stateless widget yang digunakan berupa floatingActionButton. floatingActionButton berfungsi untuk men-trigger event sehingga nilai counter dapat berkurang atau bertambah. 

- Stateful widget 
Pada proyek kali ini, stateful widgetnya berupa text yang dapat berubah-ubah sesuai dengan button yang di-click oleh user serta nilai counter. 

- Button widget 
Button widget yang ada pada proyek kali ini adalah floatingActionButton yang digunakan sebagai trigger untuk melakukan increment ataupun decrement pada counter. 

 - Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Apabila ingin melakukan perubahan pada sebuah object State, fungsi yang digunakan untuk melakukan perubahan tersebut diletakkan pada setState. 

Pada tugas kali ini, setState berfungsi untuk mengubah nilai dari variabel counter dengan melakukan increment pada fungsi _incrementCounter dan decrement nilai dari variabel counter dengan melakukan decrement pada fungsi _decrementCounter. 

- Jelaskan perbedaan antara const dengan final.
Keyword const dengan final keduanya digunakan untuk menyimpan value yang bersifat immutable. Pada penggunaan keyword final, nilai dari variabel diketahui pada saat run time. Sedangkan, penggunaan keyword const mengakibatkan variabel menjadi 

konstan pada saat compile-time. Data pada const harus berupa data yang dapat dikalkulasi pada saat compile time. 

- Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

Pertama-tama, saya melakukan flutter create counter_7 terlebih dahulu untuk membuat sebuah aplikasi flutter baru. Setelah itu, saya mulai memodifikasi program pada main.dart sesuai dengan ketentuan tugas. 

Saya menambahkan fungsi baru yang _decrementCounter yang berfungsi untuk melakukan decrement pada nilai counter dengan syarat bahwa nilai counter tidak lebih kecil dari 1. Setelah itu, saya menambahkan satu floatingActionButton dengan icon remove untuk trigger proses decrement pada counter. 

Alignment antara button increment dengan decrement diatur dengan MainAxisAlignment.spaceBetween. 

