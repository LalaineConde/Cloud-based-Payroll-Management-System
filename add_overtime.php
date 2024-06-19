<?php
	
		require("db.php");

		$connection = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
				  
		@$id 			= $_POST['ot_id'];
		@$overtime		= $_POST['rate'];


		$sql = mysqli_query($connection, "UPDATE overtime SET rate='$overtime' WHERE ot_id='1'");

		if($sql)
		{
			?>
		        <script>
		            alert('Overtime rate per hour successfully changed...');
		            window.location.href='home_salary.php';
		        </script>
		    <?php 
		}
		else {
			echo "Not Successfull!"; 
		}
 ?>