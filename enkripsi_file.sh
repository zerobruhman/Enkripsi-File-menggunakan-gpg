#!/bin/bash
echo "Siapa Nama kamu?"
read -p "Masukkan nama: " nama
echo "Halo $nama, selamat datang! terima kasih sudah clone repo ini!"
echo "Berapa umur kamu?"
read -p "Masukkan Umur: " angka
if [ $angka -gt 17 ]; then
    echo "Tua wkwkwk"
else 
    echo "Waw kamu masih muda"
fi
echo -e "\n$nama Mau menyimpan file text penting yang di enkripsi?"
read -p "(y/n): " jawaban
if [ "$jawaban" = "y" ]; then
    echo "Ok, gas kan"
    echo "Note: nama file sertakan eksitensinya contoh: password.txt"
    read -p "Masukkan nama file: " namafile
    echo "Membuat file..."
    sleep 2

    touch "$namafile"
    echo "Silahkan isi file (menggunakan nano) " 
    sleep 2

    nano "$namafile"
    sleep 2

    echo "Siap-siap untuk mengunci file-nya $nama, Ingat jangan lupakan passpharase-nya, gunakan passpharase yang kuat" 
    sleep 5

    gpg -c "$namafile"
    echo "Menghapus file mentah: $namafile"
    sleep 2

    shred -u "$namafile"
    echo "Selamat $nama file kamu telah dienkripsi!" 
    echo "Ingat! jangan sampai lupa passpharase-nya"

elif [ "$jawaban" = "n" ]; then
    echo "Ok, tidak jadi"
else 
    echo "Input tidak valid! harus y/n"
fi


