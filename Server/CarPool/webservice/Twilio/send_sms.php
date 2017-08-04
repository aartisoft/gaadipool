<?php

require '../../db.php';
require "lib/Services/Twilio.php";

//$sid = "AC07fa404eacf615136bcedbf2dfccb3f0"; // Your Account SID from www.twilio.com/user/account
//$token = "f653757b9b6c2f91ca299cb6fdd47a06"; // Your Auth Token from www.twilio.com/user/account

$sid = "ACfaf2a17bb772ad98b2c118011a837bf2"; // Your Account SID from www.twilio.com/user/account
$token = "1e8bb94d48463eef5cb5d1320ab64838"; // Your Auth Token from www.twilio.com/user/account
$twilio_phone = '+13132142525';

$mobile_no = $_POST['mobile_no'];

//require('lib/Services/Twilio.php');
$code = rand(100000, 999999);
//$code = 990990;
$smstext = "GaaDIPool Registration OTP - $code";

$client = new Services_Twilio($sid, $token);

$message = $client->account->messages->sendMessage(
        $twilio_phone, // From a valid Twilio number
        $mobile_no, // Text this number
        $smstext
);

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