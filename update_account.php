<?php 

  include("db.php");
  include("auth.php");

  $connection = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
    
  $id           = $_POST['id'];
  $deduction    = $_POST['deduction'];
  $overtime     = $_POST['overtime'];
  $bonus        = $_POST['bonus'];

  $sql = mysqli_query($connection, "UPDATE employee SET deduction='$deduction', overtime='$overtime', bonus='$bonus' WHERE emp_id='$id'");

  if ($sql)
  {
    ?>
    <script>
      alert('Account successfully updated.');
      window.location.href='home_employee.php';
    </script>
    <?php 
  }
  else
  {
    echo "Invalid";
  }
?>