    <nav id="nav">
        <ul>
            <li><a class="nav_section"  href="<?php echo Pageloader::pageFromTarget("home", false, "en"); ?>">Home</a></li>
            <li><a class="nav_section" href="<?php echo Pageloader::pageFromTarget("about-me", false, "en"); ?>">Introduction</a></li>
            <li><a class="nav_section" href="<?php echo Pageloader::pageFromTarget("skills", false, "en"); ?>">Skills</a></li>
            <li><a class="nav_section" href="<?php echo Pageloader::pageFromTarget("worksdone", false, "en"); ?>">Works Done</a></li>
            <li><a href="<?php echo Pageloader::pageFromTarget(Pageloader::getData("target"), false, "it");
    if (!empty(Pageloader::getData(0))) echo "/" . Pageloader::getData(0); ?>"><img style="width: 24px;"><img style="width: 24px;" src="/imgs/flagIT.svg" alt="In Italiano"></a></li>
        </ul>
    </nav>