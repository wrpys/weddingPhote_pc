/**
 * 套餐列表
 */
$(function(){
	//点赞
	$(".dianzhan_label").click(function(event){
		var me = $(this);
		var comboId = me.attr("comboId");
		$.ajax({
			url : contextPath + "/comboCtr/clickLike",
			async : false,
			type : 'POST',
			dataType : "json",
			data : {
				comboId : comboId
			},
			success : function(data) {
				if (data){
					var dianzhanNum = me.find(".dianzhan_num");
					var num = parseInt(dianzhanNum.html());
					dianzhanNum.html(++num);
				}
			}
		});
		return false;
	});
})




