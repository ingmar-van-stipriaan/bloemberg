<?php

    $to = "info@bloembergvoegwerken.nl";
    $from = $_REQUEST['email'];
    $name = $_REQUEST['name'];
    $headers = "From: $from";
    $subject = "U hebt een bericht van bloembergvoegwerken.nl";

    $fields = array();
    $fields{"name"} = "name";
    $fields{"email"} = "email";
    $fields{"phone"} = "phone";
    $fields{"message"} = "message";

    $body = "Verzonden vanuit het contact formulier:\n\n"; foreach($fields as $a => $b){   $body .= sprintf("%s\n",$_REQUEST[$a]); }

    $send = mail($to, $subject, $body, $headers);

?>
