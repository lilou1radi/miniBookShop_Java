<%-- 
    Document   : index
    Created on : 27 mai 2020, 13:59:23
    Author     : ouma
--%>

<%@page import="java.util.*"%>
<%@page import="metier.Livre"%>
<%@page import="dao.DBLivre"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ELibrairie</title>
        <link rel="stylesheet" type="text/css" href="css/style.css"/>

    </head>
    <body>
        
       	<h1>Listes des livres</h1>
       	<table>
       		<tr>
       			<th>Description</th>
       			<th>Prix</th>
       			<th></th>
       		</tr>
                
                <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                <%           
                DBLivre DB=new DBLivre();
                List<Livre> listLivres=DB.getLivres();
                Iterator<Livre> listIterator=listLivres.iterator();
                
                while(listIterator.hasNext()){
                Livre L=listIterator.next();
                %>
       		<tr>
       			<td style="width: 400px;"><%=L.getTitre()%></td>
       			<td style="width: 100px;"><%=L.getPrix()%></td>
       			<td style="width: 200px;">
       				<form action="cart" method="post">
       				<input type="hidden" name="codelivre" value="<%=L.getCode()%>">
       				<input type="submit" value="Ajouter au chariot">
       				</form>
       			</td>
       		</tr>
                <%
                   }
                %>
       	</table>
    </body>
</html>
