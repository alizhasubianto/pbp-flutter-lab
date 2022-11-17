Nama    : Alizha

NPM     : 2106652000

Kelas   : D 

# TUGAS 7 - PBP: Elemen Dasar Flutter

## Jelaskan apa yang dimaksud dengan _stateless widget_ dan _stateful widget_ dan jelaskan perbedaan dari keduanya.
* ___Stateless widget___ adalah _widget_ yang _state_ dan _properties_-nya tidak dapat diubah saat aplikasi sedang dijalankan (_immutable_). Contoh: Text, Icon, RaisedButton

* ___Stateful widget___ adalah _widget_ yang _state_ dan _properties_-nya dapat diubah saat aplikasi sedang dijalankan (_mutable_). Contoh: Checkbox, Radio Button, Slider

### Perbedaan antara _stateless widget_ dan _stateful widget_
* ___Stateless widget___
1. merupakan _static widgets_.
2. tidak bergantung terhadap perubahan atau _behavior_ apapun.
3. tidak memiliki _state_, _stateless widget_ akan di-_update_ hanya saat data eksternalnya diubah.

* ___Stateful widget___
1. merupakan _dynamic widgets_.
2. dapat di-_update_ saat _runtime_ berdasarkan _action_ atau perubahan data yang diberikan oleh _user_.
3. memiliki _internal state_ dan dapat di-_render_ saat _input_ data atau _state_ dari _widget_ berubah.

## Sebutkan _widget_ apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya. 
1. `AppBar`: menampilkan _toolbar_
2. `Center`: meletakkan  _child widget_ di tengah aplikasi baik secara vertikal atau horizontal (menampilkan konten di tengah layar).
3. `Scaffold`: mengimplementasikan struktur umum desain dari _material layout_.
4. `Floating action button`: mengarahkan kursor ke konten yang terdapat pada aplikasi untuk mempromosikan sebuah _action_ yang ditampilkan pada aplikasi.
5. `Text`: menampilkan teks pada layar aplikasi.
6. `Column`: menampilkan _children_ dalam bentuk _array_ vertikal.
7. `Row`: menampilkan _children_ dalam bentuk _array_ horizontal.
8. `Padding`: menambahkan ruang kosong atau jarak di sekitar _widget_ atau sekelompok _widget_.

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
`setState()` berfungsi untuk memberikan informasi kepada _framework_ bahwa objek yang terdapat pada _internal state_ telah berubah dan harus di-_rebuild_. Variabel yang terdampak dari fungsi `setState()` pada tugas 7 ini adalah variabel `_counter`.

## Jelaskan perbedaan antara `const` dengan `final`.
`final` digunakan untuk membuat _values_ dari variabel menjadi _hardcode_ atau tidak dapat diubah lagi (menjadi tetap/permanen). `const` memiliki fungsi yang mirip dengan `final`, perbedaan di antara keduanya adalah `const` membuat variabel menjadi konstan hanya saat _compile time_.

## Implementasi _checklist_
1. Membuat aplikasi baru bernama `counter_7` dengan menjalankan perintah berikut di terminal:
```
flutter create counter_7
cd counter_7
```
2. Membuat fungsi `_decrementCounter` pada class `_MyHomePageState` yang berfungsi untuk melakukan _decrement_ pada variabel `_counter`.
3. Menambahkan _if condition_ untuk mengatur tampilan angka pada tampilan aplikasi, yaitu kondisi jika angka merupakan bilangan genap atau angka merupakan bilangan ganjil.
4. Menambahkan satu `floatingActionButton` sebagai `button` untuk men-_trigger_ fungsi `_decrementCounter` yang di-adjust menggunakan _widget_ `Row` dan `Padding` bersamaan dengan _button_ yang berfungsi untuk men-_trigger_ fungsi `_incrementCounter`.

# TUGAS 8 - PBP: Flutter Form

##  Jelaskan perbedaan `Navigator.push` dan `Navigator.pushReplacement`.
* `Navigator.push` : _Method_ untuk menambahkan sebuah _route_ ke _stack of route_ yang dikelola oleh Navigator. _Method_ ini hanya menumpuk _widget_ sebelumnya dengan _widget_ yang baru, tidak menghapus _widget_ sebelumnya.
* `Navigator.pushReplacement`: _Method_ untuk menggantikan _route_ teratas dengan _route_ yang baru. Berbeda dengan `Navigator.push`, _route_ sebelumnya pada _stack_ akan digantikan dengan _widget_ yang baru jika kita menggunakan `Navigator.pushReplacement`.

## Sebutkan _widget_ apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
1. `AppBar`: menampilkan _toolbar_
2. `Center`: meletakkan _child widget_ di tengah aplikasi baik secara vertikal atau horizontal (menampilkan konten di tengah layar).
3. `Scaffold`: mengimplementasikan struktur umum desain dari material _layout_.
4. `Floating action button`: mengarahkan kursor ke konten yang terdapat pada aplikasi untuk mempromosikan sebuah _action_ yang ditampilkan pada aplikasi.
5. `Text`: menampilkan teks pada layar aplikasi.
6. `Column`: menampilkan _children_ dalam bentuk array vertikal.
7. `Row`: menampilkan _children_ dalam bentuk array horizontal.
8. `Padding`: menambahkan ruang kosong atau jarak di sekitar _widget_ atau sekelompok _widget_.
9. `Drawer`: _widget_ untuk membuat _drawer material design_
10. `Form`: _widget_ yang membuat _container_ untuk _form field_
11. `DropdownButtonFormField`: _widget_ untuk membuat DropdownButton yang dibungkus dengan InputDecorator.
12. `Card`: _widget_ untuk membuat _card material design_

## Sebutkan jenis-jenis _event_ yang ada pada Flutter (contoh: onPressed).
1. `onChanged`
2. `onSaved`
3. `onPressed`
4. `onTap`
5. `onPointerMove`
6. `onLoading`
7. `onLongPress`
8. `onSubmitted`
9. `onEditingComplete`
10. `onRefresh`

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Navigator pada Flutter layaknya _stack_
yang bekerja dengan konsep _Last in, First Out_ atau LIFO di mana _stack_-nya diibaratkan sebagai tumpukan-tumpulkan layar dan posisi _top of stack_ merupakan layar yang ditampilkan.

## Implementasi _checklist_
1. Membuat _file_ `drawer.dart` untuk membuat drawer dengan 3 tombol navigasi, yaitu navigasi ke halaman counter, halaman tambah budget (halaman _form_), dan halaman data budget.
2.  Menambahkan drawer yang telah  dibuat sebelumnya dan memanggil _class_ `myDrawer()` yang terdapat pada _file_ `drawer.dart` di _file_ `main.dart`. 
3. Membuat _file_ `initialbudget.dart` sebagai model untuk budget.
4. Membuat _file_ `form.dart` yang berisikan _form field_ sebagai _form_ untuk _input_ data _user_ dengan menggunakan _widget_ `TextFormField` untuk judul dan nominal budget, _widget_ `DropDownButtonFormField` untuk _input user_ dalam bentuk _drop drown_  untuk memilih jenis _budget_ (pemasukan atau pengeluaran), _widget_ `showDatePicker` untuk tanggal _budget_, dan _widget_ `TextButton` untuk menampilkan data _budget_ yang sudah di-_input_ dalam bentuk pop up dialog.
5. Membuat _file_ `databudget.dart` untuk mengambil data yang sudah di-_input_ _user_ sebelumnya dan menampilkannya dalam bentuk _card_ pada halaman Data Budget.
