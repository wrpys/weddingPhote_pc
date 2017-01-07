//收藏
function favorite(id, type, domain)
{
	var url = domain+'/base/favorite.html';
	var params = {id:id,type:type};
	$.post(url, params,function(data){
		if(data.status == false) {
		  getModal(data.msg);
		} else {
		  getModal('收藏成功！');
		}
	}, "json");
}

//点赞
function like(id, type, domain, obj)
{
	obj = obj || {}
	var url = domain+'/base/like.html';
	var params = {id:id,type:type,r:Math.random()};
	if(!$(obj).parent().find('cite').is('.click')) {
		$.post(url, params,function(data){
			if(data.status == false) {
			  getModal(data.msg);
			} else {
			//	$(obj).parent().find('cite').html(parseInt($(obj).parent().find('cite').attr('data-num')) + 1);
				$('#data_num').html(parseInt($('#data_num').html())+1);
				$('#show_'+id).html(parseInt($('#show_'+id).html())+1);
				$(obj).parent().find('cite').addClass('click');
			}
		}, "json");
	}
}

//通用保存
function common_save(target_url, obj, redirect_url){
  if(obj.validationEngine('validate') === true) {
	$.post(target_url, obj.serialize(),function(data){
	  if(data.status == false){
		getModal(data.msg);
	  }else if(data.status == true){
		if(data.msg){
		  getModal(data.msg);
		}

		if(redirect_url) {
		  setTimeout("location.href='"+redirect_url+"'", 1000);
		}
	  }
	}, "json");
	return false;
  }
}

//通用ajax post
function common_post(target_url, postData, redirect_url){
  $.post(target_url, postData,function(data){
	if(data.status == false){
	  getModal(data.msg);
	}else if(data.status == true){
	  getModal(data.msg);
	  if(redirect_url) {
		setTimeout("location.href='"+redirect_url+"'", 2000);
	  }
	}
  }, "json");
  return false;
}


function getModal(msg) {

var html = '<div class="modal fade" id="alert-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">';
	html+= '<div class="modal-dialog">';
	html+= '<div class="modal-content">';
	html+= '<div class="modal-header">　';
	html+= '<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>';
	html+= '<h4 class="modal-title" id="myModalLabel"></h4>';
	html+= '</div>';
	html+= '<div class="modal-body" style="text-align:center;font-size:16px;">';
	html+= msg;
	html+= '</div>'; 
	html+= '<div class="modal-footer">';
	html+= '<button type="button" class="btn btn-default" data-dismiss="modal">确定</button>';
	html+= '</div></div></div>';
if($('#alert-modal').length > 0) {
  $('#alert-modal .modal-body').html(msg);
}
$('body').append(html);
$('#alert-modal').modal('show');
}


var childWindow;
function toLogin(domain)
{
	childWindow = window.open(domain+"/login/qqlogin.html","TencentLogin");
}


function addToCart(domain, goods_id)
{
	var url = domain+'/goods/addToCart.html';
	var params = {id:goods_id};
	$.post(url, params,function(data){
		if(data.status == false) {
			getModal(data.msg);
		} else {
			getModal(data.msg);
		}
	}, "json");
}