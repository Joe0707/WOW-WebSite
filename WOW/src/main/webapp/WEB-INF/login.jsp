<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.util.*"%>
<!DOCTYPE html>
<%	
    	Object obj =session.getAttribute("checklogin");
    	boolean bo =false;
    if(obj!=null){
    	bo = (Boolean)obj;
    }
    %>
<html>
<head lang="en">
<meta charset="UTF-8">
<link rel="stylesheet" href="/WOW/login/bootstrap.min.css" />
<title>魔兽世界注册</title>
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
<script type="text/javascript" >
$(function(){
	/*
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
	)*/
	})
</script>
<script type="text/javascript">
$(function(){
	/*
	$(".link").html(
			'<span>友情链接：</span>'
	)
	$(".law").html(
			'<p>版权所有，翻版必究</p>'
			)
	$("#back").html(
			'<p><a href="#">顶部</a></p>'
	);
	*/
})
</script>
<style>
body{
	background-color:#092f3f;
}
.main {
	position: relative;
}

.bg-video {
	position: absolute;
	z-index: -1;
	width: 100%;
}

.box {
	width: 600px;
	min-height: 400px;
	background: rgba(255, 255, 255, .7);
	border-radius: 5px;
	margin: 100px auto;
	padding: 1.5em;
}

#loginbutton {
	text-decoration: none;
}

.ok {
	color: green;
	width:260px;
}

.no {
	color: red;
	width:260px;
}

body #rem input{
	width:150px;
	height:35px;
	margin:0;
}
body #rem .button input{
	margin:0 20px 0 30px;
	height:35px;
	width:50px;
}

	.link{
		width:1170px;
	}
	.law{
		width:1170px;
	}
	.team{
		width:1170px;
	}
	.duty{
		width:1170px;
	}
	.logoimg{
		width:1400px;
		height:700px;
		position:fixed;
		left:-20px;
		background:url("/WOW/img/logo.jpg") no-repeat center;
		z-index:-1;
	}
	.form-group{
	}
	#container{
		background-color:#CFC7CB;
	}
	
.account input{
	color:black;
}
#pwd{
	color:black;
}
.login input{
	color:black;
}
.button input{
	color:black;
}
.help-block{
	width:260px;
}
.regsuccess{
	width:300px;
	height:120px;
	background-color:white;
	position:fixed;
	left:500px;
	top:300px;
	display:none;
	z-index:70;
	}
	.regsuccess p{
	margin-top:30px;
		color:red;
		text-align:center;
	}
	.regsuccess img{
		float:right;
		margin:10px;
	}
	.required{
		color:red;
	}
	body>.logo{
		border:0;
	}
</style>
<link rel="stylesheet" href="/WOW/logo/logo.css">
<link rel="stylesheet" href="/WOW/law/law.css">
<script type="text/javascript">
var usernames = new Array();
<%
	List<String> list = null;
	Object aob = request.getAttribute("list");
	if(aob!=null){
		list = (List<String>)aob;
		for(String str:list){
			%>
			usernames.push('<%=str%>');
			<%
		}
	}
%>

