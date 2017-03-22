<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="UTF-8"%>
    <%
  Boolean adminRoles = (Boolean) session.getAttribute("Magazzino");
  Object aggiunto=request.getAttribute("aggiunto");
  if ((adminRoles == null) || (!adminRoles.booleanValue()))
    {	
     response.sendRedirect("./Management");
     return;
    }
%>
 <%@page import="java.util.*,model.Dipendente,control.manage.ManageDipendente,control.manage.DbConnect" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" lang="it">
<head>
    <script src="Script/jquery.js"></script>
    <script src="Script/loadmore.js"></script>
    <script src="Script/prodotto.js"></script>
    <link rel="icon" href="./Immagini/sprite0.png" />
    <link rel="stylesheet" href="./CSS/baseMagazzino.css" type="text/css">
    <link rel="stylesheet" href="./CSS/home.css" type="text/css">
    <link rel="stylesheet" href="./CSS/InserisciDipendente.css" type="text/css">
    <link rel="stylesheet" href="./CSS/InserisciProdotto.css" type="text/css">
    <link rel="stylesheet" href="./CSS/thumbnails.css" type="text/css">
    <link rel="stylesheet" href="./CSS/Checkout.css" type="text/css">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="Content-Language" content="it-IT" />
    <meta name="description" content="Il miglior sito dove acquistare T-Shirt  per qualsiasi gusto e necessità, con un'ampia scelta di modelli aggiornati periodicamente con i migliori design della rete." />
    <meta name="keywords" content="T-shirt, magliette, maglietta, nerd, cinema, divertenti, geek, core, series, best" />
    <title>Core Shirt: The Best T-Shirts series</title>
    <script type="text/javascript">
    $(document).ready(function(){
    	$("#form").hide();
    	$("#nuovo").click(function(){
    		$("#nuovo").hide();
    		$("#pezzi").hide();
    		$("#form").show();
    	})
    	$("#pezzi").click(function(){
    		location.href="./ModificaQuantita.jsp"
    	})
    })
    </script>
    <script>
       $(document).ready(function() {
    	   $("#popup").hide();
    	   $("#chiudi").click(function(){
   			$("#popup").hide();
   			$("#veil").fadeOut();
   				});
    	   $("#icate").click(function(){
    		   $("#info").text("seleziona la categoria");
    		   $("#popup").show();
      			$("#veil").fadeIn();
    	   })
    	   $("#isesso").click(function(){
    		   $("#info").text("seleziona il sesso");
    		   $("#popup").show();
      			$("#veil").fadeIn();
    	   })
    	   $("#inome").click(function(){
    		   $("#info").text("nome");
    		   $("#popup").show();
      			$("#veil").fadeIn();
    	   })
    	   $("#iprezzo").click(function(){
    		   $("#info").text("prezzo");
    		   $("#popup").show();
      			$("#veil").fadeIn();
    	   })
    	   $("#icolore").click(function(){
    		   $("#info").text("colore");
    		   $("#popup").show();
      			$("#veil").fadeIn();
    	   })
    	   $("#itaglia").click(function(){
    		   $("#info").text("taglia");
    		   $("#popup").show();
      			$("#veil").fadeIn();
    	   })
    	   $("#iqu").click(function(){
    		   $("#info").text("quantita'");
    		   $("#popup").show();
      			$("#veil").fadeIn();
    	   })
    	   $("#iant1").click(function(){
    		   $("#info").text("anteprima 1");
    		   $("#popup").show();
      			$("#veil").fadeIn();
    	   })
    	   $("#iant2").click(function(){
    		   $("#info").text("anteprima 2");
    		   $("#popup").show();
      			$("#veil").fadeIn();
    	   })
    	   $("#pagina").click(function(){
    		   $("#info").text("Ti trovi nella pagina in cui inserire i dipendenti");
    		   $("#popup").show();
      			$("#veil").fadeIn();
    	   })
		});
	</script>
</head>
<body>
<div>     
    <article id="articolo" >
		<script src="checkForm.js"></script>

<%!/*
ManageDipendente md=new ManageDipendente();
ArrayList<Dipendente> dipendenti=md.getDipendenti(); */
%>

<article>
<div id="wrapper">
    <article id="articolo1">
    
    <a href="./"><div id="banner"> <img class="Banner" src="Immagini/prova.png"> 
          <img class="core" src="Immagini/core2.png"></div></a>
 
     </article>
       </div>
        
    <article id="ArticleInserisciDipendente">
    <div id="Amministrazione">
          Area Magazzino
    </div>
      <div>
    <nav>    
            <ul id="Lista">
            <li><a href="./HomeMagazzino.jsp">Home</a> </li>
            <li><a href="./InserisciProdotto.jsp">Inserisci Prodotti</a></li>
            <li><a href="./RimuoviProdotto.jsp">Rimuovi Prodotti</a> </li>
            <li><a href="./EvadiOrdine.jsp">Evadi Ordini</a></li>
            <li><a href="./ModificaQuantita.jsp">Modifica Quantità</a></li>   
            <li><a href="./RifornimentoProdotto.jsp">Rifornimento Prodotti</a></li>
 
        </ul>
    </nav>
    </div>

