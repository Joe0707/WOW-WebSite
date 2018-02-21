/*
 window.onload=function(){
	var index=4;
	setInterval(function(){
		if(index%4==0){
			change1();
		}
		if((index-1)%4==0){
			change2();
		}
		if((index-2)%4==0){
			change3();
		}
		if((index-3)%4==0){
			change4();
		}
		index++;
	},2000);
}
function change1(){
	var img = document.getElementById("mimg");
	img.src="../img/f1.jpg";
}
function change2(){
	var img = document.getElementById("mimg");
	img.src="../img/f2.jpg";
}
function change3(){
	var img = document.getElementById("mimg");
	img.src="../img/f3.jpg";
}
function change4(){
	var img = document.getElementById("mimg");
	img.src="../img/f4.jpg";
}
*/
console.log(screen.availHeight);
console.log(screen.availWidth);
/*
function log(){
	$(".remind").css("display","block");
}
*/
function news(){
	$("#images").children().eq(0).children().eq(0).html('<img src="/WOW/img/news1.jpg" />');
	$("#images").children().eq(1).children().eq(0).html('<img src="/WOW/img/news2.jpg" />');
	$("#images").children().eq(2).children().eq(0).html('<img src="/WOW/img/news3.jpg" />');
	$("#images").children().eq(3).children().eq(0).html('<img src="/WOW/img/news4.jpg" />');
	$("#images").children().eq(0).children().eq(1).html(
			'<p class="datetext">'
			+'2017-6-7'
			+'</p>'
			+'<p class="content">'
			+'2017VGL暴雪游戏音乐会<br/>'
			+'北京站6月开启预定'
			+'</p>'
			+'<p class="loc">/WOW/text.do?param=1</p>');
	$("#images").children().eq(1).children().eq(1).html(
			'<p class="datetext">'
			+'2017-6-7'
			+'</p>'
			+'<p class="content">'
			+'魔兽世纪职业坐骑攻略<br/>'
			+'盗贼怎么潜入主城'
			+'</p>'
			+'<p class="loc">/WOW/text.do?param=3</p>');
	$("#images").children().eq(2).children().eq(1).html(
			'<p class="datetext">'
			+'2017-6-7'
			+'</p>'
			+'<p class="content">'
			+'集合石活动<br/>'
			+'部落PVP乱斗南海镇VS塔伦米尔'
			+'</p>'
			+'<p class="loc">/WOW/text.do?param=4</p>');
	$("#images").children().eq(3).children().eq(1).html(
			'<p class="datetext">'
			+'2017-6-7'
			+'</p>'
			+'<p class="content">'
			+'国服在线修正<br/>'
			+'抗魔联军任务难度已下降'
			+'</p>'
			+'<p class="loc">/WOW/text.do?param=5</p>')
}
function picture(){
	$("#images").children().eq(0).children().eq(0).html('<img src="/WOW/img/news5.jpg" />');
	$("#images").children().eq(1).children().eq(0).html('<img src="/WOW/img/news6.jpg" />');
	$("#images").children().eq(2).children().eq(0).html('<img src="/WOW/img/news7.jpg" />');
	$("#images").children().eq(3).children().eq(0).html('<img src="/WOW/img/news8.jpg" />');
	$("#images").children().eq(0).children().eq(1).html(
			'<p class="datetext">'
			+'2017-6-7'
			+'</p>'
			+'<p class="content">'
			+'魔兽世界7.2.5职业坐骑上线<br/>'
			+'一起傲然前行'
			+'</p>'
			+'<p class="loc">/WOW/text.do?param=2</p>');
	$("#images").children().eq(1).children().eq(1).html(
			'<p class="datetext">'
			+'2017-6-7'
			+'</p>'
			+'<p class="content">'
			+'7.25PTR职业改动上线<br/>'
			+'萨满将成版本之子'
			+'</p>'
			+'<p class="loc">/WOW/text.do?param=6</p>');
	$("#images").children().eq(2).children().eq(1).html(
			'<p class="datetext">'
			+'2017-6-7'
			+'</p>'
			+'<p class="content">'
			+'修正破碎群岛典范成就'
			+'</p>'
			+'<p class="loc">/WOW/main.do</p>');
	$("#images").children().eq(3).children().eq(1).html(
			'<p class="datetext">'
			+'2017-6-7'
			+'</p>'
			+'<p class="content">'
			+'全球直面化身公会达10家'
			+'</p>'
			+'<p class="loc">/WOW/main.do</p>')
}
function textup(li){
	var div=li.getElementsByTagName("div")[1];
	div.className="infotextup";
}
function textdown(li){
	var div = li.getElementsByTagName("div")[1];
	div.className="infotext";
}

