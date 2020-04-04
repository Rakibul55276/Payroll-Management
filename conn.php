<?php
	$conn = new mysqli('localhost', 'root', '', 'payroll');

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>