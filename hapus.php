<?php
include 'koneksi.php';
if (isset($_GET['id'])) {
    header('Location: index.php');
}
$id_makanan = $_GET['id_makanan']; 

$sql    = "DELETE FROM makanan WHERE id_makanan='$id_makanan'";
$query  = mysqli_query($conn, $sql);

if ($query) {
    header('Location: index.php');

}else {
    header('Location: index.php?status=gagal');
}
?>