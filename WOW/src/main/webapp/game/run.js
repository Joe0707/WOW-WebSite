var state = 0;
$(function(){
	var div = $('<div class="state"></div>');
	$(".outline").append(div);
	paintstate();
	
	
	
})
function Hero(){
	this.score = 0;
	this.div=$('<div class="hero")></div>');
	this.x=0;
	this.y=parseInt($(".main").height())-80;
	this.div.css("top",this.y+"px");
	this.div.css("left",this.x+"px");
	$(".main").append(this.div);
	this.width=$(".hero").width();
	this.height=$(".hero").height();
	this.left=false;
	this.right=false;
	this.hit=function(hinder){
		var xbo = (this.x>(hinder.x-this.width))&&(this.x<(hinder.x+hinder.width));
		var ybo = (this.y>(hinder.y-this.height))&&(this.y<(hinder.y+hinder.height));
		if(xbo&&ybo){
			return true;
		}else{
			return false;
		}
	}
}
function Hinder(){
	this.div = $('<div class="hinder")></div>');
	this.x=110*(parseInt(Math.random()*5));
	this.y=0;
	this.div.css("top",this.y+"px");
	this.div.css("left",this.x+"px");
	$(".main").append(this.div);
	this.width=$(".hinder").width();
	this.height=$(".hinder").height();
	//this.div[0].style.top=this.y+"px";
	//this.div[0].style.left=this.x+"px";
	this.speed=2;
	this.step=function(){
		this.y+=this.speed;
	}
	this.hit=function(){
		return true;
	}
	this.out=function(){
		if(this.y>=parseInt($(".main").height())){
			return true;
		}
		return false;
	}
}
function Food(){
	this.div = $('<div class="food")></div>');
	this.x=110*(parseInt(Math.random()*5));
	this.y=0;
	$(".main").append(this.div);
	this.div.css("top",this.y+"px");
	this.div.css("left",this.x+"px");
	console.log(this.div);
	this.width=$(".food").width();
	this.height=$(".food").height();
	//this.div[0].style.top=this.y+"px";
	//this.div[0].style.left=this.x+"px";
	this.speed=2;
	this.step=function(){
		this.y+=this.speed;
	}
	this.hit=function(){
		return true;
	}
	this.out=function(){
		if(this.y>=parseInt($(".main").height())){
			return true;
		}
		return false;
	}
}
function Position(){
	this.y=0;
	this.x=60*(parseInt(Math.random()*12));
}
var id =null;
function Game(){
	this.foods=new Array();
	this.enemy=new Array();
	this.hero = new Hero();
	this.step=function(){
		/*var hinders = $(".hinder");
		for(var i = 0;i<hinders.length;i++){
			var hindertop=hinders[i].style.top;
			var hindery = parseInt(hindertop.replace("px",""));
			hindery = hindery+hinderspeed;
			hinders[i].style.top=hindery+"px";*/
		for(var i = 0;i<this.enemy.length;i++){
			this.enemy[i].step();
		}
		for(var i = 0;i<this.foods.length;i++){
			this.foods[i].step();
		}
		}
	var enterindex=1;
	this.enter=function(){
		if(enterindex%40==0){
		var hinder = new Hinder();
		this.enemy.push(hinder);
		}
		//this.paintone(hinder);
		if(enterindex%50==0){
		var food = new Food();
		this.foods.push(food);
		}
		enterindex++;
	};
	this.paintone=function(hinder){
		//var hinderone = $('<div class="hinder")></div>');
		//var x = hinder.x;
		//var y = hinder.y;
		hinder.div.css("top",hinder.y+"px");
		hinder.div.css("left",hinder.x+"px");
		$(".main").append(hinder.div);
	}
	//this.paint=function(){
	//	var hinders = $(".hinder");
	//	for(var i = 0;i<hinders.length;i++){
	//		hinders[i].style.top=this.enemy[i].y+"px";
	//	}
	//}
	this.paint=function(){
		for(var i = 0;i<this.enemy.length;i++){
			var hinder = this.enemy[i];
			hinder.div.css("top",hinder.y+"px");
			hinder.div.css("left",hinder.x+"px");
		//var x = this.enemy[i].x;
		//var y = this.enemy[i].y;
		//hinderone.css("top",y+"px");
		//hinderone.css("left",x+"px");
		//$(".main").append(hinderone);
		}
		for(var i = 0;i<this.foods.length;i++){
			var food = this.foods[i];
			food.div.css("top",food.y+"px");
			food.div.css("left",food.x+"px");
		}
		this.hero.div.css("top",this.hero.y+"px");
		this.hero.div.css("left",this.hero.x+"px");
		$(".score p").html("您的得分是"+this.hero.score);
		
	}
	this.remo=function(){
		for(var i = 0;i<this.enemy.length;i++){
			var hinder = this.enemy[i];
			if(hinder.out()){
				hinder.div.remove();
				this.enemy.splice(i,1);
			}
		}
		for(var i = 0;i<this.foods.length;i++){
			var food = this.foods[i];
			if(food.out()){
				food.div.remove();
				this.foods.splice(i,1);
			}
		}
	}
	this.bang = function(){
		for( var i = 0;i<this.enemy.length;i++){
			var h = this.enemy[i];
			if(this.hero.hit(h)){
				state=3;
				var p =$('<p class="gold">您将得到'+parseInt(this.hero.score/10)+'的金币<br/>您接受结果还是重新来过？</p>');
				var input=$('<form action="record.do?gold='+parseInt(this.hero.score/10)+'"><input name="gold" value="'+parseInt(this.hero.score/10)+'"/><input class="accept" type="submit" value="接受结果"/></form><input class="again" type="button" value="重新来过" onclick="replay();"/>');
				$(".outline").append(p);
				$(".outline").append(input);
			}
		}
		for( var i = 0;i<this.foods.length;i++){
			var food = this.foods[i];
			if(this.hero.hit(food)){
				this.hero.score+=5;
				food.div.remove();
				this.foods.splice(i,1);
			}
		}
	}
	this.move=function(){
		if(this.hero.left&&this.hero.x>0){
			
			this.hero.x-=5;
		}
		if(this.hero.right&&this.hero.x<parseInt($(".main").width())-60){
			this.hero.x+=5;
		}
		
	}
}
function main(){
	state=1;
	if(id!=null){
		return;
	}
	var game = new Game();
	$(document).keydown(function(event){
		if(event.keyCode==37){
				game.hero.left=true;
				//this.style.left-=5;
		}
		if(event.keyCode==39){
				game.hero.right=true;
		}
	})
	$(document).keyup(function(event){
		if(event.keyCode==37){
				game.hero.left=false;
				//this.style.left-=5;
		}
		if(event.keyCode==39){
				game.hero.right=false;
		}
	})
	var index = 0;
	id=setInterval(function(){
		if(state==1){
		game.enter();
		game.bang();
		game.step();
		game.remo();
		game.paint();
		game.move();
		index++;
		}
		paintstate();
	},10);
		}
function s(){
	state=2;
}
//function con(){
	
	//};
function paintstate(){
	if(state==1){
		$(".state").css("background-image","url(/WOW/img/run.png)");
	}
	if(state==0){
		$(".state").css("background-image","url(/WOW/img/start.png)")
	}
	if(state==2){
		$(".state").css("background-image","url(/WOW/img/pause.png)")
	}
	if(state==3){
		$(".state").css("background-image","url(/WOW/img/gameover.png)")
	}
}
function replay(){
	state=0;
	clearInterval(id);
	id=null;
	$(".main").html('');
	$(".gold").remove();
	$(".accept").remove();
	$(".again").remove();
	paintstate();
}
function turnoff(){
	$(".outline").css("display","none");
}
