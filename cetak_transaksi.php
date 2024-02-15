<?php
include("header.php");
?>
      <body>
        
        <div class="p-4 col-6">
          <div class="card mt-5">
            <div class="card-body">
            <table class="table table-bordered">
		<thead>
			<tr>
				<th>No</th>
				<th>Tanggal Transaksi</th>
        <th>Nama Pemesan</th>
				<th>Menu</th>	
			</tr>
		</thead>
		<tbody>
        <?php
            include("conn/koneksi.php");

            $query = "SELECT id_penjualan, tanggal_penjualan FROM penjualan ORDER BY id_penjualan DESC LIMIT 1";
            $result = mysqli_query($koneksi, $query);
            
            while ($row = mysqli_fetch_assoc($result)) {
                echo "<tr>";
                echo "<td>" . $row['id_penjualan'] . "</td>";
                echo "<td>" . $row['tanggal_penjualan'] . "</td>";
                ?>
                <td>
                  <?php
                  $query1 = "SELECT nama_pelanggan FROM pelanggan WHERE id_pelanggan = '".$row['id_penjualan']."'";
                  $result1 = mysqli_query($koneksi, $query1);
                  
                  while ($row1 = mysqli_fetch_assoc($result1)) {
                    echo $row1['nama_pelanggan'];
                  }

                  ?>
                </td>
                <td>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Nama Produk</th>
                                <th class="col-1">Jumlah</th>
                                <th class="col-1">Harga</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            // Fetch details for the current Penjualan
                            $query2 = "SELECT id_produk, id_penjualan, jumlah_produk, subtotal FROM detailpenjualan WHERE id_detail = '" . $row['id_penjualan'] . "'";
                            $result2 = mysqli_query($koneksi, $query2);

                            // Inisialisasi total harga
                            $totalHarga = 0;

                            while ($detailrow = mysqli_fetch_assoc($result2)) {
                                echo "<tr>";
                                
                                // Fetch NamaProduk
                                $query3 = "SELECT nama_produk FROM produk WHERE id_produk = '" . $detailrow['id_produk'] . "' ";
                                $result3 = mysqli_query($koneksi, $query3);

                                while ($row2 = mysqli_fetch_assoc($result3)) {
                                    echo "<td>" . $row2['nama_produk'] . "</td>";
                                }

                                echo "<td>" . $detailrow['jumlah_produk'] . " Pcs</td>";
                                echo "<td>RP." . $detailrow['subtotal'] . "</td>";
                                echo "</tr>";

                                // Tambahkan Subtotal ke total harga
                                $totalHarga += $detailrow['subtotal'];
                            }

                            // Menampilkan total harga di luar loop
                            echo "<tr>";
                            echo "<td colspan='2'><strong>Total Harga:</strong></td>";
                            echo "<td colspan='2'><strong>RP." . $totalHarga . ",00</strong></td>";
                            echo "</tr>";
                        ?>
                            
                        </tbody>
                    </table>
                </td>
                <?php
                echo "</tr>";
              }
              
        ?>
		</tbody>
	</table>
            </div>
          </div>
        </div>
      </body>
      
      <script>
        window.print()
    </script>




