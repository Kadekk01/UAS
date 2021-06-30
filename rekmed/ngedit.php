<?php

	$id_obat = $_POST['id_obat'];
	$nama_obat = $_POST['nama_obat'];
	$ket_obat = $_POST['ket_obat'];

	$connect->query("UPDATE tb_obat SET nama_obat='".$nama_obat."', ket_obat='".$ket_obat."' WHERE id_obat=".$id_obat);
?>