$(function(){
	<%
	Object object = request.getAttribute("reg");
String string = "";
	if(object!=null){
	string = (String)object;
%>
	$(".regsuccess").css("display","block");
	setTimeout(function(){
		location.href="/WOW/main.do";
	},3000)
<%
}
%>
})
function off(){
	console.log(1);
	$(".regsuccess").css("display","none");
}
	function Dsy() {
		this.Items = {};
	}
	Dsy.prototype.add = function(id, iArray) {
		this.Items[id] = iArray;
	}
	Dsy.prototype.Exists = function(id) {
		if (typeof (this.Items[id]) == "undefined")
			return false;
		return true;
	}
	function change(v) {
		var str = "0";
		for (i = 0; i < v; i++) {
			str += ("_" + (document.getElementById(s[i]).selectedIndex - 1));
		}
		;
		var ss = document.getElementById(s[v]);
		with (ss) {
			length = 0;
			options[0] = new Option(opt0[v], opt0[v]);
			if (v && document.getElementById(s[v - 1]).selectedIndex > 0 || !v) {
				if (dsy.Exists(str)) {
					ar = dsy.Items[str];
					for (i = 0; i < ar.length; i++)
						options[length] = new Option(ar[i], ar[i]);
					if (v)
						options[1].selected = true;
				}
			}
			if (++v < s.length) {
				change(v);
			}
		}
		console.log($("#s2").attr("value"));
	}
	var dsy = new Dsy();
	 dsy.add("0",["北京市","天津市","河北省","山西省","内蒙古","辽宁省","吉林省","黑龙江省","上海市","江苏省","浙江省","安徽省","福建省","江西省","山东省","河南省","湖北省","湖南省","广东省","广西自治区","海南省"," 重庆市","四川省","贵州省","云南省","西藏自治区","陕西省","甘肃省","青海省","宁夏回族自治区","新疆维吾尔自治区","香港特别行政区","澳门特别行政区","台湾省","其它"]); 
	    dsy.add("0_0",["东城区","西城区","崇文区","宣武区","朝阳区","丰台区","石景山区"," 海淀区（中关村）","门头沟区","房山区","通州区","顺义区","昌平区","大兴区","怀柔区","平谷区","密云县","延庆县"," 其他"]); 
	    dsy.add("0_1",["和平区","河东区","河西区","南开区","红桥区","塘沽区","汉沽区","大港区","西青区","津南区","武清区","蓟县","宁河县","静海县","其他"]); 
	    dsy.add("0_2",["石家庄市","张家口市","承德市","秦皇岛市","唐山市","廊坊市","衡水市","沧州市","邢台市","邯郸市","保定市","其他"]); 
	    dsy.add("0_3",["太原市","朔州市","大同市","长治市","晋城市","忻州市","晋中市","临汾市","吕梁市","运城市","其他"]); 
	    dsy.add("0_4",["呼和浩特市","包头市","赤峰市","呼伦贝尔市","鄂尔多斯市","乌兰察布市","巴彦淖尔市","兴安盟","阿拉善盟","锡林郭勒盟","其他"]); 
	    dsy.add("0_5",["沈阳市","朝阳市","阜新市","铁岭市","抚顺市","丹东市","本溪市","辽阳市","鞍山市","大连市","营口市","盘锦市","锦州市","葫芦岛市","其他"]); 
	    dsy.add("0_6",["长春市","白城市","吉林市","四平市","辽源市","通化市","白山市","延边朝鲜族自治州","其他"]); 
	    dsy.add("0_7",["哈尔滨市","七台河市","黑河市","大庆市","齐齐哈尔市","伊春市","佳木斯市","双鸭山市","鸡西市","大兴安岭地区(加格达奇)","牡丹江","鹤岗市","绥化市 ","其他"]); 
	    dsy.add("0_8",["黄浦区","卢湾区","徐汇区","长宁区","静安区","普陀区","闸北区","虹口区","杨浦区","闵行区","宝山区","嘉定区","浦东新区","金山区","松江区","青浦区","南汇区","奉贤区","崇明县","其他"]); 
	    dsy.add("0_9",["南京市","徐州市","连云港市","宿迁市","淮安市","盐城市","扬州市","泰州市","南通市","镇江市","常州市","无锡市","苏州市","其他"]); 
	    dsy.add("0_10",["杭州市","湖州市","嘉兴市","舟山市","宁波市","绍兴市","衢州市","金华市","台州市","温州市","丽水市","其他"]); 
	    dsy.add("0_11",["合肥市","宿州市","淮北市","亳州市","阜阳市","蚌埠市","淮南市","滁州市","马鞍山市","芜湖市","铜陵市","安庆市","黄山市","六安市","巢湖市","池州市","宣城市","其他"]); 
	    dsy.add("0_12",["福州市","南平市","莆田市","三明市","泉州市","厦门市","漳州市","龙岩市","宁德市","其他"]); 
	    dsy.add("0_13",["南昌市","九江市","景德镇市","鹰潭市","新余市","萍乡市","赣州市","上饶市","抚州市","宜春市","吉安市","其他"]); 
	    dsy.add("0_14",["济南市","聊城市","德州市","东营市","淄博市","潍坊市","烟台市","威海市","青岛市","日照市","临沂市","枣庄市","济宁市","泰安市","莱芜市","滨州市","菏泽市","其他"]); 
	    dsy.add("0_15",["郑州市","三门峡市","洛阳市","焦作市","新乡市","鹤壁市","安阳市","濮阳市","开封市","商丘市","许昌市","漯河市","平顶山市","南阳市","信阳市","周口市","驻马店市","其他"]); 
	    dsy.add("0_16",["武汉市","十堰市","襄樊市","荆门市","孝感市","黄冈市","鄂州市","黄石市","咸宁市","荆州市","宜昌市","随州市","恩施土家族苗族自治州","仙桃市","天门市","潜江市","神农架林区","其他"]); 
	    dsy.add("0_17",["长沙市","张家界市","常德市","益阳市","岳阳市","株洲市","湘潭市","衡阳市","郴州市","永州市","邵阳市","怀化市","娄底市","湘西土家族苗族自治州","其他"]); 
	    dsy.add("0_18",["广州市","清远市市","韶关市","河源市","梅州市","潮州市","汕头市","揭阳市","汕尾市"," 惠州市","东莞市","深圳市","珠海市","中山市","江门市","佛山市","肇庆市","云浮市","阳江市","茂名市","湛江市"," 其他"]); 
	    dsy.add("0_19",["南宁市","桂林市","柳州市","梧州市","贵港市","玉林市","钦州市","北海市","防城港市","崇左市","百色市","河池市","来宾市","贺州市","其他"]); 
	    dsy.add("0_20",["海口市","三亚市","其他"]); 
	    dsy.add("0_21",["渝中区","大渡口区","江北区","沙坪坝区","九龙坡区","南岸区","北碚区","万盛区","双桥区","渝北区","巴南区","万州区","涪陵区","黔江区","长寿区","合川市","永川市","江津市","南川市","綦江县","潼南县","铜梁县","大足县","璧山县","垫江县","武隆县","丰都县","城口县","开县","巫溪县","巫山县","奉节县","云阳县","忠县","石柱土家族自治县","彭水苗族土家族自治县","酉阳土家族苗族自治县","秀山土家族苗族自治县","其他"]); 
	    dsy.add("0_22",["成都市","广元市","绵阳市","德阳市","南充市","广安市","遂宁市","内江市","乐山市","自贡市","泸州市","宜宾市","攀枝花市","巴中市","资阳市","眉山市","雅安","阿坝藏族羌族自治州","甘孜藏族自治州","凉山彝族自治州县","其他"]); 
	    dsy.add("0_23",["贵阳市","六盘水市","遵义市","安顺市","毕节地区","铜仁地区","黔东南苗族侗族自治州","黔南布依族苗族自治州","黔西南布依族苗族自治州","其他"]); 
	    dsy.add("0_24",["昆明市","曲靖市","玉溪市","保山市","昭通市","丽江市","普洱市","临沧市","宁德市","德宏傣族景颇族自治州","怒江僳僳族自治州","楚雄彝族自治州","红河哈尼族彝族自治州","文山壮族苗族自治州","大理白族自治州","迪庆藏族自治州","西双版纳傣族自治州","其他"]); 
	    dsy.add("0_25",["拉萨市","那曲地区","昌都地区","林芝地区","山南地区","日喀则地区","阿里地区","其他"]); 
	    dsy.add("0_26",["西安市","延安市","铜川市","渭南市","咸阳市","宝鸡市","汉中市","安康市","商洛市","其他"]); 
	    dsy.add("0_27",["兰州市 ","嘉峪关市","金昌市","白银市","天水市","武威市","酒泉市","张掖市","庆阳市","平凉市","定西市","陇南市","临夏回族自治州","甘南藏族自治州","其他"]); 
	    dsy.add("0_28",["西宁市","海东地区","海北藏族自治州","黄南藏族自治州","玉树藏族自治州","海南藏族自治州","果洛藏族自治州","海西蒙古族藏族自治州","其他"]); 
	    dsy.add("0_29",["银川市","石嘴山市","吴忠市","固原市","中卫市","其他"]); 
	    dsy.add("0_30",["乌鲁木齐市","克拉玛依市","喀什地区","阿克苏地区","和田地区","吐鲁番地区","哈密地区","塔城地区","阿勒泰地区","克孜勒苏柯尔克孜自治州","博尔塔拉蒙古自治州","昌吉回族自治州 伊犁哈萨克自治州","巴音郭楞蒙古自治州","河子市","阿拉尔市","五家渠市","图木舒克市","其他"]); 
	    dsy.add("0_31",["香港","其他"]); 
	    dsy.add("0_31",["澳门","其他"]) 
	    dsy.add("0_32",["台湾","其他"]) 
	    //--> 
	    var s=["s1","s2"]; 
	    var opt0 = ["请选择","请选择"]; 

	
	function setup() {
		for (i = 0; i < s.length - 1; i++)
			document.getElementById(s[i]).onchange = new Function("change("
					+ (i + 1) + ")");
		change(0);
	}
