<?php 
function koneksiDB() {
    
    $host = "localhost";
    $username = "root";
    $password = "";
    $db = "db_edukasi";
    $conn = mysqli_connect($host, $username, $password, $db);
    
    if(!$conn) {
        die("Koneksi Database Gagal : " .mysqli_connect_error());
    } else {
        return $conn;
    }
}
function selectAllData() {
    $query = "SELECT * FROM tb_rangkuman";
    $result = mysqli_query(koneksiDB(), $query);
    return $result;
}
function insertData($data) {
    $query = "INSERT INTO tb_rangkuman VALUES ('".$data['kode_buku']. "','" . $data['nama_buku'] . "','" . $data['title'] . "','" . $data['size'] . "','" . $data['ekstensi'] . "','" . $data['berkas'] . "') ";
    $result = mysqli_query(koneksiDB(), $query);
    if (!$result) {
        return 0;
    } else {
        return 1;
    }
}
 ?>