<?php
	session_start();
	include 'conn.php';

	if(!isset($_SESSION['employee']) || trim($_SESSION['employee']) == ''){
		header('location: index.php');
	}

	$sql = "SELECT * FROM employees WHERE id = '".$_SESSION['employee']."'";
	$query = $conn->query($sql);
	$user = $query->fetch_assoc();
?>