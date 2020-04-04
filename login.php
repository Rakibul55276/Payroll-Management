<?php
	session_start();
	include 'conn.php';

	if(isset($_POST['login'])){
		$username = $_POST['username'];
		$password = $_POST['password'];

		$sql = "SELECT * FROM employees WHERE employee_id = '$username'";
		$query = $conn->query($sql);

		if($query->num_rows < 1){
			$_SESSION['error'] = 'Cannot find account with the username';
		}
		else{
			$row = $query->fetch_assoc();
			if($row['employee_id']==$username and $row['employee_password']==$password){
				$_SESSION['employee'] = $row['id'];
				
			}
			else{
				$_SESSION['error'] = 'Incorrect password';
			}
		}
		
	}
	else{
		$_SESSION['error'] = 'Input employee credentials first';
	}

	header('location: index.php');

?>