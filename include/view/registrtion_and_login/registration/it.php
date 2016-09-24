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
<div class='login'>
    <form method="post" action="/it/registrazione/do">
        <div class="col-md-6 login-do">
            <div class="login-mail">
                <input type="text" name="name" required="" placeholder="Nome Utente">
                <i class="glyphicon glyphicon-user"></i>
            </div>
            <div class="login-mail">
                <input type="text" name="mail" required="" placeholder="Email">
                <i class="glyphicon glyphicon-envelope"></i>
            </div>
            <div class="login-mail">
                <input type="password" name="password" required="" placeholder="Password">
                <i class="glyphicon glyphicon-lock"></i>
            </div>
            <div class="pass_securit_box">
                <div class="pass_security_notice" style="margin-top: -28px;height: 24px;font-style: italic;">
                    <div class="pass_security_notice_left">scarsa</div>
                    <div class="pass_security_notice_perc"></div>
                </div>
                <div class="pass_security_indicator" style="height: 5px;width: 100%;margin-bottom: 10px">
                    <div class="pass_security_indicator_intern" style="height: 5px;background-color: #FF0004;width: 10%;"></div>
                </div>
            </div>
            <div class="login-mail">
                <input type="password" required="" placeholder="Ripeti la Password">
                <i class="glyphicon glyphicon-lock"></i>
            </div><?php if (Captcha::is_req()) { ?>
                <img class="login-mail" src="/img/captcha.png">

                <div class="login-mail">
                    <input type="text" required="" name="captcha" placeholder="Inserisci il codice riportato sopra">
                    <i class="glyphicon glyphicon-phone"></i>
                </div>
            <?php } ?>
            <label class="hvr-skew-backward">
                <input type="submit" value="Submit">
            </label>

        </div>
    </form></div>
<?php
Pageloader::ln();
Pageloader::addElement("b_close_content");
Pageloader::addTag("body", NULL, 1, 0);
Pageloader::ln();
Pageloader::addTag("body", NULL, 1, 0);
Pageloader::ln();
Pageloader::addTag("html", NULL, 1, 0);
?>