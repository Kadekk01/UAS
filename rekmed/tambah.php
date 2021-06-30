<?php
	include 'connection.php';

	$id_obat = $_POST['id_obat'];
	$nama_obat = $_POST['nama_obat'];
	$ket_obat = $_POST['ket_obat'];

	$connect->query("INSERT INTO tb_obat (id_obat,nama_obat,ket_obat) VALUES('".$id_obat."','".$nama_obat."','".$ket_obat."')")
?>