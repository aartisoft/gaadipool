<?php

require '../../db.php';
$mobile_no = $_POST['mobile_no'];
require('lib/Services/Twilio.php');
$sid = "AC0825885c0969c7dbf7699675a36e519d"; // Your Account SID from www.twilio.com/user/account
$token = "cd4bad94b1f069937bd7d113bcb3eec6"; // Your Auth Token from www.twilio.com/user/account
$code = rand(100000, 999999);
$smstext = "$code Car Pooling App Registration OTP";
$client = new Services_Twilio($sid, $token);
//$message = $client->account->messages->sendMessage(
//        '+18316100001', // From a valid Twilio number
//        $mobile_no, // Text this number
//        $smstext
//);

$messageid ='0';// $message->sid;
$result = mysqli_query($conn, "INSERT INTO tbl_varifyotp (mobile_no, smsid, verificationcode,verifystatus) VALUES ('$mobile_no','0','$code','No') ") or die(mysql_error());
if ($result) {
    $response["success"] = 1;
    $response["messageid"] = $messageid;
} 
else {
    $response["success"] = 0;
    $response["messageid"] = "fail";
}
echo json_encode($response);
$conn->close();
?>