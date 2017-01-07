<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>婚纱摄影 在线预约-${combo.comboName} 厦门赫本公馆婚纱摄影</title>
<meta name="keywords" content="婚纱摄影 在线预约-${combo.comboName} 厦门赫本公馆婚纱摄影">
<meta name="description" content="婚纱摄影 在线预约-${combo.comboName} 厦门赫本公馆婚纱摄影">
<meta name="mobile-agent" content="format=xhtml;">
<meta name="applicable-devive" content="pc">
<%@include file="inc.jsp" %>
<link href="<%=request.getContextPath()%>/res/component/jquery-datetimepicker/jquery.datetimepicker.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/res/product_info/css/product_info.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/res/product_info/css/online_order.css" rel="stylesheet">
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
       	<c:if test="${type == 1}">
	        <li> <a href="<%=request.getContextPath()%>/recom_product_package">推荐套餐 &gt; </a></li>
	        <li> <a href="<%=request.getContextPath()%>/recom_product_package">独家私有 &gt; </a></li>
	        <li><a href="<%=request.getContextPath()%>/product_info?comboId=${combo.comboId}">${combo.comboName}&gt; </a></li>
       	</c:if>
       	<c:if test="${type == 2}">
	        <li> <a href="<%=request.getContextPath()%>/enjoy_customer_pic">推荐套餐 &gt; </a></li>
	        <li> <a href="<%=request.getContextPath()%>/enjoy_customer_pic">独家私有 &gt; </a></li>
	        <li><a href="<%=request.getContextPath()%>/customer_pic_list?comboId=${combo.comboId}">${combo.comboName}&gt; </a></li>
       	</c:if>
       	<c:if test="${type == 3}">
	        <li> <a href="<%=request.getContextPath()%>/exclusive_scene">推荐套餐 &gt; </a></li>
	        <li> <a href="<%=request.getContextPath()%>/exclusive_scene">独家私有 &gt; </a></li>
	        <li><a href="<%=request.getContextPath()%>/exclusive_scene_list?comboId=${combo.comboId}">${combo.comboName}&gt; </a></li>
       	</c:if>
        <li> <a href="<%=request.getContextPath()%>/online_order?type=${type}&comboId=${combo.comboId}">在线预约 </a></li>
    </ul>
</div>

<div class="order_frame">

    <div class="order_product">
        <div class="max_img">
            <img src="<%=request.getContextPath()%>${combo.imgPath}popular.jpg" width="460" height="340" />
        </div>
        <div class="product_value">
        	<c:if test="${type == 1}">
	            <span class="t_value">￥<b>${combo.price}</b></span>
	            <span class="q_value">${combo.discountInt}.${combo.discountDouble}折</span>
	            <del class="s_value">市场价<b>${combo.originalPrice}</b></del>
        	</c:if>
        	<c:if test="${type != 1}">
        		<span class="t_value">${combo.comboName}</span>
        	</c:if>
            <img class="qrcode_i" src="<%=request.getContextPath()%>${combo.imgPath}weixin.jpg" width="65" height="65" />
        </div>
    </div>

    <div class="order_from">
        <div class="tips">欢迎您的预约,我们会为您做最好准备</div>
        <form id="form" method="post" action="<%=request.getContextPath()%>/reservationsInfoCtr/reservationsInfo" onsubmit="return validateFun();">
        	<input type="hidden" name="type" id="comboId" value="${type}">
        	<input type="hidden" name="comboId" id="comboId" value="${combo.comboId}">
            <table>
                <tbody>
                    <tr>
                        <td class="td_name"><i class="icon-r-2"></i> 您的称呼:</td>
                        <td class="td_value">
                            <input type="text" class="" name="userName" value="" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input id="woman" type="radio" value="1" name="sex" checked="">
                            <label for="woman"><i class="icon-checked"></i>女士</label>
                            <input id="man" type="radio" value="0" name="sex">
                            <label for="man"><i class="icon-checked"></i>先生</label>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_name"><i class="icon-r-3"></i> 联系手机:</td>
                        <td class="td_value">
                            <input type="text" class="" value="" name="mobile"> <span>请留下您的电话，我们会第一时间联系您！</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_name"><i class="icon-r-4"></i> 预约日期:</td>
                        <td class="td_value">
                            <input type="text" class="datepicker" name="reservationsTime" readonly />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="td_sub">
                            <button class="btn_subimt" type="submit" onclick="">立即预约</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </div>
</div>

<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/res/component/jquery-datetimepicker/jquery.datetimepicker.js"></script>
<script src="<%=request.getContextPath()%>/res/index/js/index.js"></script>
<script type="text/javascript">
//初始化时间选择器
$("input[name='reservationsTime']").datetimepicker({
    lang:'ch',
    step:1, //时间选择器的步长，分钟为单位
    format:'Y-m-d',
    timepicker : false
});

function validateFun(){
	var userName = $("#form input[name='userName']").val();
	var mobile = $("#form input[name='mobile']").val();
	var reservationsTime = $("#form input[name='reservationsTime']").val();
	if(userName == null || userName == '') {
		alert("请输入姓名！");
		return false;
	}
	if(mobile == null || mobile == '') {
		alert("请输入手机号码！");
		return false;
	} else {
		if(!/^(13[0-9]|14[0-9]|15[0-9]|18[0-9])\d{8}$/i.test(mobile)) {
			alert('手机号码格式不正确！');
			return false;
		}
	}
	if(reservationsTime == null || reservationsTime == '') {
		alert("请选择日期！");
		return false;
	}
}
</script>
<div style="display:none">
<iframe src="tencent://message/?Menu=yes&amp;amp;uin=800803707&amp;amp;Service=58&amp;amp;SigT=A7F6FEA02730C988D2698FBB689B10FC588C396F4703DAEBD28449CC1B0D49450B678BCBE54D355F0B0BFEC84D644B3404A9B67775E52877C5D5D8208477387C2706318224D85A805969FBAC3724F4BACACC7B892D95B084134763291253BF623A64D2781EB4054D85B87051107D1F9C604AC30FDDC22544&amp;amp;SigU=30E5D5233A443AB2CD856044E868FD116E4584DBBE60E0099A2D7E7A34079160746A1F8306F1ABE7E485656AA63E403F3B104D16B43BE6117858F5CF8378211BD3D0065607FD72E7"></iframe>
</div>
</body>
</html>