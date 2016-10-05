<head>
    <title><?php $thisPgTarget = Pageloader::getData("target");if ($thisPgTarget == "home") echo "Matteo Burbui - "; ?>Maxeo.it<?php if (!empty($thisPgTarget) && $thisPgTarget != "home") echo " - " . ucwords(str_replace("-", " ", Pageloader::getData("page"))); ?></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="/style/main.css" />
    <link rel="stylesheet" href="/style/max.css" />
    <?php
    if (Pageloader::getData("lang") == "en")
        $seo_alternate_lang = "it";
    else
        $seo_alternate_lang = "en";
    $seo_alternate_href = Pageloader::pageFromTarget(Pageloader::getData("target"), false, $seo_alternate_lang);
    for ($i = 0; !empty(Pageloader::getData($i)); $i++)
        $seo_alternate_href.="/" . Pageloader::getData(0);

    if (@explode("/", $_SERVER['REQUEST_URI'])[1] != Pageloader::getData("lang")) {
        $seo_alternate_href = "/";
        $seo_alternate_lang = "x-default";
    }
    if (Pageloader::getData("metadescription")) echo '<meta name="description" content="'.Pageloader::getData("metadescription").'">'."\n";
    ?>
    <link rel="alternate" href="<?php echo $seo_alternate_href; ?>" hreflang="<?php echo $seo_alternate_lang; ?>" type=text/html>
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <script src="/scripts/main.js" type="text/javascript"></script>
</head>