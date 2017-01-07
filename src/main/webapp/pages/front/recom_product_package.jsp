<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>婚纱摄影推荐套餐-厦门赫本公馆婚纱摄影 厦门婚纱摄影</title>
<meta name="keywords" content="婚纱摄影 推荐套餐">
<meta name="description" content="婚纱摄影 推荐套餐">
<meta name="mobile-agent" content="format=xhtml;">
<meta name="applicable-devive" content="pc">
<%@include file="inc.jsp" %>
<link href="<%=request.getContextPath()%>/res/recom_package/css/recom_product_package.css" rel="stylesheet">
<style>
    .title{
        margin:10px auto 20px!important;
        width:1026px
    }
    .bdsharebuttonbox{
        display: inline-block;
	    width: 28px;
	    height: 28px;
	    position: absolute;
	    right: 8px;
	    top: 15px;
    }
    .share_i_bds{
	    font-size: 14px;
	    color: #fff;
	    opacity: 1;
	    border: 1px solid #fff;
	    padding: 5px 5px;
	    border-radius: 50%;
	    cursor: pointer;
    }
</style>
</head>
<body id="zaixian_qq">
<%@include file="header.jsp" %>

<div class="Q-showcase slider-group">

    <div class="title" style="margin-top: 10px;"><img src="<%=request.getContextPath()%>/res/recom_package/img/recom.png"></div>

    <div class="Q-showcase-body">
        <div class="Q-showcase RS">
        	<c:forEach var="popularCombo" items="${popularCombos}" varStatus="status">
        		<c:if test="${status.index == 0}">
		            <figure class="taocan">
		                <a href="<%=request.getContextPath()%>/product_info?comboId=${popularCombo.comboId}" target="_blank" style="margin-top: 20px">
		                	<img src="<%=request.getContextPath()%>${popularCombo.imgPath}popular.jpg">
		                </a>
		                <figcaption class="taocan_fig" style="bottom: 0px;background-color: rgb(245, 160, 160);opacity: 0.9;color: #fff;text-indent: 0em;">
		                                                            最新系列NO.2
		                    <label class="dianzhan_label" comboId="${popularCombo.comboId}">
		                        <i class="glyphicon glyphicon-thumbs-up dianzang"></i>
		                        <i class="dianzhan_num">${popularCombo.clickLikeNum}</i>
		                    </label>
		                    <div class="bdsharebuttonbox" data-tag="share_popular_${status.index}">
                       			<i class="glyphicon glyphicon-share share_i_bds"></i>
		                    	<a class="bds_more" data-cmd="more" 
		                    		bd_text="${popularCombo.comboName}" 
		                    		bd_desc="${popularCombo.comboDesc}" 
		                    		bd_url="/product_info?comboId=${popularCombo.comboId}" 
		                    		bd_pic="${popularCombo.imgPath}popular.jpg"
                        		</a>
							</div>
		                </figcaption>
		            </figure>
        		</c:if>
        		<c:if test="${status.index == 1}">
		            <figure>
		                <a class="row-1" href="<%=request.getContextPath()%>/product_info?comboId=${popularCombo.comboId}" style="height: 280px;">
		                    <img src="<%=request.getContextPath()%>${popularCombo.imgPath}popular.jpg">
		                </a>
	                    <figcaption class="taocan_fig" style="bottom: 0px;background-color: rgb(44, 184, 243);opacity: 0.9;color: #fff;text-indent: 0em;">
	                       	 全店爆款套系，销量NO.1
	                        <label class="dianzhan_label" comboId="${popularCombo.comboId}">
	                            <i class="glyphicon glyphicon-thumbs-up dianzang"></i>
	                            <i class="dianzhan_num" style="position: relative;color: #fff">${popularCombo.clickLikeNum}</i>
	                        </label>
	                        <div class="bdsharebuttonbox" data-tag="share_popular_${status.index}">
                          		<i class="glyphicon glyphicon-share share_i_bds"></i>
                          		<a class="bds_more" data-cmd="more" 
		                    		bd_text="${popularCombo.comboName}" 
		                    		bd_desc="${popularCombo.comboDesc}" 
		                    		bd_url="/product_info?comboId=${popularCombo.comboId}" 
		                    		bd_pic="${popularCombo.imgPath}popular.jpg"
                        		</a>
                          	</div>
	                    </figcaption>
		            </figure>
        		</c:if>
        		<c:if test="${status.index == 2}">
		            <figure>
		                <a class="row-1" href="<%=request.getContextPath()%>/product_info?comboId=${popularCombo.comboId}" style="margin-top: 20px">
		                    <img src="<%=request.getContextPath()%>${popularCombo.imgPath}popular.jpg">
	                    </a>
	                    <figcaption class="taocan_fig" style="bottom: 0px;background-color: rgb(156, 137, 123);opacity: 0.9;color: #fff;text-indent: 0em;">
	                       	 店长诚心推荐NO.3
	                        <label class="dianzhan_label" comboId="${popularCombo.comboId}">
	                            <i class="glyphicon glyphicon-thumbs-up dianzang"></i>
	                            <i class="dianzhan_num" style="position: relative;color: #fff">${popularCombo.clickLikeNum}</i>
	                        </label>
                      			<div class="bdsharebuttonbox" data-tag="share_popular_${status.index}">
                          		<i class="glyphicon glyphicon-share share_i_bds"></i>
                          		<a class="bds_more" data-cmd="more" 
		                    		bd_text="${popularCombo.comboName}" 
		                    		bd_desc="${popularCombo.comboDesc}" 
		                    		bd_url="/product_info?comboId=${popularCombo.comboId}" 
		                    		bd_pic="${popularCombo.imgPath}popular.jpg"
                        		</a>
                          	</div>
	                    </figcaption>
		            </figure>
        		</c:if>
        	</c:forEach>
        </div>
    </div>
    
