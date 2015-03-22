<?php
$host="localhost"; // Host name 
$username="root"; // Mysql username 
$password="123456"; // Mysql password 
$db_name="univdb"; //DB Name

$user_type=$_POST["user_type"];
$user_name=$_POST["name"];
$user_password=$_POST["password"];

$connect_id=mysql_connect("$host", "$username", "$password")or die("cannot connect"); 

mysql_select_db("$db_name",$connect_id) or die("NoDatabase");

if($user_type=="STUDENT")
	$tb_name="student";
else $tb_name="admin_login";

$sql="SELECT * FROM $tb_name WHERE `STU_NAME`='$user_name' AND `PASSWORD`='$user_password'";
$check=mysql_query($sql);

if(mysql_num_rows($check)==0)
	$msg="Invalid Username or Password";
else{
	while($row = mysql_fetch_array($check)){
		$id = $row[0];
		$fname = $row[2];
		$lname = $row[3];
	}
	$msg="Login Successfull";	
}

echo json_encode(array($id,$fname,$lname,$msg));

?>