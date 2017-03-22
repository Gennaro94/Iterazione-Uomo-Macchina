<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="Script/jquery.js"></script>
    <script src="Script/loadmore.js"></script>
<link rel="stylesheet" href="CSS/baseIUM.css" type="text/css">
<link rel="stylesheet" href="CSS/login.css" type="text/css">
<link rel="stylesheet" href="CSS/PopUp.css" type="text/css">
<link rel="stylesheet" href="CSS/thumbnails.css" type="text/css">
   
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login form</title>
<script>
$(document).ready(function() {
	$("#popup").hide();
	   $("#chiudi").click(function(){
		$("#popup").hide();
		$("#veil").fadeOut();
			});

	   $("#pagina").click(function(){
		   $("#info").text("Ti trovi nella Home Page iniziale dove in base alle tue credenziali accederai nelle tua area!");
		   $("#popup").show();
  			$("#veil").fadeIn();
	   })
	});
</script>
</head>
<body>
    <div id="wrapper">
     
    <article id="articolo1"> </article>
      <div id="lista">
    <a href="./"> 
    <div id="banner"> 
    <img class="Banner" src="Immagini/prova.png"> 
     <img class="core" src="Immagini/core2.png"></a>
              
        </div>
    </div>
    
<div class="login" >
    
    <%@include file="info.jsp" %>
   
    
  <form action="Login" method="post" class="login"> 
<fieldset class="login_fieldset">
     <legend>Login</legend>
      <img src="./Immagini/InfoPagine.jpg" id="pagina" >
     <label for="username">Inserisci Il nome Utente     <img src="Immagini/LoginUtente 1.png" ></label>
     <input id="username" type="text" name="username" placeholder="enter login"> 
     <br>   
     <label for="password">        Inserisci la Password           <img src="Immagini/LoginUtente2.png" ></label>
     <input id="password" type="password" name="password" placeholder="enter password"> 
     <br>
     <input class="burton" type="submit" value="Login"/>
     <input class="burton" type="reset" value="Reset"/>
</fieldset>
 
</form> 
</div>

</body>
</html>