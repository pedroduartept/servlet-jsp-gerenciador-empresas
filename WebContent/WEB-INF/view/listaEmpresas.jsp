<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, br.com.alura.gerenciador.modelo.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Banco Pedro Duarte</title>
</head>
<body>

	Usuario Logado: ${usuarioLogado.login }<br>

	<c:if test="${not empty empresa}">
		Empresa ${ empresa } cadastrada com sucesso!
	</c:if>
	
	Lista de empresas: <br />
	<br>
	Realizar Login<br />
	<a href="/gerenciador-servlet/entrada?acao=LoginForm">Entrar</a><br>
	<br>
	<a href="/gerenciador-servlet/entrada?acao=AdicionaEmpresaForm">Adicionar Nova Empresa</a><br>
	
	<ul>
		<c:forEach items="${empresas}" var="empresa">
			
			<li>
				${empresa.nome } - <fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy"/> 
				<a href="/gerenciador-servlet/entrada?acao=MostraEmpresa&id=${empresa.id }">edita</a>
				<a href="/gerenciador-servlet/entrada?acao=RemoveEmpresa&id=${empresa.id }">remove</a>
			</li>
		</c:forEach>
	</ul>
	<br />
	
	<c:import url="logout-parcial.jsp"/>
	
</body>
</html>



