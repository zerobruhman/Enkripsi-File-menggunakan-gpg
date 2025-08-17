Simple File Encryptor (Bash)

Script sederhana untuk membuat file teks, lalu mengenkripsi file tersebut menggunakan **GPG** agar lebih aman.  
Cocok untuk belajar Bash scripting dan dasar keamanan file di Linux.

---

Fitur
- Input nama & umur user.
- Membuat file teks baru dengan nama sesuai input.
- Mengedit file menggunakan editor `nano`.
- Mengenkripsi file menggunakan `gpg -c`.
- Menghapus file asli (hanya menyisakan file terenkripsi `.gpg`).

---

Instalasi
Clone repo ini:
buka terminal dan jalankan:
git clone https://github.com/zerobruhman/Enkripsi-File-menggunakan-gpg.git
cd Enkripsi-File-menggunakan-gpg
chmod +x enkripsi_file.sh
./enkripsi_file.sh

