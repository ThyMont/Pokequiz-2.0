<%@page import="java.util.List"%>
<%@page import="control.Pokemon"%>
<%@page import="control.Tipo" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
    
<%List<Pokemon> lista = (List<Pokemon>) request.getAttribute("lista-pokemon"); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Pokédex</title>
		<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="lib/css/estilo.css">
	</head>
	<body>
		<div id="background">
        <header>
            <div id="menu" class="container">
                <ul>
                    <li><a href="index.html" class="primeiro">Home</a></li>
                    <li><a href="National-dex">Pokédex</a></li>
                    <li><a href="quiz.html">Quiz</a></li>
                    <li><a href="ranking.html">Ranking</a></li>
                    <li><a href="treinador.html">Treinador</a></li>
                    <li><a href="administrador.html">Administrador</a></li>
                </ul>
            </div>
        </header>
        <div id="separador-menu">
        </div>
        <div id="conteudo">
            <div class="container">
                <!--Início do conteúdo da página-->
                <form action="pokemon">
	                <div class="box-conteudo box-pokedex">
	                	<% for(Pokemon p:lista){
	                		//out.print("<input type=\"hidden\" name=\"id-pokemon\" value=\""+p.getId()+">");
	                		String visto = "class=\"nao-visto\"";
	                	   out.print("<div class=\"item-pokedex tipo1-"+p.getTipo1()+" tipo2-"+p.getTipo2()+"\">");
	                	   out.print("<a href=\"Pokemon/"+p.getNome()+"\"><img "+ visto+" src=\"./lib/img/pokemon/"+ p.getDex_number().replace("#","")+p.getNome()+".png\" alt=\""+p.getNome()+"\"><br>"+ p.getDex_number()+" - "+p.getNome()+"</a></div>");
	                	}
	                	out.print("<div class=\"clear\"></div>");
	              		%>              	
	              
	                </div>
	
	                
				</form>
                <!--Fim do conteúdo da página-->
            </div>
        </div>
        <footer>
            <p>Desenvolvido por <a href="http://github.com/thymont">ThyMont</a> - 2020</p>
        </footer>
    </div>		
	</body>
</html>