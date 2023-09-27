<%@page contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<%@taglib uri="http://jakarta.apache.org/struts/tags-template"
	prefix="template"%>
<template:insert template="../templatemp.jsp">
	<template:put name="cabecalhomp" content="cabecalhomp.jsp" />
	<template:put name="cabecalho2" content="cabecalho2.jsp" />
	<template:put name="menu" content="menu.jsp" />
	<template:put name="ribbon" content="ribbon.jsp" />
	<template:put name="footermp" content="footermp.jsp" />
	<template:put name="conteudo" direct="true">
 <style type="text/css">
.table > :not(caption) > * > * {
  border-bottom-width: 0px;
}
</style>       
		<!-- BEGIN #content -->
		<div id="content" class="app-content">
			<!-- BEGIN breadcrumb -->
			<ol class="breadcrumb float-xl-end">
				<li class="breadcrumb-item"><a
					href="${pageContext.request.contextPath}/MenuPrincipal">Home</a></li>
				<li class="breadcrumb-item active">Menu Configurações</li>
			</ol>
			<!-- BEGIN page-header -->
			<h1 class="page-header"><i class="fas fa-fw me-10px fa-cog fa-fw"></i>&nbsp;MENU CONFIGURAÇÕES &nbsp;<a href="javascript:;"
					onclick="javascript:document.location.href = '${pageContext.request.contextPath}/MenuPrincipal'"
					class="btn btn-sm btn-white mb-10px"><i
					class="fa fa-angles-left t-plus-1 fa-fw fa-lg"></i> VOLTAR</a>
			</h1>
			<!-- END page-header -->
			
			<h2 >EMPRESAS</h2>
			<div class="table-responsive">
				<table class="table table-condensed">
					<thead>
						<tr>
							<th width="33%"><i
								class="fas fa-lg fa-fw me-10px fa-book-open-reader"></i>
								ATUALIZAÇÕES</th>
						</tr>
					</thead>
					<tbody>
						<tr class="bg-light">
							<td class="p-0">
								<table class="table table-condensed m-0 bg-none">
									<tbody>
										<tr>
											<td nowrap><a href="${pageContext.request.contextPath}/EmpresaListar" class="btn btn-outline-inverse" onclick="document.getElementById('carregando').style.display='';">CADASTROS</a></td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			
		</div>
        <script language="javascript">
            $(document).ready(function () {
                $('#menuconfiguracoesgestor').toggleClass('active');
            });
        </script>
	</template:put>
</template:insert>