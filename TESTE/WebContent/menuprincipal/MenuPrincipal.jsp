<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=iso-8859-1"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-template"
	prefix="template"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<template:insert template="../templatemp.jsp">
	<template:put name="cabecalhomp" content="cabecalhomp.jsp" />
	<template:put name="cabecalho2" content="cabecalho2.jsp" />
	<template:put name="menu" content="menu.jsp" />
	<template:put name="ribbon" content="ribbon.jsp" />
	<template:put name="footer" content="footer.jsp" />
	<template:put name="conteudo" direct="true">
		<!-- BEGIN #content -->
		<div id="content" class="app-content">
			<!-- BEGIN breadcrumb -->
			<ol class="breadcrumb float-xl-end">
				<li class="breadcrumb-item"><a
					href="${pageContext.request.contextPath}/MenuPrincipal">Home</a></li>
			</ol>
			<!-- END breadcrumb -->
			<!-- BEGIN page-header -->
			<h1 class="page-header">
				<b> SISTEMA DE CONTROLE DE TAREFAS </b>  <small> </small>
			</h1>
			<c:if test="${CNPJ ne '40.868.038/0001-03'}">
				<div class="row">
					Aplicação para atender teste de conhecimento.
				</div>
			</c:if>
		</div>
		<!-- END #content -->
		<form name="mudaExe" method="POST"
			action="${pageContext.request.contextPath}/MenuPrincipal">
			<input name="EXERCICIO" style="text-transform: uppercase;"
				type="hidden" size="4" /> <input name="CNPJ"
				style="text-transform: uppercase;" type="hidden" size="14" />
		</form>
		<form name="mudaCli" method="POST"
			action="${pageContext.request.contextPath}/MenuPrincipal">
			<input name="EXERCICIO" style="text-transform: uppercase;"
				type="hidden" size="4" /> <input name="CNPJ"
				style="text-transform: uppercase;" type="hidden" size="14" />
		</form>
		</SCRIPT>
		<script language="javascript">
			$(document).ready(function() {
				$('#menu-principal').toggleClass('active');
			});
		</script>

	</template:put>
	<template:put name="footermp" content="footermp.jsp" />
</template:insert>