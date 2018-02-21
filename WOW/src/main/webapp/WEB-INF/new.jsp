<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@page import="back.entity.Xwen"%>
<%@page import="java.util.List"%>
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
<meta http-equiv="Content-Type" content="text/html; utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/WOW/logo/logo.css" />
<link rel="stylesheet" href="/WOW/law/law.css" />
<link rel="stylesheet" href="/WOW/text/WOW/UserPage/userpage.css" />

<style type="text/css">
.text {
	width: 100%;
	height: 100%;
	overflow:scroll;
}

.limenu p {
	color: #CFCFBF;
	margin: 10px;
	text-align: center;
}
.p1{
	width:400px;
}
.logoimg{
		width:1400px;
		height:700px;
		position:fixed;
		left:-20px;
		background:url("/WOW/img/logo.jpg") no-repeat center;
		z-index:-1;
	}
	body>.logo{
		border:0;
		
	}
</style>
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
<script src="/WOW/text/WOW/UserPage/userpage.js"></script>
</head>
<body>
	<audio src="/WOW/music/wowradio.mp3" autoplay="autoplay" loop="loop" hidden="true"></audio>
	<div class="logoimg"></div>
	<div class="logo">
		<div class="tip"></div>
		<div class="limenu">
			<p>${t.title}</p>
		</div>
	</div>
	<div class="menu"></div>
	<div class="remind"></div>
	<div class="accountinfo">
		<div class="text">${t.content}</div>
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
			   <p>板块负责人:刘文辉</p>
			</div>
			<div class="law"></div>
			<div id="back"></div>
</body>
</html>