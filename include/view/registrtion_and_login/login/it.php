<?php
Pageloader::addElement("top_head");
Pageloader::addTag("title", "Etichette Online");
Pageloader::ln();
Pageloader::addTag("head", NULL, 1, 0);
Pageloader::ln();
Pageloader::addTag("body", NULL, 0, 1);
Pageloader::ln();
Pageloader::addElement("b_header");
Pageloader::addElement("b_open_content");
Pageloader::ln();
?>
<div class="login">
<?php
if(isset($GLOBALS['msg_log'])){
    
    echo "<i>".$GLOBALS['msg_log']."</i>";
}
?>
    <form method="post" action="/it/login/do">
        <div class="col-md-6 login-do">
            <div class="login-mail">
                <input type="text" name="name" placeholder="Email" required="">
                <i  class="glyphicon glyphicon-envelope"></i>
            </div>
            <div class="login-mail">
                <input type="password" name="password" placeholder="Password" required="">
                <i class="glyphicon glyphicon-lock"></i>
            </div>
            <span class="news-letter " href="#">
                <label class="checkbox1"><input type="checkbox" name="remember" value="1" ><i> </i>Ricorda la password</label>
            </span>
            <label class="hvr-skew-backward">
                <input type="submit" value="login">
            </label>
        </div>
</div>
<?php
Pageloader::ln();
Pageloader::addElement("b_close_content");
Pageloader::addTag("body", NULL, 1, 0);
Pageloader::ln();
Pageloader::addTag("body", NULL, 1, 0);
Pageloader::ln();
Pageloader::addTag("html", NULL, 1, 0);
?>