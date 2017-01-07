<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>婚纱摄影客照欣赏-厦门赫本公馆婚纱摄影 厦门婚纱摄影</title>
<meta name="keywords" content="婚纱摄影客照欣赏-厦门赫本公馆婚纱摄影 厦门婚纱摄影">
<meta name="description" content="婚纱摄影客照欣赏-厦门赫本公馆婚纱摄影 厦门婚纱摄影">
<meta name="mobile-agent" content="format=xhtml;">
<meta name="applicable-devive" content="pc">
<%@include file="inc.jsp" %>
</head>
<body id="zaixian_qq">
<%@include file="header.jsp" %>

<div class="container kz-c yz-c">
    <div class="banner">
        <a href=""><img src="<%=request.getContextPath()%>/res/images/kezhao_big/main.jpg"></a>
    </div>
    <nav class="dl">
        <div class="taoxi">
            <a href=""></a>
        </div>
    </nav>

    <div class="main recommend" style="width: 100%">
		<c:forEach items="${combos}" var="combo">
	        <figure data-category="${combo.comboName}" style="width: 100%;margin-bottom: 68px;">
	            <a href="<%=request.getContextPath()%>/customer_pic_list?comboId=${combo.comboId}">
	                <img style="height: 522px;width: 100%;background-image:url(<%=request.getContextPath()%>${combo.imgPath}kezhao_main.jpg)" src="">
	            </a>
	
	            <!-- <figcaption>
	                <a onclick="favorite(&#39;5307&#39;, 2, &#39;http://www.xmdcxa.com&#39;)" href="javascript:void(0)" target="_blank"><i class="icon-star"></i></a>
	                	<a href="javascript:void(0)" onclick="like('', 0, '')"><i class="icon-heart"></i></a>
	                <a href="" target="_blank"><i class="icon-comment"></i></a>
	                <a class="bdshare_t" id="bdshare" href="" target="_blank"><i class="icon-share bds_more"></i></a>
	            </figcaption> -->
	            <div >
	                SHOWCASE TITLE: ${combo.comboName}<br/>
	                <time>POST TIME: <fmt:formatDate  value="${combo.createTime}"  pattern="yyyy/MM/dd" /></time><br/>
	            </div>
	        </figure>
		</c:forEach>
    </div>

</div>

<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/res/index/js/index.js"></script>
</body>
</html>