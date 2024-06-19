<?php 

  include("db.php");
  include("auth.php");
 
  $connection = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
    
  $id         = $_POST['id'];
  $lname      = $_POST['lname'];
  $fname      = $_POST['fname'];
  $gender     = $_POST['gender'];
  $division   = $_POST['division'];
  $emp_type   = $_POST['emp_type'];

  $sql = mysqli_query($connection, "UPDATE employee SET emp_type='$emp_type', lname='$lname', fname='$fname', gender='$gender', division='$division' WHERE emp_id='$id'");

  if ($sql)
  {
    ?>
    <script>
      alert('Employee successfully updated.');
      window.location.href='home_employee.php';
    </script>
    <?php 
  }
  else
  {
    ?>
    <script>
      alert('Invalid action.');
      window.location.href='home_employee.php';
    </script>
    <?php 
  }
?>