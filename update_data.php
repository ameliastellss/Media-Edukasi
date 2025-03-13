<?php
session_start();
include"koneksi_hapus.php"; // masukan konekasi DB
// ambil variable data 
$username=$_POST['username'];
$email=$_POST['email'];
$id = @$_GET['id']; // ambil data ID di URL
//Proses query update
$update=mysqli_query($koneksi,"update users set username='$username', email='$email' where id='$id'");
if($update){

// pesan dengan sistem session
$_SESSION['pesan'] = '<font color=green>OK, 1 data berhasil diupdate.</font>';
header("location:tampil_data.php"); // kembali ke halaman tampil
}else{
echo "Gagal update data!";
}
?>