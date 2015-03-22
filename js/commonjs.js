$(window).load(function(){
	$("#right_profile").hide();
	
	if($.cookie("loged")){
		$(".sidebar_right_bottom").hide();
		$("#right_profile").show();
		
		$("#right_name").html($.cookie("loged").split("/")[0]);
		$("#right_fname").html($.cookie("loged").split("/")[1]);
		$("#right_lname").html($.cookie("loged").split("/")[2]);
		if($.cookie("loged").split("/")[3]=="student"){
		
		}
	}
	else{
		$("#link_profile").hide();	
	}
	
	$("#logout").click(function(){
		$.removeCookie("loged");
		location.reload();	
	});
});
