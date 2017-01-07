<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>婚纱摄影 套餐详情-${combo.comboName} 厦门赫本公馆婚纱摄影</title>
<meta name="keywords" content="婚纱摄影 套餐详情-${combo.comboName} 厦门赫本公馆婚纱摄影">
<meta name="description" content="婚纱摄影 套餐详情-${combo.comboName} 厦门赫本公馆婚纱摄影">
<meta name="mobile-agent" content="format=xhtml;">
<meta name="applicable-devive" content="pc">
<%@include file="inc.jsp" %>
<link href="<%=request.getContextPath()%>/res/product_info/css/product_info.css" rel="stylesheet">
<style>
    .title{
        margin:10px auto 20px!important;
        width:1026px
    }
</style>
</head>
<body id="zaixian_qq">
<%@include file="header.jsp" %>

<div class="this_web_url">
    <ul class="url_ul">
        <li> <a href="<%=request.getContextPath()%>/recom_product_package">推荐套餐 &gt; </a></li>
        <li> <a href="<%=request.getContextPath()%>/recom_product_package">独家私有 &gt; </a></li>
        <li> <a href="<%=request.getContextPath()%>/product_info?comboId=${combo.comboId}">${combo.comboName} </a></li>
    </ul>
</div>

<div class="product_frame">

    <div class="product_img">
        <div class="max_img">
        	<img class="max_img_info active" data-slide-to="0"  src="<%=request.getContextPath()%>${combo.imgPath}popular.jpg" width="460" height="340" />
            <img class="max_img_info" data-slide-to="1"  src="<%=request.getContextPath()%>${combo.imgPath}popular2.jpg" width="460" height="340" />
            <img class="max_img_info" data-slide-to="2"  src="<%=request.getContextPath()%>${combo.imgPath}popular3.jpg" width="460" height="340" />
        </div>
        <div class="img_list">
            <ul class="img_list_ul">
                <li data-slide-to="0">
                    <img src="<%=request.getContextPath()%>${combo.imgPath}popular.jpg" width="100" height="80" />
               		<span class="yuanquan active" data-slide-to="0"></span>
                </li>
                <li data-slide-to="1">
                    <img src="<%=request.getContextPath()%>${combo.imgPath}popular2.jpg" width="100" height="80" />
                    <span class="yuanquan" data-slide-to="1"></span>
                </li>
                <li data-slide-to="2">
                    <img src="<%=request.getContextPath()%>${combo.imgPath}popular3.jpg" width="100" height="80" />
                	<span class="yuanquan" data-slide-to="2"></span>
                </li>
            </ul>
            <a class="left " href="javascript:;" data-slide="prev">
                <i class="glyphicon glyphicon-chevron-left"></i>
            </a>
            <a class="right " href="javascript:;" data-slide="next">
                <i class="glyphicon glyphicon-chevron-right"></i>
            </a>
        </div>
    </div>

    <div class="product_desc">
        <span class="product_desc_name">${combo.comboName}</span>
        <div class="product_value">
            <span class="t_value">￥<b>${combo.price}</b></span>
            <span class="q_value">${combo.discountInt}.${combo.discountDouble}折</span>
            <del class="s_value">市场价<b>${combo.originalPrice}</b></del>
            <img class="qrcode_i" src="<%=request.getContextPath()%>${combo.imgPath}weixin.jpg" width="65" height="65" />
            <label class="dianzhan_label" comboId="${combo.comboId}">
                <i class="glyphicon glyphicon-thumbs-up dianzang"></i>
                <i class="dianzhan_num" style="position: relative;color: #fff">${combo.clickLikeNum}</i>
            </label>
            <div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare">
                <i class="glyphicon glyphicon-share share_i bds_morebds_more"></i>
			 </div>
            <span class="ipone_saomiao">手机扫描，分享有礼</span>
        </div>
        <blockquote class="article_inc">
           ${combo.comboDesc}
        </blockquote>
        <div class="goumai_div">
            <a class="liji_yuyue" href="<%=request.getContextPath()%>/online_order?type=1&comboId=${combo.comboId}">
                在线预约
            </a>
            <i class="glyphicon glyphicon-gift gift_i"><b>前30名预约，送精美礼物</b></i>
        </div>
    </div>

</div>

<div class="ad_div">
    <div class="ad_title">
        <ul>
            <li>商品详情</li>
        </ul>
    </div>
    <div style="text-align: center">
        <figure>
        	<c:forEach begin="1" end="${combo.imgCount}" step="1" varStatus="status">
	            <p>
	                <img src="<%=request.getContextPath()%>${combo.imgPath}detail${status.index}.jpg" />
	            </p>
        	</c:forEach>
        </figure>
    </div>
    <div style="clear: both"></div>
</div>

<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/res/index/js/index.js"></script>
<script src="<%=request.getContextPath()%>/res/product_info/js/product_info.js"></script>
<script src="<%=request.getContextPath()%>/pages/front/js/recom_package.js"></script>
<script type="text/javascript">
	var result = "${result}";
	if(result == 1){
		alert("预约成功！");
	} else if(result == -1){
		alert("预约失败,请重试！");
	}
</script>
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