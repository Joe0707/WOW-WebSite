<%@ page language="java" contentType="text/html; charset=utf-8"
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
<title>Insert title here</title>
<link rel="stylesheet" href="/WOW/pagevideo/gamelist.css" />
<link rel="stylesheet" href="/WOW/logo/logo.css" > 
<link rel="stylesheet" href="/WOW/law/law.css" > 
<style>
	.menu{
		width:1120px;
	}
	.link{
		width:1200px;
	}
	.law{
		width:1200px;
	}
	.team{
		width:1200px;
	}
	.duty{
		width:1200px;
	}
	#logo5 a{
		margin:0 30px;
	}
</style>
<script>
	//控制背景视屏播放速度
	var video=document.getElementById('v1');
	video.playbackRate=0.5;
	function play(btn){
		var uri = $(btn).children("p").html();
		console.log(uri);
		console.log($("#ve1"));
		console.log($("#ve1").attr("src"));
		$("#ve1").attr("src",uri);
		console.log($("#ve1").attr("src"));
	}
</script>
<script src="/WOW/js/jquery-1.11.1.js"></script>
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
	<!-- 背景视屏 -->
	<img src="/WOW/pagevideo/111.jpg"  id="v1">
	</video>
	<!-- logo区：五个分区 -->
	<div class="remind"></div>
	<div class="logo">
		<div id="lotip"class="tip"></div>
        <div class="menu"></div>
		<div id="logo1">
			<div id="logo2"></div>
			<div id="logo2_1"></div>
		</div>
		
		<div id="logo3">
			<img alt="" src="/WOW/pagevideo/img/649.jpg" width="1200px" height="485px">
			<a name="vid1"><video id="ve1"src="/WOW/pagevideo/video/15.mp4" controls width="830" height="485">
			</video>
		</div>
	
		<div id="logo5">
			<span style=color:#FFF8DC;>视屏菜单：</span>
			<a href="#page1" style=color:#FFF8DC;>热门</a> <a href="#page2" style=color:#FFF8DC;>趣味</a> 
			<a href="#page3" style=color:#FFF8DC;>副本</a>
		</div>
	</div>
	<!-- 视屏区：视屏和分页 -->
	<div class="vedio">
		<div id="vedio1">
			<a name="page1"><a href="#vid1" onclick="play(this)"><p class="uri">/WOW/pagevideo/video/15.mp4</p><img alt="" src="/WOW/pagevideo/img/6.jpg" width="370" height="268"></a></a>
			<a href="#vid1" onclick="play(this)"><p class="uri">/WOW/pagevideo/video/1.mp4</p><img alt="" src="/WOW/pagevideo/img/11.jpg" width="370" height="268"></a>
			<a href="#vid1" onclick="play(this)"><p class="uri">/WOW/pagevideo/video/2.mp4</p><img alt="" src="/WOW/pagevideo/img/12.jpg" width="370" height="268"></a>
			<a href="#vid1" onclick="play(this)"><p class="uri">/WOW/pagevideo/video/3.mp4</p><img alt="" src="/WOW/pagevideo/img/13.jpg" width="370" height="268"></a>
			<a href="#vid1" onclick="play(this)"><p class="uri">/WOW/pagevideo/video/4.mp4</p><img alt="" src="/WOW/pagevideo/img/1.jpg" width="370" height="268"></a>
			<a href="#vid1" onclick="play(this)"><p class="uri">/WOW/pagevideo/video/5.mp4</p><img alt="" src="/WOW/pagevideo/img/5.jpg" width="370" height="268"></a>
			<a href="#vid1" onclick="play(this)"><p class="uri">/WOW/pagevideo/video/6.mp4</p><img alt="" src="/WOW/pagevideo/img/4.jpg" width="370" height="268"></a>
			<a name="page2"><a href="#"><p class="uri"></p><img alt="" src="/WOW/pagevideo/img/6.jpg" width="370" height="268"></a></a>
			<a href="#"><img alt="" src="/WOW/pagevideo/img/7.jpg" width="370" height="268"></a>
			<a href="#"><img alt="" src="/WOW/pagevideo/img/8.jpg" width="370" height="268"></a>
			<a href="#"><img alt="" src="/WOW/pagevideo/img/9.jpg" width="370" height="268"></a>
			<a href="#"><img alt="" src="/WOW/pagevideo/img/10.jpg" width="370" height="268"></a>
			<a name="page3"><img alt="" src="/WOW/pagevideo/img/2.jpg" width="370" height="268"></a>
			<img alt="" src="/WOW/pagevideo/img/4.jpg" width="370" height="268">
			<img alt="" src="/WOW/pagevideo/img/6.jpg" width="370" height="268">
			<img alt="" src="/WOW/pagevideo/img/7.jpg" width="370" height="268">
			<img alt="" src="/WOW/pagevideo/img/3.jpg" width="370" height="268">
			<img alt="" src="/WOW/pagevideo/img/1.jpg" width="370" height="268">
		</div>
		<div id="page" >
			<a href="#page1" style=color:#FFF8DC;>上一页</a> 
			<a href="#page1" style=color:#FFF8DC;>1</a> 
			<a href="#page2" style=color:#FFF8DC;>2</a>
			<a href="#page3" style=color:#FFF8DC;>3</a>
			<a href="#page2" style=color:#FFF8DC;>下一页</a>
		</div>
	</div>
	<!-- 友情链接、版权 -->
	<div class="link">			  
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
			<div class="duty">
			   <p>板块负责人:杨帆 江世博</p>
			</div>
			<div class="law"></div>
			<div id="back"></div>
</body>
</html>