<?php

//$time_start = microtime(true); 

require_once("actions.php");
$pageLoaded = Pageloader::includePageFromURL();

if (!$pageLoaded) {
    include(DOCUMENT_ROOT . "include/view/bone/other/E_404.htm");
}
//$time_end = microtime(true);
//$execution_time = ($time_end - $time_start);
//echo '<br><br><br><b>Total Execution Time:</b> '.$execution_time.' sec'; 

Notification::writeLog(get_defined_vars());
?>