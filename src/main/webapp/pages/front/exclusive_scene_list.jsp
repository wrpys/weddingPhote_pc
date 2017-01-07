<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>婚纱摄影风格展示-${combo.comboName} 厦门赫本公馆婚纱摄影</title>
<meta name="keywords" content="婚纱摄影风格展示-${combo.comboName} 厦门赫本公馆婚纱摄影">
<meta name="description" content="婚纱摄影风格展示-${combo.comboName} 厦门赫本公馆婚纱摄影">
<meta name="mobile-agent" content="format=xhtml;">
<meta name="applicable-devive" content="pc">
<%@include file="inc.jsp" %>
<link href="<%=request.getContextPath()%>/res/enjoy_pic/css/customer_pic_list.css" rel="stylesheet">
<style type="text/css">
.dianzhan_label {
    position: absolute;
    top: 20px;
    right: 40px;
    border: 1px solid #EB644E;
    width: auto;
    cursor: pointer;
    height: 25px;
    border-radius: 10px;
    padding-left: 8px;
    padding-right: 8px;
}
.product_value i.dianzang {
    z-index: 300;
    position: absolute;
    left: 5px;
    top: 3px;
    font-size: 18px;
    color: #fff;
    opacity: 1;
}
.glyphicon {
    position: relative;
    top: 0px;
    display: inline-block;
    font-family: 'Glyphicons Halflings';
    font-style: normal;
    font-weight: normal;
    line-height: 1;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
.glyphicon-thumbs-up:before {
    content: "\e125";
}
*:before, *:after {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.dianzhan_num {
    width: auto;
    height: 100%;
    line-height: 24px;
    font-size: 12px;
    opacity: 1;
    position: relative;
}
#bdshare {
    _overflow-x: hidden;
    z-index: 999999;
    padding-bottom: 2px;
    font-size: 12px;
    float: left;
    text-align: left!important;
    zoom: 1;
    position: absolute;
    right: 0;
    top: 20px;
}
#bdshare {
    float: none !important;
}
.share_i {
    position: absolute;
    left: -30px;
    font-size: 14px;
    opacity: 1;
    border: 1px solid #EB644E;
    padding: 5px 5px;
    border-radius: 50%;
    cursor: pointer;
}

.glyphicon-share:before {
    content: "\e066";
}
*:before, *:after {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.kz-c .ms-info {
    width: 555px;
}
</style>
</head>
<body id="zaixian_qq">
<%@include file="header.jsp" %>

<div class="container kz-c yz-c">
    <div class="banner">
    	<a href=""><img src="<%=request.getContextPath()%>/res/images/dujia_big/main.jpg"></a>
    </div>
    <nav class="dl">
        <div class="taoxi">
            <a href=""></a>
        </div>
    </nav>

    <div class="miaosha">
        <div style="height:168px;width:251px;background:url(<%=request.getContextPath()%>${combo.imgPath}dujia_main.jpg) no-repeat;background-size:cover"></div>
        <div class="ms-info">
            <div class="ms-about" style="height: 65px;min-height: 65px;position: relative;">
            	${combo.comboName}<span></span>
            	<label class="dianzhan_label" comboId="${combo.comboId}">
					<i class="glyphicon glyphicon-thumbs-up dianzang"></i>
					<i class="dianzhan_num" style="    position: relative;top: -5px;color: #EB644E;font-size: 14px;">${combo.clickLikeNum}</i>
				</label>
		        <div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare">
		            <i class="glyphicon glyphicon-share share_i bds_morebds_more"></i>
				</div>
            </div>
            <div class="ms-meta" style="position: relative">
                <blockquote class="article_inc">
                   ${combo.comboDesc}
                </blockquote>
                <a class="liji_yuyue" href="<%=request.getContextPath()%>/online_order?type=3&comboId=${combo.comboId}">
                    在线预约
                </a>
            </div>
            <footer></footer>
        </div>
    </div>

    <div class="show">
    	<c:forEach begin="1" end="${combo.imgCount}" step="1" varStatus="status">
	        <figure>
	            <img title="" alt="" src="<%=request.getContextPath()%>${combo.imgPath}detail${status.index}.jpg">
	        </figure>
    	</c:forEach>
    </div>

</div>

<%@include file="footer.jsp" %>
<script type="text/javascript">
	var result = "${result}";
	if(result == 1){
		alert("预约成功！");
	} else if(result == -1){
		alert("预约失败,请重试！");
	}
</script>
<script src="<%=request.getContextPath()%>/res/index/js/index.js"></script>
<script src="<%=request.getContextPath()%>/pages/front/js/recom_package.js"></script>
<script type="text/javascript" id="bdshare_js" data="type=tools" ></script>
<script type="text/javascript" id="bdshell_js"></script>
<script type="text/javascript" >
	 var bds_config = {
		'bdText':'婚纱摄影-' + "${combo.comboName}" + "-婚纱详情",
		'bdDesc':"${combo.comboDesc}",
		'bdUrl':hostRoot + "/product_info?comboId=${combo.comboId}",
		'bdPic':hostRoot + "${combo.imgPath}popular.png"
		};
	 document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000);
</script>
</body>
</html>