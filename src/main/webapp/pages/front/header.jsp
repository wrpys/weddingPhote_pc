<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div style="display:none">
<iframe id="qq_dialog"></iframe>
</div>
<header class="Q-head">
    <div class="header">
        <div class="inner" id="music">
            <a href="" class="logo">
            	<img src="<%=request.getContextPath()%>/res/index/img/logo.png" alt="" style="height: 90px;width: 326px;">
            </a>
            <div class="h-container">
                <div class="user_model">
                    <img src="<%=request.getContextPath()%>/res/index/img/men.png" class="user_img" style="display: none;" />
                    <span class="user_name" ><i class="glyphicon glyphicon-phone-alt"></i> &nbsp;0592-5220246</span>
                    <a class="user_login" id="qq_btn" style="cursor:pointer">Q&nbsp;Q</a>
                    <a class="user_wantgo" href="<%=request.getContextPath()%>/i_want_order">我要预约</a>
                    <div class="shop_icon">
                        <i class="shop_weixin"></i>
                        <i class="shop_xinlang"></i>
                        <img class="weixin_qr" src="<%=request.getContextPath()%>/res/index/img/weixin_qr.jpg" />
                        <img class="xinlang_qr" src="<%=request.getContextPath()%>/res/index/img/xinlang_qr2.jpg" />
                    </div>
                </div>
            </div>
            <nav id="menu-nav" class="menu">
            	<a href="<%=request.getContextPath()%>/index" class="${index}"><b>首页</b></a>
            	<a href="<%=request.getContextPath()%>/recom_product_package" class="${recom_product_package}"><b>推荐套餐</b></a>
            	<a href="<%=request.getContextPath()%>/enjoy_customer_pic" class="${enjoy_customer_pic}"><b>客照欣赏</b></a>
            	<a href="<%=request.getContextPath()%>/exclusive_scene" class="${exclusive_scene}"><b>风格展示</b></a>
            	<a href="<%=request.getContextPath()%>/i_want_order" class="${i_want_order}"><b>预约咨询</b></a>
            </nav>
            <div class="piano_audio">
                <audio class="my_audio" preload="auto">
                    <source class="audio_source" type="audio/ogg" src="<%=request.getContextPath()%>/res/component/music/asstes/1.oga"></source>
                </audio>
                <audio class="my_audio" preload="auto">
                    <source class="audio_source" type="audio/ogg" src="<%=request.getContextPath()%>/res/component/music/asstes/2.oga"></source>
                </audio>
                <audio class="my_audio" preload="auto">
                    <source class="audio_source" type="audio/ogg" src="<%=request.getContextPath()%>/res/component/music/asstes/3.oga"></source>
                </audio>
                <audio class="my_audio" preload="auto">
                    <source class="audio_source" type="audio/ogg" src="<%=request.getContextPath()%>/res/component/music/asstes/4.oga"></source>
                </audio>
                <audio class="my_audio" preload="auto">
                    <source class="audio_source" type="audio/ogg" src="<%=request.getContextPath()%>/res/component/music/asstes/5.oga"></source>
                </audio>
            </div>
        </div>
    </div>
</header>
<script>
	$(function(){
		var url = "tencent://message/?Menu=yes&amp;amp;uin=800803707&amp;amp;Service=58&amp;amp;SigT=A7F6FEA02730C988D2698FBB689B10FC588C396F4703DAEBD28449CC1B0D49450B678BCBE54D355F0B0BFEC84D644B3404A9B67775E52877C5D5D8208477387C2706318224D85A805969FBAC3724F4BACACC7B892D95B084134763291253BF623A64D2781EB4054D85B87051107D1F9C604AC30FDDC22544&amp;amp;SigU=30E5D5233A443AB2CD856044E868FD116E4584DBBE60E0099A2D7E7A34079160746A1F8306F1ABE7E485656AA63E403F3B104D16B43BE6117858F5CF8378211BD3D0065607FD72E7";
		$("#qq_btn").click(function(){
			$("#qq_dialog").attr("src",url);
		});
	});
</script>