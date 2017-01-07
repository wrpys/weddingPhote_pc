/**
 * Created by H81 on 2016/5/7.
 */
$(function(){
    $(".img_list .left").on("click",function(){
        var activeImg = $(".max_img img.active");
        var i = activeImg.attr("data-slide-to");
        i = i - 1;
        changePic(i);
    });
    $(".img_list .right").on("click",function(){
        var activeImg = $(".max_img img.active");
        var i = activeImg.attr("data-slide-to");
        i = i - 0 + 1 ;
        changePic(i);
    });
    $(".img_list_ul li").on("click",function(){
        var $thisObj = $(this);
        var i = $thisObj.attr("data-slide-to");
        $(".yuanquan").removeClass("active");
        $(".yuanquan").eq(i).addClass("active");
        $(".max_img .max_img_info").removeClass("active");
        $(".max_img .max_img_info").eq(i).addClass("active");
    });
    //切换
    function changePic(i){
        if(i==-1){
            i=2;
        }else if(i==3){
            i=0;
        }
        $(".yuanquan").removeClass("active");
        $(".yuanquan").eq(i).addClass("active");
        $(".max_img .max_img_info").removeClass("active");
        $(".max_img .max_img_info").eq(i).addClass("active");
    }
});