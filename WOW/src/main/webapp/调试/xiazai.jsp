<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import = "UserDao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/WOW/download/xiazai.css" />
<link rel="stylesheet" href="/WOW/law/law.css" />
<link rel="stylesheet" href="/WOW/logo/logo.css" />
<style type="text/css">
body {
	background-color: #F3F3F3F;
}
</style>
<script src="/WOW/js/jquery-1.11.1.js"></script>
<%
	Object obj =session.getAttribute("checklogin");
	boolean bo = false;
	String account=null;
	if(obj!=null){
		bo = (Boolean)obj;
		}
	if(bo==true){
		UserInfo user = (UserInfo)session.getAttribute("user");
		account=user.getAccount();
	}
%>
<script>
function load(btn){
	//$(".down").css("display","none");
	var num = $(btn).next().html();
	location.href="load.do?account=<%=account%>&gold="+num;
	//location.href="/WOW/download/file/hello.docx";
}
function off(){
	$(".down").css("display","none");
}
function cl(btn){
	$(btn).parent().css("display","none");
}
$(function(){
	$("#dow a").click(function(){
	<%
	if(bo!=true){
	%>
	$(".remind").css("display","block");
	<%
	}else{
	%>
	var num = $(this).next().html();
	var div =$(
			'<div class="down">'
			+'<p>下载需要'+num+'个金币<br/>您确认要下载吗？</p>'
			+'<input type="button" value="确认" onclick="load(this);"/>'
			+'<p id="num">'+num+'</p>'
			+'<input type="button" value="取消" onclick="off();"/>'
		+'</div>'
			)
			$("body").append(div);
	$(".down").css("display","block");
	<%
	}
	%>
});
	<%
	Object reobj = session.getAttribute("reduce");
	if(reobj!=null){
		boolean rebo = (Boolean)reobj;
		System.out.println(rebo);
		if(rebo==true){
			%>
			location.href="/WOW/download/file/hello.docx";
			<%
		}else{
			%>
			$(".fail").css("display","block");
			<%
		}
	}
	%>
	})

</script>
<script src="/WOW/law/law.js"></script>
<script src="/WOW/logo/logo.js"></script>
<%	
	if(bo==true){
%>
<script src="/WOW/logo/logoin.js"></script>
<%
	}