</script>
<script type="text/javascript">
	function checkCode() {
		var code = document.getElementById("name").value;
		var span = document.getElementById("code_msg");
		var reg = /^\w{6,15}$/;
		if (reg.test(code)) {
			console.log(code);
			for(var i = 0 ;i<usernames.length;i++){
				console.log(usernames[i]);
				console.log(code==usernames[i]);
				if(code==usernames[i]){
					span.className = "no";
					$("#code_msg").html('用户名已存在');
					return false;
				}
			}
			$("#code_msg").html('包含数字或字母,长度6-15位');
			span.className = "ok";
			return true;
		} else {
			$("#code_msg").html('包含数字或字母,长度6-15位');
			span.className = "no";
			return false;
		}
	}
	function checkPwd() {
		var pwd = document.getElementById("txtPassword").value;
		var span = document.getElementById("pwd_msg");
		var reg = /^\w{6,15}$/;
		if (reg.test(pwd)) {
			span.className = "ok";
			return true;
		} else {
			span.className = "no";
			return false;
		}
	}
	function off(){
		console.log(1);
		$(".regsuccess").css("display","none");
	}
</script>
<script type="text/javascript">
$(function(){
	$("#txtRepeatPass").blur(function(){
	$("#password1_info").text("");
	if($("#txtPassword").val() != $("#txtRepeatPass").val()){
	$("#password1_info").text("两次输入的密码不一致");
	}
	});
	});
