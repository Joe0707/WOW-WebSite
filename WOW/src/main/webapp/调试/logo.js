$(function(){
$(".logo .tip").html(
		'<div class="account">'
		+'<span onclick="log();">登录</span>'
		+'<span><a href="#">注册</a></span>'
	+'</div>'
	+'<img src="/WOW/img/team.png">'
)
$(".menu").html(
		'<img src="/WOW/img/logo2.png"/>'
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
				+'<span><a href="#">视频</a></span>'
				+'<span><a href="/WOW/download.do">下载</a></span>'
			+'</div>'		
)
$(".remind").html(
		'<form action="/WOW/login.do" method="post">'
		+'<p class="login">'
		+'<span>账号</span><input type="text" name="account"/>'
		+'</p>'
		+'<p class="login">'
		+'<span>密码</span><input type="password" name="password"/>'
		+'</p>'
		+'<p class="button">'
		+'<input type="submit" value="登陆"/>'
		+'<input type="reset" value="重置"/>'
		+'</p>'
		+'</form>'
)
})
function log(){
	$(".remind").css("display","block");
}

