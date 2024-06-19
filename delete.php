<?php 
	require('db.php');
	require 'connection.php';
	$connection = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
		  
	$id=$_GET['emp_id'];
	$query = "DELETE FROM employee WHERE emp_id=$id"; 
	$result = mysqli_query($connection, $query) or die ( mysql_error());
	header("Location: home_employee.php"); 
 ?>