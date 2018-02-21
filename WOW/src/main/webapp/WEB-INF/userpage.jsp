<%@page contentType="text/html;charset=utf-8"
    pageEncoding="utf-8" import="UserDao.*"%>
<!DOCTYPE html>
 <%
 	Object obj =session.getAttribute("checklogin");
	boolean bo =false;
	if(obj==null){
		response.sendRedirect("/WOW/main.do");
		return;
	}
	if(obj!=null){
		bo = (Boolean)obj;
}
    %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/WOW/logo/logo.css"/>
<link rel="stylesheet" href="/WOW/law/law.css"/>
<link rel="stylesheet" href="/WOW/UserPage/userpage.css"/>
<link rel="stylesheet" href="/WOW/game/run.css"/>
<style>
.logoimg{
		width:1400px;
		height:700px;
		position:fixed;
		left:-20px;
		background:url("/WOW/img/logo.jpg") no-repeat center;
		z-index:-1;
	}
</style>
<%
	UserInfo user = (UserInfo)session.getAttribute("user");
	String account = user.getAccount();
	String nickname = user.getNickname();
	String gender = user.getGender();
	String loc = user.getLocation();
	String city = user.getCity();
	int gold = user.getGold();
	int age = user.getAge();
%>
<script>
	var account = '<%=account%>';
	var nickname = '<%=nickname%>';
	var gender = '<%=gender%>';
	var loc = '<%=loc%>';
	var gold = '<%=gold%>';
	var age='<%=age%>';
	var cityvalue = '<%=city%>';
	function show(){
		<%
		Integer count = (Integer)request.getAttribute("gamecount");
		if(count>0){
		%>
		$(".outline").css("display","block");
		<%}%>
	}
	var count= '<%=count%>'
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
<script src="/WOW/UserPage/userpage.js"></script>
<script src="/WOW/game/run.js"></script>
</head>
<body>
	<audio src="/WOW/music/wowradio.mp3" autoplay="autoplay" loop="loop" hidden="true"></audio>
	<div class="logoimg"></div>
	<div class="logo">
	<div class="tip">
	</div>
	<div class="limenu" >
		<p>用户信息</p>
	</div>
	</div>
	<div class="menu">
	</div>
	<div class="remind">
	</div>
	<div class="accountinfo">
	<div class="text">
	</div>
	<div class="list">
		<div class="person">
			<p onclick="showperson();">个人信息</p>
		</div>
		<div class="duty1">
			<p onclick = "showduty();">任务中心</p>
		</div>
	</div>
	</div>
	<%
	Integer signgold = (Integer)request.getAttribute("signgold");
		String str = (String)request.getAttribute("signfailed");
		if(str!=null){
			String content = "随机获得"+signgold+"的金币";
			if(signgold==0){
				content="";
			}
	%>	
	<div class="success" >
			<img src="/WOW/img/close.png" onclick="cl(this);"/>
			<p><%=str %><br/>
			<%=content %>
			</p>
		</div>
			<%
		}
			%>
	<div class="link"></div>
	<div class="law"></div>
	<div id="back"></div>
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
			   <p>板块负责人:焦春雨</p>
			</div>
	<div class="outline">
	<div class="score">
		<p>
			您的得分是0
		</p>
	</div>
	<div class="control">
		<input type="button" value="开始游戏" onclick="main();"/>
		<br/>
		<input type="button" value="暂停" onclick="s();"/>
		<br/>
		<input type="button" value="退出" onclick="turnoff();"/>
	</div>
	<div class="main">
	<!-- <div class="hero"></div> -->
	</div>
	
	</div>
</body>
</html>