$(document).ready(function () {

    /***    Animazione Logo maxeo.it        ***/
    function fadeLogo() {
        $(".fadelogo").css({
            WebkitTransition: 'all 4s ease 0s',
            MozTransition: 'all 4s ease 0s',
            MsTransition: 'all 4s ease 0s',
            OTransition: 'all 4s ease 0s',
            transition: 'all 4s ease 0s',
            visibility: 'visible',
            opacity: 1
        });
    }

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

    /***    Animazione percentuali        ***/


    function isScrolledIntoView(elem)   //verifica se l'elemento è sato letto
    {
        var docViewTop = $(window).scrollTop();
        var docViewBottom = docViewTop + $(window).height();

        var elemTop = $(elem).offset().top;
        var elemBottom = elemTop + $(elem).height();

        return ((elemBottom <= docViewBottom) && (elemTop >= docViewTop));
    }
    function updatePercent(selector, percent) {
        selector.get(0).style.strokeDasharray = (percent * 4.65) + ' 999';
        $('.progress-text').data('progress', percent);
    }
    var navHeight = parseInt($("#nav").css("height"));
    $(document).bind("scroll", function () {
        if (isScrolledIntoView(".progress-circle-prog")) {
            setTimeout(function () {
                updatePercent($(('.progress-circle-prog.prog1')), 85);
                updatePercent($(('.progress-circle-prog.prog2')), 70);
                updatePercent($(('.progress-circle-prog.prog3')), 75);
            }, 500);
        }

        if ($(document).scrollTop() > $(".main").offset().top - navHeight) {
            $("#nav").css({
                position: 'fixed',
                top: 0,
                "z-index": 10000
            });
        }
        else{
            $("#nav").css({
                position: 'absolute',
                top: "auto"
            });
        }
        if($("#nav").css("display")=="none")
            if($(document).scrollTop()>$(".main").offset().top)
                $("#upArrow").css("display", "block");
            else
                $("#upArrow").css("display", "none");





        
    });



    /***    Scrolltop sugli elementi del menu        ***/


    $(".nav_section").click(function () {
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
$(".mailBoxm img").css("display","none")
$(".mailBoxm a").text("inf"+"o"+"@"+"maxeo"+".it").attr("href","mailto:inf"+"o"+"@"+"maxeo"+".it");

})