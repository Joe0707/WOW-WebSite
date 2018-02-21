$(function(){
	$(".text").html(
			'<form action="/WOW/modify.do">'
			+'<p>账号:'+account+''
			+'</p>'
			+'<p>昵称:<input name="nickname" value="'+nickname+'"/>'
			+'</p>'
			+'<p>年龄:<input name="age" value="'+age+'"/>'
			+'</p>'
			+'<p class="sex">性别:<select class="cgender" name="gender">'
			+'<option '+choose("女",gender)+'>女</option>'
			+'<option '+choose("男",gender)+'>男</option>'
			+'</select>'
			+'</p>'
			+'<p>所在地:<select class="loca" name="loc">'
			+'<option '+choose("北京市",loc)+'>北京市</option>'
			+'<option '+choose("天津市",loc)+'>天津市</option>'
			+'</select>'
			+'</p>'
			+'<p>金币:'+gold+''
			+'</p>'
			+'<input type="hidden" name="account" value="'+account+'"/>'
			+'<input class="modify" type="submit" value="修改账号"/>'
			+'<input class="res" type="reset" value="重置修改"/>'
			+'</form>'
	)
})

function showperson(){
	$(".text").html(
			'<form action="/WOW/modify.do">'
			+'<p>账号:'+account+''
			+'</p>'
			+'<p>昵称:<input name="nickname" value="'+nickname+'"/>'
			+'</p>'
			+'<p>年龄:<input name="age" value="'+age+'"/>'
			+'</p>'
			+'<p class="sex">性别:<select class="cgender" name="gender">'
			+'<option '+choose("女",gender)+'>女</option>'
			+'<option '+choose("男",gender)+'>男</option>'
			+'</select>'
			+'</p>'
			+'<p>所在地:<select class="loca" name="loc">'
			+'<option '+choose("北京市",loc)+'>北京市</option>'
			+'<option '+choose("天津市",loc)+'>天津市</option>'
			+'</select>'
			+'</p>'
			+'<p>金币:'+gold+''
			+'</p>'
			+'<input type="hidden" name="account" value="'+account+'"/>'
			+'<input class="modify" type="submit" value="修改账号"/>'
			+'<input class="res" type="reset" value="重置修改"/>'
			+'</form>'
	)
}
function showduty(){
	$(".text").html(
			'<div class="sign">'
			+'<img src="/WOW/img/sign.png"/>'
			+'<input type="button" value="签到" onclick="sign();"/>'
				+'<p class="p11">每日签到</p>'
				+'<p class="p12">奖励5个金币</p>'
			+'</div>'
			+'<div class="game">'
			+'<img src="/WOW/img/game.png"/>'
			+'<input type="button" value="开始游戏" onclick="show();"/>'
				+'<p class="p21">游戏</p>'
				+'<p class="p22">根据游戏获得奖励<br/>每天可以获得两次<br/>今天还可以玩'+count+'次游戏</p>'
			+'</div>'
	)
}
function cl(btn){
	$(btn).parent().css("display","none");
}
function sign(){
	location.href="/WOW/sign.do?account="+account;
	//$(".success").css("display","block");
}
function choose(str1,str2){
	if(str1==str2){
		return "selected";
	}else{
		return "";
	}
}


