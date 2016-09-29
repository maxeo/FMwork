<?php

if (!empty($_POST['mail']) && !empty($_POST['content_txt']) && filter_var($_POST['mail'], FILTER_VALIDATE_EMAIL)) {
    $sender_name = 'Matteo Burbui';
    $sender_mail = 'info@maxeo.it';
    $target_mail = $_POST['mail'];
    $object_mail = 'Fast Contact - Contatto Rapido';
    $body_mail = $_POST['content_txt'];
    
    //Imposto gli headers
    $mail_headers = "From: " . $nome_mittente . " <" . $mail_mittente . ">\r\n";
    $mail_headers .= "Reply-To: " . $mail_mittente . "\r\n";
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