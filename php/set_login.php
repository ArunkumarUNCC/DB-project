<?php
$host="localhost"; // Host name 
$username="root"; // Mysql username 
$password="123456"; // Mysql password 
$db_name="univdb"; //DB Name
$tb_name="student";

$first_name=$_POST["fname"];
$last_name=$_POST["lname"];
$dob=$_POST["dob"];
$contact=$_POST["contact"];
$address=$_POST["address"];
$email=$_POST["email"];
$signup_name=$_POST["user_name"];
$signup_password=$_POST["password"];

$connection=mysql_connect("$host", "$username", "$password")or die("cannot connect"); 

mysql_select_db("$db_name",$connection) or die("NoDatabase");

$sql="INSERT INTO $tb_name(`STU_NAME`,`PASSWORD`,`FNAME`,`LNAME`,`EMAIL`,`CONTACT`,`ADDRESS`,`DOB`) VALUES('$signup_name','$signup_password','$first_name','$last_name','$email','$contact','$address','$dob')";

mysql_query($sql);

echo json_encode("Account Set Up Completed");

?>