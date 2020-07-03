<%@page import="java.util.List"%>
<%@page import="control.Pokemon"%>
<%@page import="control.Tipo" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>

<% Pokemon p = (Pokemon) request.getAttribute("pokemon"); %>
<% List<Tipo> fraquezas = (List<Tipo>) request.getAttribute("fraquezas"); %>
<% List<Tipo> resistencias = (List<Tipo>) request.getAttribute("resistencias");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<title>PokéQUIZ - <%p.getNome();%></title>
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
                    <div class="box-conteudo" id="lista-pokedex" >
                        <select name="id-pokemon" onChange="this.form.submit()" >
                            <option value="1">Bulbasaur</option>
                            <option value="2">Ivysaur</option>
                        </select>    
                    </div>
                    <div class="box-conteudo box-pokemon">
                        <img src="./lib/img/pokemon/001-Bulbasaur.png" alt="001-Bulbasaur" class="img-pokedex">
                    </div>
                    <div class="box-conteudo box-pokedex">
                        <h1><%p.getId();%> - <%p.getNome();%></h1><br>
                        <h3>Categoria: <%p.getCategoria(); %></h3><br>
                        <div class="tipo">
                            <img src="./lib/img/tipos/grass.png" class="tipo-img" alt="tipo1" title="Grass">
                            <img src="./lib/img/tipos/poison.png" class="tipo-img" alt="tipo2" title="Poison"><br>
                        </div>
                        <hr><br>
                        <p><b>Altura:</b> <%p.getAltura(); %> m <br><b>Peso:</b> <%p.getPeso(); %> kg</p>
                        <p><b>Descrição: </b><%p.getDescricao(); %></p>
                        <hr>
                       
                        <% if(!fraquezas.isEmpty()){
                        	out.print("<h4>Fraquezas</h4><br>");
                        	out.print("<div class=\"tipo\"> ");
                        	for(Tipo t:fraquezas){
                        		out.print("<img src=\"./lib/img/tipos/"+t+".png\" class=\"tipo-img\" alt=\"tipo1\" title=\""+t+"\">");	
                        	}
                        	out.print("<br></div><hr>");
                        }
                        %>                     
                        <% if(!resistencias.isEmpty()){
                        	out.print("<h4>Resistências</h4><br>");
                        	out.print("<div class=\"tipo\"> ");
                        	for(Tipo t:resistencias){
                        		out.print("<img src=\"./lib/img/tipos/"+t+".png\" class=\"tipo-img\" alt=\"tipo1\" title=\""+t+"\">");	
                        	}
                        	out.print("<br></div>");
                        }
                        %>     
                    </div>
                    <div class="clear"></div>
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