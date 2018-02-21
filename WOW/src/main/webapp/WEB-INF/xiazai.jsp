<%@ page language="java" contentType="text/html; charset=utf-8"
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
.logo{
	height:700px;
	background:url(/WOW/download/img/503.jpg) #1F1F1F no-repeat center;
	margin:0 aoto;
	width:77%%;
}
p{
	font-size: 12px;
	margin: 10px 10px 10px 0;
	color: white;
	font-weight: bold;
}
.menu{
	height: 65px;
	width: 77%;
	margin-top: 15px;
	margin-left: 11.5%;
	position: absolute;
	background-color: #1F1F1F;
}
#hengtiao{
	width:77%;
	height:50px;
}
.logo #hengtiao h1 {
	height:50px;
	font-size:20px;
}
.goldcount{
	display:none;
}
#dow img{
	cursor:pointer;
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
	Object reobj = request.getAttribute("reduce");
	if(reobj!=null){
		boolean rebo = (Boolean)reobj;
		System.out.println(rebo);
		if(rebo==true){
			%>
			location.href="/WOW/download/file/Hello.doc";
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
<script src="/WOW/download/xiazai.js"></script>
<script src="/WOW/logo/logo.js"></script>
<%	
	if(bo==true){
%>
<script src="/WOW/logo/logoin.js"></script>
<%
	}
%>
</head>
<body bgcolor="#3F3F3F">
	<audio src="/WOW/music/wowradio.mp3" autoplay="autoplay" loop="loop" hidden="true"></audio>
	<!-- logo区 -->
	<div class="logo">
		<div class="tip">
			<div class="account"><span onclick="log();">登录</span><span><a href="#">注册</a></span>
			</div>
			<img src="../img/team.png">
		</div>
		<!-- 横幅区 -->
		<div id="hengtiao">
			<h1>下载区:</h1>
		</div>
	</div>
	<div class="menu">
		<img src="../img/logo.png" width="624" height="74" />
		<div class="search">
			<input type="text" value="请输入关键字" />
		</div>
		<div class="title">
			<span><a href="#">魔兽世界</a></span> <span><a href="#">新闻</a></span> <span><a
				href="#">视频</a></span> <span><a href="#">下载</a></span>
		</div>
	</div>
	<div class="remind">
		<div class="c1">
			<input type="button" />
		</div>
		<p class="login">
			<span>账号</span><input type="text" id="uname" placeholder="邮箱" />

		</p>
		<p class="login">
			<span>密码</span><input type="password" id="upwd" placeholder="密码" />

		</p>

		<p class="button">
			<input class="deng" type="button" value="登陆" /> <input type="reset"
				value="重置" />
		</p>
	</div>

	<!-- 下载区 -->
	<div id="xiazai">
		<form action="">

			<table id="biao3">
				<tr>

					<td width="36%" align="left" ><img src="/WOW/download/img/ui.png" width="306"
						height="108"></a></td>
					<td width="64%" align="left" valign="top"><p>
							<strong>163UI网易有爱新一代整合插件</strong>
						</p>
						<p>网易有爱（163UI）插件是由网易游戏频道官方推出的一款新一代整合插件。其设计理念是兼顾整合插件的易用性和单体插件的灵活性，同时适合普通和高级用户群体。
							Atlasloot装备物品掉落查询</p>
						<p id="jb">
							下载本插件需金币:<b>1</b>
						</p>
						<div id="dow">
							<a><img  src="/WOW/download/img/1.png"></a>
							<p class ="goldcount">1</p>
							<div class="dow">
								<div class="c2">
									<input type="button" />
								</div>
								<p class="jin"></p>
								<p class="button2">
									<input type="button" value="确定" />&nbsp;&nbsp;&nbsp; <input
										type="button" value="取消" onclick="dow2();" />
								</p>
							</div>
						</div></td>

				</tr>
				<tr>

					<td align="left"><img src="/WOW/download/img/atla.jpg" width="306" height="108"></td>
					<td align="left"><p>
							<strong>BOSS掉落物品查看插件</strong>
						</p>
						<p>Atlasloot
							Enhanced可以直观方便的在界面上显示外域和原大陆的各个副本BOSS的掉落，PvP荣誉装备，竞技场奖励套装和武器，各阵营声望奖励，可制造物品以及世界事件的奖励物品等，并可以把它链接出来发到聊天窗口。点击小地图上的图片进行查询。本插件包已包含所有AtlasLoot模块。</p>
						<p id="jb">
							下载本插件需金币:<b>10</b>
						</p>
						<div id="dow">
							<a><img  src="/WOW/download/img/1.png"></a>
							<p class ="goldcount">10</p>
						</div></td>
				</tr>
				<tr>

					<td align="left"><img src="/WOW/download/img/xp.jpg" width="306" height="108"></td>
					<td align="left"><p>
							<strong>XPerl强大的头像插件</strong>
						</p>
						<p>XPerl头像插件是在Perl的基础上精简优化代码并做了很大扩展的一个功能强大的玩家头像插件，并拥有很多扩展，点击小地图上的图标进行设置。</p>
						<p id="jb">
							下载本插件需金币:<b>2</b>
						</p>
						<div id="dow">
							<a><img  src="/WOW/download/img/1.png"></a>
							<p class ="goldcount">2</p>
						</div></td>
				</tr>
				<tr>

					<td align="left"><img src="/WOW/download/img/Qu.jpg" width="306" height="108"></td>
					<td align="left">
						<p>
							<strong>Quartz强大华丽的施法条插件</strong>
						</p>
						<p>Quartz是一个强大全面华丽的施法条插件. 基本涵盖所有施法条相关插件，此插件能根据你的网络延迟自动设置施法条的打断点，能监视自身，目标，焦点的施法条，根据施法目标距离不同显示不同颜色提醒等功能。插件设置命令："/quartz"。</p>
						<p id="jb">
							下载本插件需金币:<b>4</b>
						</p>
						<div id="dow" >
							<a><img  src="/WOW/download/img/1.png"></a>
							<p class ="goldcount">4</p>
						</div>
					</td>
				</tr>
				<tr>

					<td align="left"><img src="/WOW/download/img/tt.gif" width="306" height="108"></td>
					<td align="left"><p>
							<strong>雅黑粗体+Porky精美卡通字体</strong>
						</p>
						<p>雅黑粗体+Porky精美卡通字体，直接运行安装即可，效果见图。根据提示,把安装目录定义到World of Warcraft即可。本压缩包内为一EXE执行性文件，下载后推荐杀毒然后运行。</p>
						<p id="jb">
							下载本插件需金币:<b>7</b>
						</p>
						<div id="dow">
							<a><img  src="/WOW/download/img/1.png"></a>
							<p class ="goldcount">7</p>
						</div></td>
				</tr>
				<tr>

					<td align="left"><img src="/WOW/download/img/to.jpg" width="306"
						height="108"></td>
					<td align="left"><p>
							<strong>Pitbull4头像美化增强插件</strong>
						</p>
						<p>Pitbull4是一款强大的头像增强美化插件，提供强大的自定义功能，制作出任何你所喜欢的头像界面显示效果。
</p>
						<p id="jb">
							下载本插件需金币:<b>8</b>
						</p>
						<div id="dow">
							<a><img  src="/WOW/download/img/1.png"></a>
							<p class ="goldcount">8</p>
						</div></td>
				</tr>
				<tr>

					<td height="128" align="left"><img src="/WOW/download/img/bu.jpg" width="305"
						height="108"></td>
					<td align="left"><p>
							<strong>Buff超酷显示插件PowerAuras</strong>
						</p>
						<p>PowerAuras以更直观的方式显示你获取的buff,debuff和许多其它效果。Buff和Debuff自身显示存在不足之处，此插件可以让他们显示在屏幕中央或者环绕着你的角色。
Combuctor背包分类管理插件</p>
						<p id="jb">
							下载本插件需金币:<b>6</b>
						</p>
						<div id="dow">
							<a><img  src="/WOW/download/img/1.png"></a>
							<p class ="goldcount">6</p>
						</div></td>
				</tr>
			</table>
		</form>
	</div>
	<!-- 版权区 -->
	<div class=link>
	</div>
	<div class="team">
			   <div class="img01">
			      <img src="/WOW/img/teamlogo.png">
			   </div>			   
			   <div class="p1">
			      <p>XXX团队版权所有 由TarenaTJ运营 著作权侵权 新出审字：[2014]XXXX号<br/>
文网进字[2014]XXX号 沪网文[2014]XXX1-1XX1号 增值电信业务经营许可证编号：TJB2－20080XXX<br/>
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
			   <p>板块负责人:张通</p>
			</div>
	<div class="law">
	</div>
	<div id="back">
	</div>
	<div class="fail">
		<img src="/WOW/img/close.png" onclick="cl(this);"/>
		<p>金币不足，下载失败！</p>
	</div>
</body>
</html>