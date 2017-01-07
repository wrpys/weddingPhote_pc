$("#menu-nav a").each(function (i) {
    $(this).hover(function () {
        //playKey(i);
    }, function () {

    })
});

function playKey(i) {
    console.log(i);
    $("body").find(".my_audio").eq(i).get(0).currentTime = 0, $("body").find(".my_audio").eq(i).get(0).play()
}

$(function(){

    //首页轮播图点击事件
    $(".carousel-indicators li").on("click",function(){
        var $thisObj = $(this);
        var i = $thisObj.attr("data-slide-to");
        $(".carousel-indicators li").removeClass("active");
        $thisObj.addClass("active");
        $(".carousel-inner .item").removeClass("active");
        $(".carousel-inner .item").eq(i).addClass("active");
    });
    //首页轮播图左右点击事件
    $(".carousel-control").on("click",function(){
        var $thisObj = $(this);
        var dataSlide = $thisObj.attr("data-slide");
        var activeLi = $(".carousel-indicators li.active");
        var i = activeLi.attr("data-slide-to");
        if(dataSlide == "prev"){
            i = i - 1;
        }else if(dataSlide == "next"){
            i = i - 0 + 1 ;
        }
        changePic(i);
    });
    //切换
    function changePic(i){
        if(i==-1){
            i=2;
        }else if(i==3){
            i=0;
        }
        $(".carousel-indicators li").removeClass("active");
        $(".carousel-indicators li").eq(i).addClass("active");
        $(".carousel-inner .item").removeClass("active");
        $(".carousel-inner .item").eq(i).addClass("active");
    }
    //图片轮播，每3秒切换一次
    setInterval(function(){
        var right = $(".carousel-control").eq(1);
        right.click();
        //alert(right.length);
    },5000);
});

$(".index_secne .interior").mouseenter(function(){
    var thisObj = $(this);
    var options = {};
    thisObj.find("header").toggle("slide",options, 500, null );
    thisObj.find(".changjing_title").toggle("slide",{direction:"right"}, 500, function(){
        thisObj.find("footer").toggle("slide",{direction:"down"}, 500, null );
    } );

});

$(".index_secne .interior").mouseleave(function(){
    var thisObj = $(this);
    var options = {};
    thisObj.find("footer").toggle("slide",{direction:"down"}, 500, function(){
        thisObj.find("header").toggle("slide",options, 500, null );
        thisObj.find(".changjing_title").toggle("slide",{direction:"right"}, 500, null );
    } );
});

$(".shop_weixin").mouseenter(function(){
    var thisObj = $(".weixin_qr");
    var options = {};
    thisObj.toggle("slide",options, 500, null );
});
$(".shop_weixin").mouseleave(function(){
    var thisObj = $(".weixin_qr");
    var options = {};
    thisObj.toggle("slide",options, 500, null );
});


$(".shop_xinlang").mouseenter(function(){
    var thisObj = $(".xinlang_qr");
    var options = {};
    thisObj.toggle("slide",options, 500, null );
});
$(".shop_xinlang").mouseleave(function(){
    var thisObj = $(".xinlang_qr");
    var options = {};
    thisObj.toggle("slide",options, 500, null );
});