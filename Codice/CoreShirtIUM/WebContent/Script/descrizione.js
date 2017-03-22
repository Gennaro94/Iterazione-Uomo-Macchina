$(document).ready(function() {
		$(".dettagliS").click(function(){
			   var k=this.getAttribute("id");
			   $("#descrizione").text(k);
			   $("#popup1").show();
			   $("#veil1").fadeIn();
			   });
		$(".chiudi").click(function(){
				$("#popup1").hide();
				$("#veil1").fadeOut();
 				});
});