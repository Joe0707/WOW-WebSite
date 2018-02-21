
function log(){
	$(".remind").css("display","block");
}
$(function(){
	$(".remind .c1").click(function() {
		$(".remind").slideUp(1);
});
});
$(function(){
	$(".deng").click(function(){
		var b=confirm('确定登录?');
		if(b) {
			location.href = "";
		}
	});
});
