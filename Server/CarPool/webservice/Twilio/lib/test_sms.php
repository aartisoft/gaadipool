<?php
    /* Send an SMS using Twilio. You can run this file 3 different ways:
     *
     * 1. Save it as sendnotifications.php and at the command line, run 
     *         php sendnotifications.php
     *
     * 2. Upload it to a web host and load mywebhost.com/sendnotifications.php 
     *    in a web browser.
     *
     * 3. Download a local server like WAMP, MAMP or XAMPP. Point the web root 
     *    directory to the folder containing this file, and load 
     *    localhost:8888/sendnotifications.php in a web browser.
     */

    // Step 1: Get the Twilio-PHP library from twilio.com/docs/libraries/php, 
    // and move it into the folder containing this sendnotifications.php file.
    require "Services/Twilio.php";

    // Step 2: set our AccountSid and AuthToken from https://twilio.com/console
    $AccountSid = "AC07fa404eacf615136bcedbf2dfccb3f0";
    $AuthToken = "f653757b9b6c2f91ca299cb6fdd47a06";

    // Step 3: instantiate a new Twilio Rest Client
    $client = new Services_Twilio($AccountSid, $AuthToken);

    // Step 4: make an array of people we know, to send them a message. 
    // Feel free to change/add your own phone number and name here.
    $people = array(
        "+919941378688" => "Dhana Airtel",
        "+919884034267" => "Dhana - Vodafone"
    );

    // Step 5: Loop over all our friends. $number is a phone number above, and 
    // $name is the name next to it
    foreach ($people as $number => $name) {

        $sms = $client->account->messages->sendMessage(

            // Step 6: Change the 'From' number below to be a valid Twilio number 
            // that you've purchased
            "+12143909549", 

            // the number we are sending to - Any phone number
            $number,

            // the sms body
            "Hey $name, Monkey Party at 6PM. Bring Bananas!"
        );

        // Display a confirmation message on the screen
        echo "Sent message to $name";
    }
?>