<?php 
// data akun database + nama database (password kosong)
$koneksi=mysqli_connect("localhost","root","","db_edukasi");

if (mysqli_connect_errno()){ // cek kondisi jika koneksi berhasil
echo "Koneksi database gagal : " . mysqli_connect_error();}?>