function choose(){
	var loc = $(this).children().eq(1).children(".loc").html();
	location.href=loc;
}

//var id;
//var index=0;
//function move(){
//	var imgs = $(this).children("img");
//	console.log(imgs);
//	$(this).children("p").addClass("on");
//	console.log($(this).children("p"));
//	id = setInterval(function(){
//			imgs.addClass("hide");
//			imgs.eq(index%4).removeClass("hide");
//			console.log(index);
//			index++;
//	},200);
//}
//function change(){
//	var b =$(this).children("p").hasClass("on");
//	if(b){
//	clearInterval(id);
//	index=0;
//	$(this).children("p").removeClass("on");
//	}
//}
function ck(){
	var text = $(this).next().text();
	location.href=text;
}
$(function(){
	//var ul = document.getElementById("images");
	$("#images").children().eq(0).children().eq(0).html('<img src="/WOW/img/news1.jpg" />');
	$("#images").children().eq(1).children().eq(0).html('<img src="/WOW/img/news2.jpg" />');
	$("#images").children().eq(2).children().eq(0).html('<img src="/WOW/img/news3.jpg" />');
	$("#images").children().eq(3).children().eq(0).html('<img src="/WOW/img/news4.jpg" />');
	$("#images").children().eq(0).children().eq(1).html(
			'<p class="datetext">'
			+'2017-6-7'
			+'</p>'
			+'<p class="content">'
			+'2017VGL暴雪游戏音乐会<br/>'
			+'北京站6月开启预定'
			+'</p>'
			+'<p class="loc">/WOW/text.do?param=1</p>');
	$("#images").children().eq(1).children().eq(1).html(
			'<p class="datetext">'
			+'2017-6-7'
			+'</p>'
			+'<p class="content">'
			+'魔兽世纪职业坐骑攻略<br/>'
			+'盗贼怎么潜入主城'
			+'</p>'
			+'<p class="loc">/WOW/text.do?param=3</p>');
	$("#images").children().eq(2).children().eq(1).html(
			'<p class="datetext">'
			+'2017-6-7'
			+'</p>'
			+'<p class="content">'
			+'集合石活动<br/>'
			+'部落PVP乱斗南海镇VS塔伦米尔'
			+'</p>'
			+'<p class="loc">/WOW/text.do?param=4</p>');
	$("#images").children().eq(3).children().eq(1).html(
			'<p class="datetext">'
			+'2017-6-7'
			+'</p>'
			+'<p class="content">'
			+'国服在线修正<br/>'
			+'抗魔联军任务难度已下降'
			+'</p>'
			+'<p class="loc">/WOW/text.do?param=5</p>')
			$("#images li").click(choose);
	//for(var i = 1;i<4;i++){
		//$(".door img").addClass("hide");
		//for(var i = 0;i<4;i++){
			//$(".door li").eq(i).children("img").eq(0).removeClass("hide");
		//}
	//}
	//$(".door li").mouseover(move);
	//$(".door li").mouseout(change);
	$(".door li img").click(ck);
});
	//var lis = ul.getElementsByTagName("li");
	//var div1 = lis[0].getElementsByTagName("div")[0];
	//div1.innerHTML='<a href="#"><img src="../img/info小号.jpg" /></a>';
	//var div2 = lis[1].getElementsByTagName("div")[0];
	//div2.innerHTML='<a href="#"><img src="../img/info小号.jpg" /></a>';
	//var div3 = lis[2].getElementsByTagName("div")[0];
	//div3.innerHTML='<a href="#"><img src="../img/info小号.jpg" /></a>';
	//var div4 = lis[3].getElementsByTagName("div")[0];
	//div4.innerHTML='<a href="#"><img src="../img/info小号.jpg" /></a>';
	







