<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>ELibrairie</title>
        <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>

<body>
<h1>Votre chariot</h1>
	<table>
	<tr>
		<th>Quantité</th>
		<th>Description</th>
		<th>Prix</th>
		<th>montant</th>
		<th>Action</th>
	</tr>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:forEach var="item" items="${cart.items}">	
	<tr>
		<td>
			<form action="" method="post">
				<input type="hidden" name="codelivre"
				value="<c:out value='${item.livre.code}'/>">
				<input type=text name="quantite"
				value="<c:out value='${item.quantite}'/>" id="quantite">
				<input type="submit" value="Modifier">
			</form>
		</td>
		<td>
			<c:out value='${item.livre.titre}'/>
		</td>
		<td>${item.livre.prix} €</td>
		<td>${item.livre.prix*item.quantite} €</td>
		<td>
			<form action="" method="post">
				<input type="hidden" name="codelivre"
				value="<c:out value='${item.livre.code}'/>">
				<input type="hidden" name="quantite"
				value="0">
				<input type="submit" value="Supprimer">
			</form>
		</td>
	</tr>
	</c:forEach>
</table>
<p><b>pour changer la quantité</b>, entrez la nouvelle quantité
puis appuyer sur le bouton Modifier.</p>
<form action="" method="post">
	<input type="hidden" name="action" value="consultation">
	<input type="submit" value="Continuer vos achats">
</form>
<form action="" method="post">
	<input type="hidden" name="action" value="commander">
	<input type="submit" value="Commander/Payer">
</form>

</body>
</html>
