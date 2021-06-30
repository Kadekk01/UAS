<?php
	include'connection.php';
	$id_obat=$_POST['id_obat'];
	$connect->query("DELETE FROM tb_obat WHERE id_obat=".$id_obat);

?>