%>
<script src="/WOW/download/xiazai.js"></script>
</head>
<body bgcolor="#3F3F3F">
	<!-- logo区 -->
	<div class="logo">
		<div class="tip">
			<div class="account">
				<span onclick="log();">登录</span> <span><a href="#">注册</a></span>
			</div>
			<img src="/WOW/download/img/team.png">
		</div>
		<!-- 横幅区 -->
		<div id="hengtiao">
			<h1>下载区:</h1>
		</div>
	</div>
	<div class="menu">
		</div>
	<div class="remind">
	</div>
	<!-- 下载区 -->
	<div id="xiazai">
		<form action="">
			<table id="biao3">
				<tr>
					<td width="36%" align="left"><a href=""><img
							src="/WOW/download/img/00.jpg" height="110px"></a></td>
					<td width="64%" align="left" valign="top"><p>
							<strong>Recount强大的战斗统计插件</strong>
						</p>
						<p>Recount是一款非常强大并且美观的战斗统计插件兼具了DM、SWS等老牌插件的优点，依托ACE2库的坚实后盾，并采用独门的波形图表分析和数据实时波段显示功能。</p>
						<p id="jb">
							下载本插件需金币:<b id="b1">5</b>
						</p>
						<div id="dow">
							<a>下载</a>
							<p  class ="goldcount">5</p>
							<div class="dow">
								<div class="c2">
									<input type="button" />
								</div>
								<p class="jin"></p>
								<p class="button2">
									<input type="button" value="确定" />&nbsp;&nbsp;&nbsp; <input
										type="button" value="取消" onclick="dow2();"/>
								</p>
							</div>
						</div></td>

				</tr>
				<tr>

					<td align="left"><a href=""><img src="/WOW/download/img/00.jpg"
							height="110px"></td>
					<td align="left"><p>
							<strong>Recount强大的战斗统计插件</strong>
						</p>
						<p>Recount是一款非常强大并且美观的战斗统计插件兼具了DM、SWS等老牌插件的优点，依托ACE2库的坚实后盾，并采用独门的波形图表分析和数据实时波段显示功能。</p>
						<p id="jb">
							下载本插件需金币:<b id="b1">5</b>
						</p>
						<div id="dow">
							<a>下载</a>
							<p  class ="goldcount">5</p>
						</div></td>
				</tr>
				<tr>

					<td align="left"><a href=""><img src="/WOW/download/img/00.jpg"
							height="110px"></td>
					<td align="left"><p>
							<strong>Recount强大的战斗统计插件</strong>
						</p>
						<p>Recount是一款非常强大并且美观的战斗统计插件兼具了DM、SWS等老牌插件的优点，依托ACE2库的坚实后盾，并采用独门的波形图表分析和数据实时波段显示功能。</p>
						<p id="jb">
							下载本插件需金币:<b id="b1">5</b>
						</p>
						<div id="dow">
							<a>下载</a>
							<p class ="goldcount">5</p>
						</div></td>
				</tr>
				<tr>

					<td align="left"><a href=""><img src="/WOW/download/img/00.jpg"
							height="110px"></td>
					<td align="left">
					<p>
							<strong>Recount强大的战斗统计插件</strong>
						</p>
						<p>Recount是一款非常强大并且美观的战斗统计插件兼具了DM、SWS等老牌插件的优点，依托ACE2库的坚实后盾，并采用独门的波形图表分析和数据实时波段显示功能。</p>
						<p id="jb">
							下载本插件需金币:<b id="b1">5</b>
						</p>
						<div id="dow" onclick="j(this);">
							<a>下载</a>
							<p class ="goldcount">5</p>
						</div></td>
				</tr>
				<tr>

					<td align="left"><a href=""><img src="/WOW/download/img/00.jpg"
							height="110px"></td>
					<td align="left"><p>
							<strong>Recount强大的战斗统计插件</strong>
						</p>
						<p>Recount是一款非常强大并且美观的战斗统计插件兼具了DM、SWS等老牌插件的优点，依托ACE2库的坚实后盾，并采用独门的波形图表分析和数据实时波段显示功能。</p>
						<p id="jb">
							下载本插件需金币:<b id="b1">5</b>
						</p>
						<div id="dow">
							<a>下载</a>
							<p  class ="goldcount">5</p>
						</div></td>
				</tr>
				<tr>

					<td align="left"><a href=""><img src="/WOW/download/img/00.jpg"
							width="119" height="91"></td>
					<td align="left"><p>
							<strong>Recount强大的战斗统计插件</strong>
						</p>
						<p>Recount是一款非常强大并且美观的战斗统计插件兼具了DM、SWS等老牌插件的优点，依托ACE2库的坚实后盾，并采用独门的波形图表分析和数据实时波段显示功能。</p>
						<p id="jb">
							下载本插件需金币:<b id="b1">8</b>
						</p>
						<div id="dow">
							<a>下载</a>
							<p class ="goldcount">8</p>
						</div></td>
				</tr>
				<tr>

					<td align="left"><a href=""><img src="/WOW/download/img/00.jpg"
							width="111" height="87"></td>
					<td align="left"><p>
							<strong>Recount强大的战斗统计插件</strong>
						</p>
						<p>Recount是一款非常强大并且美观的战斗统计插件兼具了DM、SWS等老牌插件的优点，依托ACE2库的坚实后盾，并采用独门的波形图表分析和数据实时波段显示功能。</p>
						<p id="jb">
							下载本插件需金币:<b id="b1">6</b>
						</p>
						<div id="dow">
							<a>下载</a>
							<p class ="goldcount">6</p>
						</div></td>
				</tr>
			</table>
		</form>
	</div>
	<!-- 
	<div class="down">
		<p>下载需要5个金币<br/>您确认要下载吗？</p>
		<input type="button" value="确认" onclick="load(this);"/>
		<input type="button" value="取消" onclick="off();"/>
	</div> -->
	<!-- 版权区 -->
	<div class="link">
	</div>
	<div class="law">
	</div>
	<div id="back">
	</div>
	<div class="duty">
			   <p>板块负责人:张通</p>
			</div>
	<div class="team">
	<div class="img01">
			      <img src="/WOW/news/img/baoxue.jpg">
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
	<div class="fail">
		<img src="/WOW/img/close.png" onclick="cl(this);"/>
		<p>金币不足，下载失败！</p>
	</div>
</body>
</html>