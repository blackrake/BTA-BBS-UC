//初始化
$(document).ready(function() {
			App.init();
			LoginV2.init();
		});

//登录请求
function login(){
	var account=$('#account').val().trim();
	var password=$('#password').val().trim();
	var rmaw=$('#rmaw').attr("checked")?1:0;
	if(confirm(account,password)){
		var param={
			"account":account,
			"password":password
		}
		var ssid=null;
		var token=null;
		var returnUrl=null;
		//发送登录请求
		$.ajax({
			type:'POST',
			url:url,
			data:Base64.encode(JSON.encode(param)),
			dataType:'text',
			success:function(responseData){
				var newdata = jQuery.parseJSON(Base64.decode(responseData));
				if(null!=newdata&&newdata.errorCode == 1010000&&null!=newdata.data&&null!=newdata.data.ssid&&null!=newdata.data.token){
					ssid=newdata.data.ssid;
					token=newdata.data.token;
					//记录cookie中
					if(rmaw==1){					
						$.cookie('club_boneix_user_ssid', ssid, { expires: 7, path: '/' });
						$.cookie('club_boneix_user_token', token, { expires: 7, path: '/' });  
					}else{
						$.cookie('club_boneix_user_ssid', ssid, { path: '/' });
						$.cookie('club_boneix_user_token', token, { path: '/' });  
					}
				}
			},
			error : function(e) {
				console.log(e);
			}
		})
		if(null!=ssid&&null!=token){
			//进行页面跳转
			if(null!=returnUrl){

			}else{

			}
		}
	}
}