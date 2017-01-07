<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript">
	//var hostRoot = "http://localhost:8099/WeddingPhoto";
	var hostRoot = "http://hebengg.com";
	//var mHostRoot = "http://localhost:8099/WeddingPhoto_mobile";
	var mHostRoot = "http://mobile.hebengg.com";
	var contextPath = "<%=request.getContextPath()%>";
	
	//手机访问PC端电脑网站自动跳转到手机网站
	function mobile_device_detect(url){
		var thisOS=navigator.platform;
		var os=new Array("iPhone","iPod","iPad","android","Nokia","SymbianOS","Symbian","Windows Phone","Phone","Linux armv71","MAUI","UNTRUSTED/1.0","Windows CE","BlackBerry","IEMobile");
		for(var i=0;i<os.length;i++){
			if(thisOS.match(os[i])){  
				window.location=url;
			}
		}
		//因为相当部分的手机系统不知道信息,这里是做临时性特殊辨认
		if(navigator.platform.indexOf('iPad') != -1){
	  		window.location=url;
	 	}
	 	//做这一部分是因为Android手机的内核也是Linux
	 	//但是navigator.platform显示信息不尽相同情况繁多,因此从浏览器下手，即用navigator.appVersion信息做判断
	  	var check = navigator.appVersion;
	  	if(check.match(/linux/i) ){
	   		//X11是UC浏览器的平台 ，如果有其他特殊浏览器也可以附加上条件
	   		if(check.match(/mobile/i) || check.match(/X11/i))
	   			window.location=url;
	   	}
	 }
	
</script>
<meta name="renderer" content="webkit">
<!-- common start -->
<!-- Bootstrap core CSS -->
<link href="<%=request.getContextPath()%>/res/component/jquery/jquery-ui-1.9.2.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/res/component/bootstrap/css/bootstrap.css" rel="stylesheet">
<script charset="utf-8" src="<%=request.getContextPath()%>/res/index/js/v.js"></script>
<script src="<%=request.getContextPath()%>/res/index/js/hm.js"></script>
<script src="<%=request.getContextPath()%>/res/component/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/res/component/jquery/jquery-ui-1.9.2.min.js"></script>
<!--[if lt IE 9]>
<link href="<%=request.getContextPath()%>/res/component/bootstrap/css/ie.css" rel="stylesheet">
<script src="<%=request.getContextPath()%>/res/component/bootstrap/js/ie.html5.js"></script>
<script src="<%=request.getContextPath()%>/res/component/bootstrap/js/respond.min.js"></script>
<![endif]-->
<!-- common end -->
<link href="<%=request.getContextPath()%>/res/index/css/application.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/res/index/css/validationEngine.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/res/index/css/offer-phone.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/res/index/css/index.css" rel="stylesheet">