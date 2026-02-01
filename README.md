# traveloka
# Kloning Tampilan UI Traveloka

A new Flutter project.
Proyek Flutter ini adalah sebuah latihan untuk mereplikasi tampilan antarmuka (UI) dari halaman utama aplikasi Traveloka. Proyek ini dibuat dengan tujuan untuk belajar dan mendalami pembuatan layout yang kompleks di Flutter, bukan sebagai aplikasi fungsional.

## Getting Started
## 📸 Pratinjau

This project is a starting point for a Flutter application.

![image alt](https://github.com/AhmdMaulidan/duplikasi-traveloka/blob/0db76aa9e29f9f93805a19c8b650e0fb98acd53b/Ficture%20project-10.png)

A few resources to get you started if this is your first Flutter project:
![Screenshot Aplikasi](https://user-images.githubusercontent.com/example.png)

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
## ✨ Fitur

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
Berikut adalah beberapa komponen dan fitur UI yang telah diimplementasikan dalam proyek ini:

- **Layout Scrolling Kompleks**: Menggunakan `NestedScrollView` untuk menciptakan efek scrolling di mana header (termasuk slider gambar dan tab) tetap berada di atas saat konten di dalam tab di-scroll.
- **Slider Promo Otomatis**: Slider gambar di bagian atas yang bergeser secara otomatis setiap beberapa detik, dibuat menggunakan `PageView` dan `Timer`.
- **Tab Kustom**: Implementasi `TabBar` dengan indikator kustom yang memiliki `BoxShadow` dan `borderRadius`, memberikan tampilan yang modern dan sesuai dengan desain aslinya.
- **Kartu Informasi**: Berbagai jenis widget `Card` yang didesain untuk menampilkan informasi seperti form pencarian, promo spesial, dan daftar hotel.
- **Daftar Horizontal**: Penggunaan `ListView` horizontal untuk menampilkan daftar hotel dan penawaran spesial yang bisa digeser ke samping.
- **Clipper Kustom**: Penggunaan `CustomClipper` untuk membuat banner "Save %" dengan bentuk yang unik pada kartu hotel.
- **Struktur Widget yang Terorganisir**: Kode dipecah menjadi beberapa fungsi `_build...` untuk keterbacaan dan pemeliharaan yang lebih baik.

## 🚀 Teknologi yang Digunakan

- **Framework**: Flutter
- **Bahasa**: Dart

## ⚙️ Cara Menjalankan Proyek

Untuk menjalankan proyek ini di lingkungan lokal Anda, ikuti langkah-langkah berikut:

1.  **Clone repository ini**
    ```bash
    git clone https://github.com/username/repository-name.git
    ```
2.  **Masuk ke direktori proyek**
    ```bash
    cd traveloka
    ```
3.  **Install dependencies**
    ```bash
    flutter pub get
    ```
4.  **Jalankan aplikasi**
    ```bash
    flutter run
    ```
