<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cdc</title>
</head>
<body>
	<form action="/casadocodigo/produtos" method="post">
		<div>
			<label>Titulo</label>
			<input type="text" name="titulo">
		</div>
		<div>
			<label>Descricao</label>
			<textarea rows="10" cols="20" name="descricao"></textarea>
		</div>
		<div>
			<label>Paginas</label>
			<input type="text" name="paginas">
		</div>
		<c:forEach items="${tipos }" var="tipoPreco" varStatus="status">	
		<div>
			<label>${tipoPreco }</label>
			<input type="text" name="precos[${status.index}].valor">
			<input type="hidden" name="precos[${status.index}].tipo" value="${tipoPreco }">
		</div>
		</c:forEach>
		
		<button type="submit">Cadastrar</button>
	</form>
</body>
</html>