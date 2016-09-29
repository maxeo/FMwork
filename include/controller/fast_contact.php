<?php

if (!empty($_POST['mail']) && !empty($_POST['content_txt']) && filter_var($_POST['mail'], FILTER_VALIDATE_EMAIL)) {
    $sender_name = 'Maxeo.it - Website FastContact';
    $sender_mail = 'noreply@maxeo.it';
    $target_mail = $_POST['mail'];
    $object_mail = 'Fast Contact - Contatto Rapido';
    $body_mail = $_POST['content_txt'];
    
    //Imposto gli headers
    $mail_headers = "From: " . $sender_name . " <" . $sender_mail . ">\r\n";
    $mail_headers .= "Reply-To: " . $target_mail . "\r\n";
    $mail_headers .= "X-Mailer: PHP/" . phpversion();
    
    try {
        mail($target_mail, $object_mail, $body_mail, $mail_headers);
        Pageloader::locationToMessage("n-email-sent-successfully");
    } catch (Exception $ex) {
        //todo: gestire eccezione
    }
}
 else {
    //todo: gestire contenuto non valido
}