<?php
	
		require 'connection.php';
		$connection = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
		@$id 			= $_POST['deduction_id'];
		@$philhealth 	= $_POST['philhealth'];
		@$bir 			= $_POST['bir'];
		@$gsis 			= $_POST['gsis'];
		@$love 			= $_POST['pag_ibig'];
		@$loans 		= $_POST['loans'];


		$sql = mysqli_query($connection, "UPDATE deductions SET bir='$bir', gsis='$gsis', pag_ibig='$love', loans='$loans', philhealth='$philhealth' WHERE deduction_id='1'");

		if($sql)
		{
			?>
		        <script>
		            alert('Deductions successfully updated...');
		            window.location.href='home_deductions.php';
		        </script>
		    <?php 
		}
		else {
			echo "Not Successfully Updated!"; 
		}
 ?>