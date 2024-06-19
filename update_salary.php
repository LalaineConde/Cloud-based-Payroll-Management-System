<?php
	
		require("db.php");

		$connection = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
				  
		@$id 			= $_POST['salary_id'];
		@$salary		= $_POST['salary_rate'];


		$sql = mysqli_query($connection, "UPDATE salary SET salary_rate='$salary' WHERE salary_id='1'");

		if($sql)
		{
			?>
		        <script>
		            alert('Salary rate successfully changed...');
		            window.location.href='home_salary.php';
		        </script>
		    <?php 
		}
		else {
			echo "Not Successfull!"; 
		}
 ?>