</script>
</head>
<body>
	<audio src="/WOW/music/wowradio.mp3" autoplay="autoplay" loop="loop" hidden="true"></audio>
	
	<div class="regsuccess">
		<img id="toff"src="/WOW/img/close.png" onclick="off();"/>
		<p><%=string %></p>
	</div>
	<div class="logoimg"></div>
	<div class="logo">
		<div class="tip"></div>


	</div>
	<div class="menu"></div>
	<div id="rem"class="remind"></div>
	<!--å¤´é¨-->
	<div class="container" style="background-color: #AF978B;">
		<h3 style="text-align: center;">注册</h3>
	</div>
	<!--ä¸»ä½-->
	<div id="container"class="container main">
		<div class="box"
			style="border: 0px; background: rgba(0, 0, 0, 0); margin-bottom: 15px;">
			<form class="form-horizontal" action="add.do" method="post"
				onsubmit="return checkCode()+checkPwd()==2;">
				<div class="form-group">
					<div class="col-sm-2">
						<label class="control-label" for="uname">账号</label>
					</div>
					<div class="col-sm-5">
						<input class="form-control" id="name" placeholder="请输入您的用户名"
							name="account" onblur="checkCode();">
					</div>
					<div class="col-sm-5">
						<span class="help-block" id="code_msg">包含数字或字母,长度6-15位</span>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2">
						<label class="control-label" for="upwd">密码</label>
					</div>
					<div class="col-sm-5">
						<input type="password" class="form-control" id="txtPassword"
							name="password" placeholder="请输入您的密码" onblur="checkPwd();">
					</div>
					<div class="col-sm-5">
						<span class="help-block" id="pwd_msg">密码长度在6~12位之间</span>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2">
						<label class="control-label" for="upwd">确认密码</label>
					</div>
					<div class="col-sm-5">
						<input type="password" class="form-control" id="txtRepeatPass"
							placeholder="请输入确认密码">
					</div>
					<div class="col-sm-5">
						<span class="help-block" id="password1_info" style="color: red;"></span>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2">
						<label class="control-label" for="upwd">昵称</label>
					</div>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="upwd" name="nickname"
							placeholder="请输入您的昵称">
					</div>
					<div class="col-sm-5">
						<span class="help-block">禁止出现包含政治色情相关字眼</span>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2">
						<label class="control-label" for="upwd">性别</label>
					</div>
					<div class="col-sm-5">
						<label for="male">女</label> <input type="radio" name="gender"
							value="male" /> <label for="female">男</label> <input
							type="radio" name="gender" value="female" />


					</div>

				</div>
				<div class="form-group">
					<div class="col-sm-2">
						<label class="control-label" for="upwd">年龄</label>
					</div>
					<div class="col-sm-5">
						<input type="number" min="18" class="form-control" id="upwd"
							name="age" placeholder="未成年禁止注册进入">
					</div>
					<div class="col-sm-5">
						<span class="help-block"><a href="#">欢迎点击哦</a></span>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2">
						<label class="control-label" for="upwd">所在地</label>
					</div>
					<div class="col-sm-5">
						<select name="location" id="s1"><option></option>
						</select> <select name="city" id="s2">
							<option></option>
						</select>
						<SCRIPT language="javascript">
							setup()
						</SCRIPT>
					</div>

				</div>
				<div class="form-group">
					<div class="col-sm-2">
						<label class="control-label" for="upwd">验证码</label>
					</div>
					<div class="col-sm-5">
						<tr>
							<td class="width70"><input name="imgcode" type="text"
								class="width70" /></td>
							<td><img src="createImg.do"
								onclick="this.setAttribute('src','createImg.do?x='+Math.random());"
								alt="验证码" title="点击更换" /></td>
							<td><span class="required"><%
								Object objc = request.getAttribute("wrongcode");
								if(objc!=null){
									String str = (String)objc;
									out.println(str);
								}%>
							</span></td>
						</tr>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-5 col-sm-offset-2">
						<input id="bt-login" class="btn btn-success btn-block"
							type="submit" value="注册" /> <input id="bt-login"
							class="btn btn-success btn-block" type="reset" value="重置" />

					</div>
				</div>
			</form>
		</div>
	</div>
	<!--å°¾é¨-->
	<div class="link"></div>
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
			   <p>板块负责人:张海澄</p>
			</div>
	<div class="law"></div>
	<div id="back"></div>
</body>
</html>