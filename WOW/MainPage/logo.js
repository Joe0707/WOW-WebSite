$(function(){
$(".logo .tip").html(
		'<div class="account">'
		+'<input type="button" onclick="log();" value="登录"/>'
		+'<input type="button" onclick="reg();" value="注册"/>'
	+'</div>'
	+'<img src="teamlogos.png">'
)
$(".menu").html(
		'<img src="logo2.png"/>'
			+'<div class="search">'
			+'<form action="search.do">'
			+'<input id="search" type="submit" value="搜索"/>'
				+'<input id="word" type="text" name="search" value="请输入关键字"/>'
				+'</form>'
			+'</div>'
			+'<div class="title">'
				+'<span><a href="/WOW/main.do">魔兽世界</a></span>'
				+'<span><a href="/WOW/news.do">新闻</a></span>'
				+'<span><a href="/WOW/picture.do">图片</a></span>'
				+'<span><a href="/WOW/video.do">视频</a></span>'
				+'<span><a href="/WOW/download.do">下载</a></span>'
			+'</div>'		
)
$(".remind").html(
		'<form id="info" action="/WOW/login.do" method="post">'
		+'<img id="close"src="/WOW/img/close.png" onclick="turnoff(this);"/>'
		+'<p class="login">'
		+'<span>账号</span><input id="username"type="text" name="account"/>'
		+'</p>'
		+'<p class="login">'
		+'<span>密码</span><input id="pwd"type="password" name="password"/>'
		+'</p>'
		+'<p class="button">'
		+'<input type="button" value="登陆" onclick="load();"/>'
		+'<input type="reset" value="重置"/>'
		+'</p>'
		+'<p id="error"></p>'
		+'</form>'
)
})
function log(){
	$(".remind").css("display","block");
}
function reg(){
	location.href="/WOW/pagelogin.do";
}
function turnoff(){
	$("#error").empty();
	$(".remind").css("display","none");
}
function load(){
	console.log(222);
	var value = {"account":$("#username").val(),"password":$("#pwd").val()}
	$.ajax({
		"url":"login.do","type":"post","data":value,"dataType":"text","success":cge
	});
	/*fun1();
	var txt = $("#error").html().trim();
	console.log(txt);
	if(txt=="111"){
		$(".remind").css("display","none");
	}*/
	
}	
function fun1(){
	$("#error").load("login.do",$("#info").serialize());
}
function cge(data){
	
	if(data.trim()=="正确"){
		location.href="main.do";
	}else{
		$("#error").html(data);
	}
}

