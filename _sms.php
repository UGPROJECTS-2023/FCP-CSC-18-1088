<?php
$to = "+2349090606232@vtext.com";
$from = "e-recruiter@gmail.com";
$message = "This is a text message \n New line";
$headers = "From: $from\n"
mail($to, '', $message, $headers);
?>