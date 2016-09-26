					<nav id="nav">
						<ul>
							<li><a class="nav_section"  href="<?php echo Pageloader::pageFromTarget("home", false,"en");  ?>" class="active">Home</a></li>
                                                        <li><a class="nav_section" href="<?php echo Pageloader::pageFromTarget("about-me", false,"it");  ?>">Introduction</a></li>
							<li><a class="nav_section" href="<?php echo Pageloader::pageFromTarget("skills", false,"it");  ?>">Skills</a></li>
							<li><a class="nav_section" href="<?php echo Pageloader::pageFromTarget("worksdone", false,"it");  ?>">Works Done</a></li>
							<li><a href="<?php echo Pageloader::pageFromTarget(Pageloader::getData("target"), false,"it");  ?>"><img style="width: 24px;"><img style="width: 24px;" src="/imgs/flagIT.svg" alt="In Italiano"></a></li>
						</ul>
					</nav>