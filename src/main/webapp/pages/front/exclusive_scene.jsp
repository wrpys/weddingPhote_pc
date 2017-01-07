<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>婚纱摄影风格展示-厦门赫本公馆婚纱摄影 厦门婚纱摄影</title>
<meta name="keywords" content="婚纱摄影风格展示-厦门赫本公馆婚纱摄影 厦门婚纱摄影">
<meta name="description" content="婚纱摄影风格展示-厦门赫本公馆婚纱摄影 厦门婚纱摄影">
<meta name="mobile-agent" content="format=xhtml;">
<meta name="applicable-devive" content="pc">
<%@include file="inc.jsp" %>
<link href="<%=request.getContextPath()%>/res/exc_scene/css/exc_scene.css" rel="stylesheet">
</head>
<body id="zaixian_qq">
<%@include file="header.jsp" %>

<div class="container kz-c yz-c">
    <div class="banner">
        <a href=""><img src="<%=request.getContextPath()%>/res/images/dujia_big/main.jpg"></a>
    </div>

    <img src="<%=request.getContextPath()%>/res/images/dujia_big/title-nj.png" alt="" style="margin-top: 20px;">
    <div class="main" style="width: 100%">
        <div class="interior">
			<c:forEach items="${combos}" var="combo" varStatus="status">
            <div style="background-image:url(<%=request.getContextPath()%>${combo.imgPath}dujia_main.jpg)">
                <a href="<%=request.getContextPath()%>/exclusive_scene_list?comboId=${combo.comboId}"></a>
                <footer>${combo.comboName}<div>爱城</div><i>0${status.index + 1}</i></footer>
            </div>
            <img src="<%=request.getContextPath()%>/res/exc_scene/img/like-shadow.png">
			</c:forEach>
        </div>
    </div>

</div>

<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/res/index/js/index.js"></script>
</body>
</html>