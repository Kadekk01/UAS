<?php

$connect = new mysqli("localhost","root","","rekam_medis");

if($connect) {
	echo "Connection Success";
}else{
	echo "Connection Failed";
	exit();
}