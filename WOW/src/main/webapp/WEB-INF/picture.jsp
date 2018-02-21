<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<%	
    	Object obj =session.getAttribute("checklogin");
    	boolean bo =false;
    if(obj!=null){
    	bo = (Boolean)obj;
    }
    %>
<html>
<head>
<meta charset="UTF-8">
<title>图片站</title>
<link rel="stylesheet" href="/WOW/picture/css.css">
<link rel="stylesheet"  href="/WOW/picture/law.css" />
<style >
	.top1{
		z-index: 99;
	}
	.top0{
		opacity:1;
	}
	.top3{
		position:absolute;
		bottom:15px;
	}
	#teamlogos{
		width:100px;
		height:42px;
		z-index:99;
	}
	.user{
		line-height:42px;
		
	}
	.account{
		width:150px;
	}
	
.account input{
	font-size:20px;
	margin:10px;
	background:url(/WOW/img/login.png) no-repeat center;
	border:0;
	width:50px;
}
#close{
	float:right;
	margin:0 5px;
}
.remind{
	height:195px;
}
.remind #error{
	font-size:20px;
	color:red;
	position:absolute;
	bottom:5px;
	left:50px;
}
</style>
<script src="/WOW/js/jquery-1.11.1.js"></script>
<script src="/WOW/picture/law.js"></script>
<script>
var n = 869;var a = 0;var b = 5;
$(function(){
	setInterval(function(){
		$(".top img").eq(1).trigger("click");
	},3500);
});
function ff1(){
	$("#lu img").animate({
		'right':''+n+'px'
	},600);
	n+=869;
	if(n>=4345){
		n=0;
	}
	console.log(n);
}
function ff2(){
	n-=869;
	$("#lu img").animate({
		'right':''+n-869+'px'
	},600);
	if(n<=0){
		n=3476;
	}
}
function f6(){
	$(".search input").val("");	
}
function f7(){
	$(".search input").val("请输入关键字");
}
$(function(){
	$(".logo .tip").html(
			'<div class="account">'
		+'<input type="button" onclick="log();" value="登录"/>'
		+'<input type="button" onclick="reg();" value="注册"/>'
		+'</div>'
		+'<img id="teamlogos"src="/WOW/img/teamlogos.png">'
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
				+'<span><a href="/WOW/video.do">视频</a></span>'
				+'<span><a href="/WOW/download.do">下载</a></span>'
				+'</div>'		
	)
	$(".remind").html(
		'<form action="/WOW/login.do" method="post">'
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
	function turnoff(){
	$("#error").empty();
	$(".remind").css("display","none");
	
}
	function log(){
		$(".remind").css("display","block");
	}
function reg(){
	location.href="/WOW/pagelogin.do";
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
function cge(data){
	
	if(data.trim()=="正确"){
		location.href="main.do";
	}else{
		$("#error").html(data);
	}
}

	$(function(){
		$(".top2>img").hide();
		$(".body1 img").click(function(e){
			var p = e.target;
			var q = $(p).attr("src");
			var w = $("#test img").attr("src",q);
			$("#test").fadeIn(600);			
		});
	});
	function dis(a){
		$("#test").fadeOut(600);
	}
	function big(img){
		var p = $(img).attr("src");
		var q = $("#img11").attr("src",p);
		$(".top2").addClass("top0");
		$("#img11").fadeIn(600);
	}
	function small(img){
		$(".top2").removeClass("top0");
		$(img).fadeOut(600);
	}
	function fl(){
		$("#b1").removeClass("top1");
		$("#b2").removeClass("top1");
		$("#b3").removeClass("top1");
		$("#b4").removeClass("top1");
		$("#h1").removeClass("top3");
		$("#h2").removeClass("top3");
		$("#h3").removeClass("top3");
		$("#h4").removeClass("top3");
	}
	
	function fll(){
		$("#h1 img").attr("src","/WOW/picture/image/log102.png");
		$("#h2 img").attr("src","/WOW/picture/image/log103.png");
		$("#h3 img").attr("src","/WOW/picture/image/log104.png");
		$("#h4 img").attr("src","/WOW/picture/image/log105.png");
	}
	function f1(){
		fl();
		fll();
		$("#h1 img").attr("src","/WOW/picture/image/log1021.png");
		$("#b1").addClass("top1");
		$("#h1").addClass("top3");
	}
	function f2(){
		fl();
		fll();
		$("#h2 img").attr("src","/WOW/picture/image/log1031.png");
		$("#b2").addClass("top1");
		$("#h2").addClass("top3");
	}
	function f3(){
		fl();
		fll();
		$("#h3 img").attr("src","/WOW/picture/image/log1041.png");
		$("#b3").addClass("top1");
		$("#h3").addClass("top3");
	}
	function f4(){
		fl();
		fll();
		$("#h4 img").attr("src","/WOW/picture/image/log1025.png");
		$("#b4").addClass("top1");
		$("#h4").addClass("top3");
	}


	</script>
	<%
	if(bo==true){
		%>
<script src="/WOW/logo/logoin.js"></script>		
		<%
	}
%>
</head>
<body>
	<audio src="/WOW/music/wowradio.mp3" autoplay="autoplay" loop="loop" hidden="true"></audio>
	<div class="logo"><img src="/WOW/picture/image/11311.jpg">
	<div class="tip"></div>
	</div>
	<div class="menu">
	</div>
	<div class="remind">
	</div>
	<div id="yilit"><div class="toop"></div></div>
	<div class="top">
		<img src="/WOW/picture/image/zuo.png" id="qian" onclick="ff2();"><img src="/WOW/picture/image/you.png" id="hou" onclick="ff1();">
		<div id="lu"><img src="/WOW/picture/image/108.jpg"><img src="/WOW/picture/image/107.jpg"><img src="/WOW/picture/image/104.jpg"><img src="/WOW/picture/image/109.jpg"><img src="/WOW/picture/image/110.jpg"><img src="/WOW/picture/image/112.jpg"></div>
		<div id="zuo">
			<img src="/WOW/picture/image/11313.jpg" >
			<img src="/WOW/picture/image/11314.jpg" id="you">
		</div>
		<div class="top2">
		</div>
	</div>
	<div id="yilib"></div>
	<div id="midi"></div>
	<div class="selec1"><img src="/WOW/picture/image/22.jpg"></div>
	<div class="selec" >
		<div class="head">
			<ul>
				<li id="h1"  onclick="f1();" class="top3"><img src="/WOW/picture/image/log102.png" ></li>
				<li id="h2"   onclick="f2();"><img src="/WOW/picture/image/log103.png"></li>
				<li id="h3"  onclick="f3();"><img src="/WOW/picture/image/log104.png"></li>
			</ul>
		</div>
		<div class="body1">
			<div id="b1">
					<li><img src="/WOW/picture/image/31.jpg" ></li>
					<li><img src="/WOW/picture/image/401.jpg" ></li>
					<li><img src="/WOW/picture/image/402.jpg" ></li>
					<li><img src="/WOW/picture/image/403.jpg" ></li>
					<li><img src="/WOW/picture/image/404.jpg" ></li>
					<li><img src="/WOW/picture/image/405.jpg" ></li>
					<li><img src="/WOW/picture/image/406.jpg" ></li>
					<li><img src="/WOW/picture/image/407.jpg" ></li>
					<li><img src="/WOW/picture/image/408.jpg" ></li>
					<li><img src="/WOW/picture/image/409.jpg" ></li>
					<li><img src="/WOW/picture/image/410.jpg"></li>
					<li><img src="/WOW/picture/image/411.jpg"></li>
					<li><img src="/WOW/picture/image/412.jpg"></li>
					<li><img src="/WOW/picture/image/413.jpg"></li>
					<li><img src="/WOW/picture/image/414.jpg"></li>
					<li><img src="/WOW/picture/image/415.jpg"></li>
					<li><img src="/WOW/picture/image/416.jpg"></li>
					<li><img src="/WOW/picture/image/417.jpg"></li>
					<li><img src="/WOW/picture/image/418.jpg"></li>
					<li><img src="/WOW/picture/image/419.jpg"></li>
					<li><img src="/WOW/picture/image/420.jpg"></li>
					<li><img src="/WOW/picture/image/421.jpg"></li>
					<li><img src="/WOW/picture/image/422.jpg"></li>
					<li><img src="/WOW/picture/image/423.jpg"></li>
					<li><img src="/WOW/picture/image/424.jpg"></li>
					<li><img src="/WOW/picture/image/425.jpg"></li>
					<li><img src="/WOW/picture/image/426.jpg"></li>
					<li><img src="/WOW/picture/image/30.jpg"></li>
			</div>
			<div id="b2">
					<li><img src="/WOW/picture/image/32.jpg"></li>
					<li><img src="/WOW/picture/image/500.jpg" ></li>
					<li><img src="/WOW/picture/image/501.jpg" ></li>
					<li><img src="/WOW/picture/image/502.jpg" ></li>
					<li><img src="/WOW/picture/image/503.jpg" ></li>
					<li><img src="/WOW/picture/image/504.jpg" ></li>
					<li><img src="/WOW/picture/image/505.jpg" ></li>
					<li><img src="/WOW/picture/image/506.jpg" ></li>
					<li><img src="/WOW/picture/image/507.jpg" ></li>
					<li><img src="/WOW/picture/image/508.jpg" ></li>
					<li><img src="/WOW/picture/image/509.jpg" ></li>
					<li><img src="/WOW/picture/image/510.jpg" ></li>
					<li><img src="/WOW/picture/image/511.jpg" ></li>
					<li><img src="/WOW/picture/image/512.jpg" ></li>
					<li><img src="/WOW/picture/image/513.jpg" ></li>
					<li><img src="/WOW/picture/image/514.jpg" ></li>
					<li><img src="/WOW/picture/image/515.jpg" ></li>
					<li><img src="/WOW/picture/image/516.jpg" ></li>
					<li><img src="/WOW/picture/image/517.jpg" ></li>
					<li><img src="/WOW/picture/image/518.jpg" ></li>
					<li><img src="/WOW/picture/image/519.jpg" ></li>
					<li><img src="/WOW/picture/image/520.jpg" ></li>
					<li><img src="/WOW/picture/image/521.jpg" ></li>
					<li><img src="/WOW/picture/image/522.jpg" ></li>
					<li><img src="/WOW/picture/image/523.jpg" ></li>
					<li><img src="/WOW/picture/image/524.jpg" ></li>
					<li><img src="/WOW/picture/image/525.jpg" ></li>
					<li><img src="/WOW/picture/image/19.jpg" ></li>
			</div>
			<div id="b3">
					<li><img src="/WOW/picture/image/33.jpg"></li>
					<li><img src="/WOW/picture/image/603.jpg"></li>
					<li><img src="/WOW/picture/image/604.jpg"></li>
					<li><img src="/WOW/picture/image/605.jpg"></li>
					<li><img src="/WOW/picture/image/606.jpg"></li>
					<li><img src="/WOW/picture/image/607.jpg"></li>
					<li><img src="/WOW/picture/image/608.jpg"></li>
					<li><img src="/WOW/picture/image/609.jpg"></li>
					<li><img src="/WOW/picture/image/610.jpg"></li>
					<li><img src="/WOW/picture/image/611.jpg"></li>
					<li><img src="/WOW/picture/image/612.jpg"></li>
					<li><img src="/WOW/picture/image/613.jpg"></li>
					<li><img src="/WOW/picture/image/614.jpg"></li>
					<li><img src="/WOW/picture/image/615.jpg"></li>
					<li><img src="/WOW/picture/image/616.jpg"></li>
					<li><img src="/WOW/picture/image/630.jpg"></li>
					<li><img src="/WOW/picture/image/618.jpg"></li>
					<li><img src="/WOW/picture/image/619.jpg"></li>
					<li><img src="/WOW/picture/image/620.jpg"></li>
					<li><img src="/WOW/picture/image/621.jpg"></li>
					<li><img src="/WOW/picture/image/622.jpg"></li>
					<li><img src="/WOW/picture/image/623.jpg"></li>
					<li><img src="/WOW/picture/image/624.jpg"></li>
					<li><img src="/WOW/picture/image/625.jpg"></li>
					<li><img src="/WOW/picture/image/626.jpg"></li>
					<li><img src="/WOW/picture/image/627.jpg"></li>
					<li><img src="/WOW/picture/image/628.jpg"></li>
					<li><img src="/WOW/picture/image/629.jpg"></li>
			</div>
		</div>
	</div>
	<div class="selec3"><img src="/WOW/picture/image/25.jpg" ></div>
	<div class="bank">
	<div class="link"></div>
	<div class="law"></div>
	<div class="duty">
			   <p>板块负责人:杜峻宇</p>
			</div>
			<div class="team">
			   <div class="img01">
			      <img src="/WOW/img/teamlogo.png">
			   </div>			   
			   <div class="p1">
			      <p>XXX团队版权所有 由TarenaTJ运营 著作权侵权 新出审字：[2014]XXXX号
文网进字[2014]XXX号 沪网文[2014]XXX1-1XX1号 增值电信业务经营许可证编号：TJB2－20080XXX
互联网违法和不良信息举报电话：1008611</p>
			   </div>
			   <div class="coop">
			      <div class="co">
			         <p>合作品牌:</p>
			      </div>
			      
			      <div class="img02">
			         <img src="/WOW/news/img/nvi.jpg">
			      <img src="/WOW/news/img/int.jpg">
			      </div>			      
			   </div>	
			    
			</div>
	</div>
	<div id="back"></div>
	<div  id="test" ><img src="/WOW/picture/image/19.jpg" onclick="dis(this);"></div>
</body>
</html>







