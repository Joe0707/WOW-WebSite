
$(function(){
$(".logo .tip").html(
		'<div class="account">'
		+'<span onclick="log();">登录</span>'
		+'<span><a href="#">注册</a></span>'
	+'</div>'
	+'<img src="../img/team.png">'
)
$(".menu").html(
		'<img src="../img/logo12.jpg"/>'
			+'<div class="search">'
			+'<span>搜索</span>'
				+'<input type="text" value="请输入关键字"/>'
			+'</div>'
			+'<div class="title">'
				+'<span><a href="#">魔兽世界</a></span>'
				+'<span><a href="#">新闻</a></span>'
				+'<span><a href="#">图片</a></span>'
				+'<span><a href="#">视频</a></span>'
				+'<span><a href="#">下载</a></span>'
			+'</div>'		
)
$(".remind").html(
		'<form action="../log" method="post">'
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

