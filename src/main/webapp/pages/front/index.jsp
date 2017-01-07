<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>厦门赫本公馆婚纱摄影-厦门婚纱摄影 官方网站</title>
<meta name="keywords" content="厦门赫本公馆婚纱摄影-厦门婚纱摄影 官方网站">
<meta name="description" content="厦门赫本公馆婚纱摄影-厦门婚纱摄影 官方网站">
<meta name="mobile-agent" content="format=xhtml;">
<meta name="applicable-devive" content="pc">
<%@include file="inc.jsp" %>
<script type="text/javascript">
	mobile_device_detect(mHostRoot);
</script>
</head>
<body id="zaixian_qq">
<%@include file="header.jsp" %>

<div class="Q-banner">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="10000">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
            <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active" style="background-image:url(<%=request.getContextPath()%>/res/images/index/big1.jpg)">
                <a href="" target="_blank" onclick="advertNum(&#39;863&#39;,&#39;xmdcxa&#39;);"></a>
            </div>
            <div class="item" style="background-image:url(<%=request.getContextPath()%>/res/images/index/big2.jpg)">
                <a href="" target="_blank" onclick="advertNum(&#39;1200&#39;,&#39;xmdcxa&#39;);"></a>
            </div>
            <div class="item" style="background-image:url(<%=request.getContextPath()%>/res/images/index/big3.jpg)">
                <a href="" target="_blank" onclick="advertNum(&#39;1261&#39;,&#39;xmdcxa&#39;);"></a>
            </div>
        </div>
        <script>
            function advertNum(id,domain) {
                $.post('' , {adid : id , domain : domain , r : Math.random()},function(data){

                });
            }
        </script>
        <!-- Controls -->
        <a class="left carousel-control" href="javascript:;" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="javascript:;" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>

<article class="Q-wrap clearfix">
    <div class="Q-brand">
        <table>
            <tbody><tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            </tbody></table>
    </div>

    <article class="Q-wrap clearfix">
        <div class="B-activity-new">
        	<c:forEach items="${popularCombos}" var="popularCombo" varStatus="status">
        		<c:if test="${status.index == 0}">
		            <a href="<%=request.getContextPath()%>/product_info?comboId=${popularCombo.comboId}">
		                <img src="<%=request.getContextPath()%>${popularCombo.imgPath}popular_big.jpg">
		            </a>
        		</c:if>
        		<c:if test="${status.index != 0}">
		            <a href="<%=request.getContextPath()%>/product_info?comboId=${popularCombo.comboId}" target="_blank">
		                <img src="<%=request.getContextPath()%>${popularCombo.imgPath}popular.jpg">
		            </a>
        		</c:if>
        	</c:forEach>
        </div>
    </article>
    
    <div class="Q-showcase row-cz" style="text-align: center">
        <div class="title"><img src="<%=request.getContextPath()%>/res/index/img/title-1.png"></div>
        <div class="Q-showcase-body" style="width: 940px;margin-left: auto;margin-right: auto;">
            <c:forEach items="${combos}" var="combo">
	            <figure>
	                <a href="<%=request.getContextPath()%>/customer_pic_list?comboId=${combo.comboId}">
	                    <img src="" style="background-image:url(<%=request.getContextPath()%>${combo.imgPath}show.jpg)">
	                </a>
	                <!--客照名称自定义-->
	                <figcaption><time>time:<fmt:formatDate  value="${combo.createTime}"  pattern="yyyy/MM/dd" /></time>${combo.userNames} <span>royallove wedding<br>wedding trip</span></figcaption>
	            </figure>
            </c:forEach>
        </div>
    </div>
    
    <div class="index_secne Q-showcase row-cz" style="text-align: center">
        <div class="title"><img src="<%=request.getContextPath()%>/res/index/img/title-12.png"></div>
        <div class="Q-showcase-body" style="margin-left: auto;margin-right: auto;">
        	<c:forEach items="${dujiaCombos}" var="dujiaCombo" varStatus="status">
	            <div class="interior">
	                <div style="background-image:url(<%=request.getContextPath()%>${dujiaCombo.imgPath}dujia_main.jpg)">
	                    <header><i>01</i></header>
	                    <a href="<%=request.getContextPath()%>/exclusive_scene_list?comboId=${dujiaCombo.comboId}"></a>
	                    <div class="changjing_title">
	                        <span class="changjing_name">${dujiaCombo.comboName}</span>
	                    </div>
	                    <footer>爱城-欧洲馆</footer>
	                </div>
	            </div>
	            <img src="<%=request.getContextPath()%>/res/exc_scene/img/like-shadow.png">
			</c:forEach>
        </div>
    </div>
    
    <div class="Q-showcase slider-group">
		<div class="title">
			<img src="<%=request.getContextPath()%>/res/recom_package/img/recom.png">
		</div>
		<div class="Q-showcase-body">
			<div class="Q-showcase RS">
				<c:forEach items="${popularCombos2}" var="popularCombo" varStatus="status">
					<c:if test="${status.index == 0}">
						<figure>
							<a href="<%=request.getContextPath()%>/product_info?comboId=${popularCombo.comboId}" target="_blank">  
								<img src="<%=request.getContextPath()%>${popularCombo.imgPath}recommend.jpg">
								<figcaption> 最新系列NO.2</figcaption>
							</a>
						</figure>
					</c:if>
					<c:if test="${status.index == 1}">
						<figure>
							<a class="row-1" href="<%=request.getContextPath()%>/product_info?comboId=${popularCombo.comboId}">
								<img style="background-image:url(<%=request.getContextPath()%>${popularCombo.imgPath}recommend.jpg)">
								<figcaption>全店爆款套系，销量NO.1</figcaption>
							</a>
						</figure>
					</c:if>
					<c:if test="${status.index == 2}">
						<figure>
							<a class="row-1" href="<%=request.getContextPath()%>/product_info?comboId=${popularCombo.comboId}">
								<img style="background-image:url(<%=request.getContextPath()%>${popularCombo.imgPath}recommend.jpg)">
								<figcaption>店长诚心推荐NO.3</figcaption>
							</a>
						</figure>
					</c:if>
				</c:forEach>
			</div>
		</div>
	</div>

</article>
<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/res/index/js/index.js"></script>
<div style="display:none">
<iframe src="tencent://message/?Menu=yes&amp;amp;uin=800803707&amp;amp;Service=58&amp;amp;SigT=A7F6FEA02730C988D2698FBB689B10FC588C396F4703DAEBD28449CC1B0D49450B678BCBE54D355F0B0BFEC84D644B3404A9B67775E52877C5D5D8208477387C2706318224D85A805969FBAC3724F4BACACC7B892D95B084134763291253BF623A64D2781EB4054D85B87051107D1F9C604AC30FDDC22544&amp;amp;SigU=30E5D5233A443AB2CD856044E868FD116E4584DBBE60E0099A2D7E7A34079160746A1F8306F1ABE7E485656AA63E403F3B104D16B43BE6117858F5CF8378211BD3D0065607FD72E7"></iframe>
</div>
</body>
</html>