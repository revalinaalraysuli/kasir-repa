<?php
include_once("../conn/koneksi.php");

if (isset($_POST['update'])) {
    $id = $_GET['id_produk'];

    $name = $_POST['nama_produk'];
    $harga = $_POST['harga'];
    $stok = $_POST['stok'];
    $result = mysqli_query($koneksi, "UPDATE produk SET nama_produk='$name', harga='$harga', stok='$stok' WHERE id_produk=$id");

    header("Location: index.php?page=stok");
    echo "<script>alert('Berhasil')</script>";
}

$id = $_GET['id_produk'];

$result1 = mysqli_query($koneksi, "SELECT * FROM produk WHERE id_produk=$id");

while ($barang_data = mysqli_fetch_array($result1)) {
    $name = $barang_data['nama_produk'];
    $harga = $barang_data['harga'];
    $stok = $barang_data['stok'];
}
?>

<div class="row well">
    <div class="col-md-4">
        <div class="card well">
            <div class="card-header">
                <h3 class="">Update barang</h3>
            </div>
            <div class="card-body">
                <form action="" method="POST">

                    <div class="mb-3 mt-3">
                        <label for="nama" class="form-label">Nama:</label>
                        <input type="text" class="form-control" id="nama_produk" value="<?php echo $name; ?>" placeholder="Masukkan Nama" name="nama_produk">
                    </div>
                    <div class="mb-3">
                        <label for="harga" class="form-label">Harga:</label>
                        <input type="text" class="form-control" id="harga" value="<?php echo $harga; ?>" placeholder="Masukkan Harga" name="harga">
                    </div>
                    <div class="mb-3">
                        <label for="stok" class="form-label">Stok:</label>
                        <input type="text" class="form-control" id="stok" value="<?php echo $stok; ?>" placeholder="Masukkan Stok" name="stok">
                    </div>
                    <button type="submit" name="update" class="btn btn-primary">Update</button>
                </form>
            </div>
        </div>
    </div>
</div>