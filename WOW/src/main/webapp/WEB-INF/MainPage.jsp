<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%	
    	Object obj =session.getAttribute("checklogin");
    	boolean bo =false;
    if(obj!=null){
    	bo = (Boolean)obj;
    }
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; utf-8">
<title>魔兽世界</title>
<link rel="stylesheet" href="/WOW/MainPage/mainpage.css"/>
<link rel="stylesheet" href="/WOW/logo/logo.css"/>
<link rel="stylesheet" href="/WOW/law/law.css"/>
<style type="text/css">
	.logo{
		border:0;
	}
	.doorinfo{
		border:0;
	}
</style>
<script src = "/WOW/js/jquery-1.11.1.js"></script>
<script src="/WOW/MainPage/mainpage.js"></script>
<script src="/WOW/logo/logo.js"></script>
<%
	if(bo==true){
		%>
<script src="/WOW/logo/logoin.js"></script>		
		<%
	}
%>
<script src="/WOW/law/law.js"></script>
</head>
<body>
	<audio src="/WOW/music/wowradio.mp3" autoplay="autoplay" loop="loop" hidden="true"></audio>
	<div class="video">
	<video class="mvideo" 
	src="/WOW/MainPage/mainpage.mp4" autoplay="autoplay" loop="loop"></video>
	</div>
	<div class="logo">
	<div class="tip">
		<!--<div class="account">
			<span onclick="log();">登录</span>
			<span><a href="#">注册</a></span>
		</div>
		<img src="../img/team.png">  -->
	</div>
		<div class="hottext">
			<h1>7.25版本现已上线</h1>
		</div>
		<div class="hotinfo">
		<div class="hotimg">
			<p class="imgtext">
				<span onclick="news();">热点新闻</span>
				<span onclick="picture();">精彩攻略</span>
			</p>
			<ul id="images"class="imgs">
				<li id="l1" onmouseout="textdown(this);"onmouseover="textup(this);">
					<div class="info">
					</div>
					<div class="infotext" id="imagestext1">
					</div>
				</li>
				<li id="l2" onmouseout="textdown(this);"onmouseover="textup(this);">
					<div class="info">
					</div>
					<div id="imagestext2" class="infotext">
					</div>
				</li>
				<li id="l3" onmouseout="textdown(this);"onmouseover="textup(this);">
					<div class="info" >
					</div>
					<div id="imagestext3" class="infotext">
					</div>
				</li>
				<li id="l4" onmouseout="textdown(this);"onmouseover="textup(this);">
					<div class="info">
					</div>
					<div id="imagestext4" class="infotext">
					</div>
				</li>
			</ul>
		</div>
	</div>
	</div>
	<div class="remind">
		<!-- <p class="login">
			<span>账号</span><input type="text"/>
		</p>
		<p class="login">
			<span>密码</span><input type="password"/>
		</p>
		<p class="button">
			<input type="button" value="登陆"/>
			<input type="reset" value="重置"/>
		</p> -->
	</div>
	<div class="menu">
		<!--<img src="../img/logo12.jpg"/>
		<div class="search">
			<input type="text" value="请输入关键字"/>
		</div>
		<div class="title">
			<span><a href="#">魔兽世界</a></span>
			<span><a href="#">新闻</a></span>
			<span><a href="#">图片</a></span>
			<span><a href="#">视频</a></span>
			<span><a href="#">下载</a></span>
		</div>*/  -->
	</div>
	<div class="doorinfo">
	<ul class="door">
		<li class="part1">
			<img src="/WOW/img/door1.jpg"/>
			<p class="send">/WOW/text.do?param=8</p>
			<p>7.25版本介绍</p>
		</li>
		<li class="part2">
			<img src="/WOW/img/door2.jpg"/>
			<p class="send">/WOW/text.do?param=9</p>
			<p>7.25更新信息</p>
		</li>
		<li class="part3">
			<img src="/WOW/img/door3.jpg"/>
			<p class="send">/WOW/text.do?param=7</p>
			<p>破碎海滩</p>
		</li>
		<li class="part4">
			<img src="/WOW/img/door4.jpg"/>
			<p class="send">/WOW/text.do?param=10</p>
			<p>职业坐骑</p>
		</li>
	</ul>
	</div>
	<div class="link"><!-- <span>友情链接：</span> --></div>
	<div class="law">
	<!--<p>版权所有，翻版必究</p>-->
	</div>
	<div id="back"><!--<p><a href="#">顶部</a></p>--></div>
	<div class="duty">
			   <p>板块负责人:焦春雨</p>
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
</body>
</html>