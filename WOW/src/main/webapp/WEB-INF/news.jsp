<%@page contentType="text/html; charset=utf-8"
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
<link rel="stylesheet" href="/WOW/news/news.css">
<link rel="stylesheet" href="/WOW/news/news1.css">
<link rel="stylesheet" href="/WOW/law/law.css">
<link rel="stylesheet" href="/WOW/logo/logo.css">
<link rel="stylesheet" type="text/css" href="/WOW/news/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="/WOW/news/css/demo.css" />
<link rel="stylesheet" type="text/css" href="/WOW/news/css/gallery.css" />
<script src="/WOW/news/js/edit.js"></script>
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

<script src="/WOW/news/js/TweenMax.min.js"></script>
<script src="/WOW/news/js/jquery.min.js"></script>

<script src="/WOW/news/js/gallery.js"></script>
</head>
<body>
	<audio src="/WOW/music/wowradio.mp3" autoplay="autoplay" loop="loop" hidden="true"></audio>
	<div class="logo">
		<div class="tip"></div>
        <div class="menu"></div>
		
			
				
				
						<div class="gallery">
							<ul class="gallery-pictures">
								<li class="gallery-picture"><a href="#"><img src="/WOW/news/img/001.jpg"
									alt="img01"></a></li>
								<li class="gallery-picture"><a href="#"><img src="/WOW/news/img/002.jpg"
									alt="img02"></a></li>
								<li class="gallery-picture"><a href="#"><img src="/WOW/news/img/003.jpg"
									alt="img03"></a></li>
								<li class="gallery-picture"><a href="#"><img src="/WOW/news/img/004.jpg"
									alt="img04"></a></li>
								<li class="gallery-picture"><a href="#"><img src="/WOW/news/img/005.jpg"
									alt="img05"></a></li>
							</ul>
							<div class="gallery-pagination">
								<button class="gallery-pagination-dot"></button>
								<button class="gallery-pagination-dot"></button>
								<button class="gallery-pagination-dot"></button>
								<button class="gallery-pagination-dot"></button>
								<button class="gallery-pagination-dot"></button>

							</div>

						</div>
						<script src="/WOW/news/js/gallery.js"></script>

                                        
						<svg xmlns="http://www.w3.org/2000/svg" version="1.1"
							class="filters hidden">
	<defs>
	  <filter id="blur">
		  <feGaussianBlur in="SourceGraphic" stdDeviation="0,0"></feGaussianBlur>
	  </filter>
	</defs>
</svg>
					
				
			
     
			
			<div class="remind"></div>
 </div>
			<div class="edit">
				<div id="tab">
					<ul>
						<li class="on" >综合新闻</li>
						<li class="off">官方公告</li>
						<li class="off">赛事新闻</li>
						<li class="off">论坛资讯</li>
						
					</ul>
					<div id="firstPage" class="show">
						
						   <p>[新闻] <a href="/WOW/text.do?param=1">2017VGL暴雪游戏音乐会北京站6月开启预定</a></p>
						   <p>[公告] <a href="/WOW/text.do?param=2">魔兽世界7.2.5职业坐骑上线 一起傲然前行</a></p>
						   <p>[论坛] <a href="/WOW/text.do?param=3">魔兽世纪职业坐骑攻略 盗贼怎么潜入主城</a></p>
						   <p>[赛事] <a href="/WOW/text.do?param=4">集合石活动 部落PVP乱斗南海镇VS塔伦米尔 </a></p>
						   <p>[论坛] <a href="/WOW/text.do?param=5">国服在线修正 抗魔联军任务难度已下降</a></p>
						   <p>[新闻] <a href="/WOW/text.do?param=6">7.25PTR职业改动上线 萨满将成版本之子</a></p>
						

					</div>
					<div id="secondPage" class="hide">
					
					       <p>[公告] <a href="/WOW/text.do?param=2">魔兽世界7.2.5职业坐骑上线 一起傲然前行</a></p>
						

					</div>
					<div id="thirdPage" class="hide">
                           <p>[赛事] <a href="/WOW/text.do?param=4">集合石活动 部落PVP乱斗南海镇VS塔伦米尔 </a></p>
						

					</div>
					<div id="fourthPage" class="hide">
						<p>[论坛] <a href="/WOW/text.do?param=3">魔兽世纪职业坐骑攻略 盗贼怎么潜入主城</a></p>
						<p>[论坛] <a href="/WOW/text.do?param=5">国服在线修正 抗魔联军任务难度已下降</a></p>
					</div>
					
				</div>


			</div>
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
			   <p>板块负责人:高宏建</p>
			</div>
			<div class="law"></div>
			<div id="back"></div>
</body>
</html>