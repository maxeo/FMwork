<?php

if (!empty($_POST['name']) && !empty($_POST['password'])) {
    $user = User::correctLogin($_POST['name'], $_POST['password']);
    if ($user) {
        $idConn = Connection::getIdConnection();
        Connection::removeCurrentConnection();
        
        if (isset($_POST['remember']) && $_POST['remember'])
            Connection::makeNewConnection($user);
        else
            Connection::makeNewConnection($user, true);
        Cart::merge($user, $idConn, $force = 0);
        Pageloader::locationToMessage('n_login_done');
    } else {
        $msg_log = Notification::showCode("n_mistake_name_or_password", Pageloader::getData("lang"), true);
        $_SESSION['msg_log'] = $msg_log['description'];
        header("Location: " . Pageloader::b_pg());
    }
} else {
    $msg_log = Notification::showCode("n_no_username_or_password", Pageloader::getData("lang"), true);
        $_SESSION['msg_log'] = $msg_log['description'];
        header("Location: " . Pageloader::b_pg());
}
//todo: mettere l'errore correttamente
?>