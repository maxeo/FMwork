$(document).ready(function () {

    /***    Animazione Logo maxeo.it        ***/
    function fadeLogo(tTr = 4) {
        $(".fadelogo").css({
            WebkitTransition: 'all ' + tTr + 's ease 0s',
            MozTransition: 'all ' + tTr + 's ease 0s',
            MsTransition: 'all ' + tTr + 's ease 0s',
            OTransition: 'all ' + tTr + 's ease 0s',
            transition: 'all ' + tTr + 's ease 0s',
            visibility: 'visible',
            opacity: 1
        });
    }
    if ($(".logo").hasClass("animation")) {
        $(".fadelogo").css("opacity", 0);
        if (window.screen.width > 620) {
            $(".rollinglogo img").css("opacity", 1).css("transform", "rotate(900deg)");
            setTimeout(function () {
                fadeLogo()
            }, 4000);
        } else {
            $(".rollinglogo img").css("display", "none")
            setTimeout(function () {
                fadeLogo()
            }, 500);
        }
    } else {
        $(".fadelogo").css("opacity", 0);
        setTimeout(function () {
            fadeLogo(6)
        }, 500);
    }

    /***    Animazione percentuali        ***/


    function isScrolledIntoView(elem)   //verifica se l'elemento è sato letto
    {
        var docViewTop = $(window).scrollTop();
        var docViewBottom = docViewTop + $(window).height();
        var elemTop = $(elem).first().offset().top;
        var elemBottom = elemTop + $(elem).first().height();
        for (i = 0; i < $(elem).length; i++) {
            elemN=$(elem+":eq("+i+")")
            elemTop = elemN.offset().top;
            elemBottom = elemTop + elemN.height();
            if ((elemBottom <= docViewBottom) && (elemTop >= docViewTop))
                return true;
        }
    }
    function updatePercent(selector, percent) {
        selector.get(0).style.strokeDasharray = (percent * 4.65) + ' 1000';
    }
    var navHeight = parseInt($("#nav").css("height"));
    var perc_are_loaded = 0;
    $(document).bind("scroll", function () {
        if (isScrolledIntoView(".progress-circle-prog") && perc_are_loaded == 0) {
            perc_are_loaded = 1;
            setTimeout(function () {
                $('.progress-circle-prog').each(function () {
                    $(this).css("stroke", "#" + $(this).attr("data-color"));
                    updatePercent($(this), $(this).attr("data-perc"));
                })
            }, 500);
        }
        /***    Scorrimento in alto per cellulari        ***/

        if ($(document).scrollTop() > $(".main").offset().top - navHeight) {
            $("#nav").css({
                position: 'fixed',
                top: 0,
                "z-index": 10000
            });
        } else {
            $("#nav").css({
                position: 'absolute',
                top: "auto"
            });
        }
        if ($("#nav").css("display") == "none")
            if ($(document).scrollTop() > $(".main").offset().top)
                $("#upArrow").css("display", "block");
            else
                $("#upArrow").css("display", "none");
    });


    /***    Scrolltop sugli elementi del menu        ***/


    $(".nav_section, .to_target").click(function () {
        elem = $("#" + $(this).attr("href").substr(1));
        $("html, body").animate({scrollTop: elem.offset().top + "px"},
                500);
        return false;
    })

    $("#upArrow").click(function () {
        valDef = $(".main").offset().top;
        $("html, body").animate({scrollTop: valDef + "px"}, 500);
    })

//    if($(".showAdblockStatus").is(':visible')==false)
//        alert("adblock attivo")

    /***    Protezione mail spamlist        ***/
    $(".mailBoxm img").css("display", "none")
    $(".mailBoxm a").text("inf" + "o" + "@" + "maxeo" + ".it").attr("href", "mailto:inf" + "o" + "@" + "maxeo" + ".it");

})