</div>

<div class="product_list">
    <div class="product_list_title"></div>
    <div class="title" style="margin-top: 10px;"><img src="<%=request.getContextPath()%>/res/recom_package/img/recom2.png"></div>
	<c:forEach var="combo" items="${combos}" varStatus="status">
	    <div class="product_info">
	        <div class="info_desc">
	            <span class="info_name">${combo.comboName}</span>
	            <span class="jiage">￥<b>${combo.price}</b></span>
	            <del class="shichang_jiage">市场价 : ${combo.originalPrice}</del>
	            <span class="zekou"><b class="zhekou_1">${combo.discountInt}</b><b class="zhekou_2">.${combo.discountDouble}折</b></span>
	            <div class="info_qrc">
	                <img class="qrcode_img" src="<%=request.getContextPath()%>${combo.imgPath}weixin.jpg" width="80" height="80" />
	                <label class="dianzhan_label" comboId="${combo.comboId}">
	                    <i class="glyphicon glyphicon-thumbs-up dianzang"></i>
	                    <i class="dianzhan_num" style="position: relative;color: #fff">${combo.clickLikeNum}</i>
	                </label>
	                <div class="bdsharebuttonbox" style="top:18px;" data-tag="share_popular_${status.index}">
               			<i class="glyphicon glyphicon-share share_i_bds"></i>
                    	<a class="bds_more" data-cmd="more" 
	                  		bd_text="${combo.comboName}" 
	                  		bd_desc="${combo.comboDesc}" 
	                  		bd_url="/product_info?comboId=${combo.comboId}" 
	                  		bd_pic="${combo.imgPath}main.jpg"
                   		</a>
					</div>
	                <span class="ipone_saomiao">手机扫描，分享有礼</span>
	            </div>
	        </div>
	        <a href="<%=request.getContextPath()%>/product_info?comboId=${combo.comboId}">
		        <img class="dress_img" src="<%=request.getContextPath()%>${combo.imgPath}taocan_main.jpg" width="795" height="300" />
	        </a>
	    </div>
    </c:forEach>
</div>

<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/res/index/js/index.js"></script>
<script src="<%=request.getContextPath()%>/pages/front/js/recom_package.js"></script>

<script type="text/javascript" id="bdshare_js" data="type=tools" ></script>
<script type="text/javascript" id="bdshell_js"></script>
<script type="text/javascript" >
var bdText = '分享内容';
var	bdDesc = '分享摘要';	
var	bdUrl = '分享url地址'; 	
var	bdPic = '分享图片';
window._bd_share_config = {
	common : {
		bdText : bdText,	
		bdDesc : bdDesc,	
		bdUrl : bdUrl, 	
		bdPic : bdPic,
		onBeforeClick : function(cmd,config){
			console.log(bdUrl);
			return {bdText : bdText, bdDesc : bdDesc, bdUrl : bdUrl, bdPic : bdPic};
		}
	},
	share : [{
		"bdSize" : 16
	}]
}
with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?cdnversion='+~(-new Date()/36e5)];
$(function(){
	//样式修改
	$(".bdsharebuttonbox .bds_more").css({
		'display': 'table-cell',
		'height': '28px',
		'width': '30px',
		'position': 'absolute',
		'top': '0px',
	    'z-index': 999999
	});
	//分享悬浮事件
	$(".bds_more").mouseover(function(){
		var me = $(this);
		bdText = "婚纱摄影-" + me.attr("bd_text") + "-婚纱详情";
		bdDesc = me.attr("bd_desc");
		bdUrl = hostRoot + me.attr("bd_url");
		bdPic = hostRoot + me.attr("bd_pic");
	});
	
});

</script>
</body>
</html>