<div id="sezione">
<img src="./Immagini/InfoPagine.jpg" id="pagina" style="margin-left:-1220px; margin-bottom:-50px;"> 
<div id="sezione2"> Inserisci Prodotto </div></div>
<%@include file="info.jsp" %>
<div id="all">
<img  src="Immagini/New.png">         <div id="nuovo">Inserisci Nuovo Prodotto</div>
<img  src="Immagini/Modifica.png">    <div id="pezzi">Modifica Quantità Prodotto</div>
</div>

<div id="form">
 <div id="InserisciProdotto"> <img  src="Immagini/New.png"> Inserisci nuovo prodotto</div> 
<form name="InsertArticolo" method="post" enctype="multipart/form-data" action="ServletInsertArticolo" onsubmit="return prodotto()">
			Nome
			<input id="nome" type="text" name="insertNome"/><img src="./Immagini/Info.jpg" id="inome"><br>
			Categoria
			<select name="insertCategoria">
                             <option value="Cinema">Cinema</option>
                             <option value="Geek">Geek</option>
                             <option value="Divertenti">Divertenti</option>
                             <option value="Manga">Anime e Manga</option>
                             <option value="Comics">Comics</option>
                             <option value="Nerd">Nerd</option>
                           </select><img src="./Immagini/Info.jpg" id="icate"><br>
            Seleziona Sesso
   			<select id="sesso" name="sesso">
		       <option value="M">Uomo</option>
		       <option value="F">Donna</option>
   			</select><img src="./Immagini/Info.jpg" id="isesso"> 
   			<br>
			Prezzo
			<input id="prezzo" type="text" name="insertPrezzo"/><img src="./Immagini/Info.jpg" id="iprezzo"><br>
		   Seleziona Colore
			<select id="colore" name="colore">
		       <option value="black">Nero</option>
		       <option value="grey">Grigio</option>
		       <option value="white">Bianco</option>
		       <option value="green">Verde</option>
		       <option value="orange">Arancio</option>
		       <option value="red">Rosso</option>
		       <option value="purple">Viola</option>
		       <option value="blue">Blu</option>
		   </select><img src="./Immagini/Info.jpg" id="icolore"><br>
		   Seleziona Taglia
			<select id="taglia" name="taglia">
		       <option value="S">S</option>
		       <option value="M">M</option>
		       <option value="L">L</option>
		       <option value="XL">XL</option>
		       <option value="XXL">XXL</option>
		       <option value="3XL">3XL</option>
		       <option value="4XL">4XL</option>
		       <option value="5XL">5XL</option>
		   </select><img src="./Immagini/Info.jpg" id="itaglia"><br>
			Quantità
			<input id="quantita" type="text" name="insertQuantita"/><img src="./Immagini/Info.jpg" id="iqu"><br>
			Immagine
			<input type="file" name="upfile" placeholder="Nome file" required></input>
			<img src="./Immagini/Info.jpg" id="iant1"><br>
			Anteprima
			<input type="file" name="anteprima" placeholder="Nome file" required></input>
			<img src="./Immagini/Info.jpg" id="iant2"><br><button id="submit" type="submit" onclick="ServletInsertArticolo" onsubmit="return prodotto()">Inserisci</button>
		</form>
</div>

<br>
</article>
</article>
</article>
</div>


        <footer>
        <div class="container">
		<div class="row">
			<div class="col1">
				<h2>I più venduti</h2>
				<div class="menu-container">
                    <ul>
                        <li><a href="./?action=uomo">T-Shirt Uomo</a></li>
                        <li><a href="./?action=donna">T-Shirt Donna</a></li>
                    </ul>
                </div>			
            </div>
			<div class="col1">
				<h2>Info</h2>
					<div class="menu-container">
                    <ul>
                        <li><a href="./About">About</a></li>
                        <li><a href="./About">Contattaci</a></li>
                        <li><a href="./Help">Guida alle taglie</a></li>
                        <li><a href="./Help">Tariffe Spedizione</a></li>
                    </ul>
                </div>			
            </div>
			<div class="col1">
				<h2>Segui</h2>
				<div class="menu-container">
                    <ul>
                        <li><a target="_blank" href="https://www.facebook.com/">Facebook</a></li>
                        <li><a target="_blank" href="https://twitter.com/">Twitter</a></li>
                        <li><a target="_blank" href="https://www.tumblr.com/">Tumblr</a></li>
                    </ul>
                </div>			
            </div>
			<div class="col2">
				<div class="CreditCard">
				<img src="Immagini/CreditCard.png">
					<div class="text">
						<p>
						© 2016 Core Shirt S.R.L | P. IVA 01594368721<br>
						All designs copyright by owner.<br>
						<a href="">Privacy Policy</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
    </footer>
</body>
</html>