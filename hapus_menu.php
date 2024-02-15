<?php
include_once("conn/koneksi.php");
$id = $_GET['id'];
$sql = $koneksi->query("DELETE FROM detail_penjualan WHERE id_penjualan=$id");
echo "<script>
        alert('Data berhasil dihapus');
        window.location.href = 'daftar_transaksi.php';
    </script>";
?>