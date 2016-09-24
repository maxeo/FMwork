<?php
Pageloader::addElement("top_head");
Pageloader::addTag("title", "Etichette Online");
Pageloader::ln();
Pageloader::addTag("head", NULL, 1, 0);
Pageloader::ln();
Pageloader::addTag("body", NULL, 0, 1);
Pageloader::ln();
Pageloader::addElement("b_header");

Pageloader::addElement("b_open_content_margin");
Pageloader::ln();

$txt="";
if(Pageloader::getData(0)!==false){	//c'è un messaggio da comunicare
	$m_code=Pageloader::getData(0);
	$mess=Notification::showCode($m_code,NULL,true);
	if($mess){
		$txt=$mess['description'];
	}
	else
		$txt="messaggio sconosciuto";
	
}

Pageloader::addTag("p style='color:#555;'", $txt);
Pageloader::ln();
Pageloader::addElement("b_close_content_margin");
?>