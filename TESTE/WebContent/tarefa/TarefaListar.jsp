<%@page contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://jakarta.apache.org/struts/tags-template"
	prefix="template"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<template:insert template="../templatetabela.jsp">
	<template:put name="cabecalhotabela" content="cabecalhotabela.jsp" />
	<template:put name="cabecalho2" content="cabecalho2.jsp" />
	<template:put name="menu" content="menu.jsp" />
	<template:put name="ribbon" content="ribbon.jsp" />
	<template:put name="footermp" content="footermp.jsp" />
	<template:put name="conteudo" direct="true">
		<script language="javascript">
			function excluiRegistro(id) {
				var retornoSwal = swal({
					title : 'ATENÇÃO ${NAME}',
					text : 'DESEJA REALMENTE EXCLUIR TAREFA ' + id + ' ?',
					icon : 'warning',
					buttons : {
						cancel : {
							text : 'CANCELAR',
							value : null,
							visible : true,
							className : 'btn btn-default',
							closeModal : true,
						},
						confirm : {
							text : 'EXCLUIR',
							value : true,
							visible : true,
							className : 'btn btn-danger',
							closeModal : true

						}
					}
				});
				retornoSwal.then(function(value) {
					if (value == true) {
						document.frmExcluiRegistro.id.value = id;
						document.frmExcluiRegistro.submit();
					}
				});
			}
			function alteraRegistro(id) {
				document.frmAlteraRegistro.id.value = id;
				document.frmAlteraRegistro.submit();
			}

			function ImpressaoPDF(tipo) {
				document.frmImpressaoPDF.tipo.value = tipo;
				document.frmImpressaoPDF.submit();
			}
		</script>
		<!-- Main content -->
		<!-- BEGIN #content -->

		
		<div id="content" class="app-content">
			<!-- BEGIN breadcrumb -->
			<ol class="breadcrumb float-xl-end">
				<li class="breadcrumb-item"><a
					href="${pageContext.request.contextPath}/MenuPrincipal">Home</a></li>
				<li class="breadcrumb-item active">Cadastro de Tarefas</li>
			</ol>
			<!-- END breadcrumb -->
			<!-- BEGIN page-header -->
			<h1 class="page-header">
				TAREFAS&nbsp;
				<button type="button" class="btn btn-sm btn-green me-1 mb-10px"
					onclick="javascript:document.location.href = '${pageContext.request.contextPath}/TarefaCarregaInclusao'">NOVO</button>
				&nbsp; <a href="javascript:ImpressaoPDF('pdf');"
					class="btn btn-sm btn-white mb-10px"><i
					class="fa fa-file-pdf t-plus-1 text-danger fa-fw fa-lg"></i><font
					style="vertical-align: inherit;"><font
						style="vertical-align: inherit;">Exportar como PDF</font></font></a> &nbsp; <a
					href="javascript:;"
					onclick="javascript:document.location.href = '${pageContext.request.contextPath}/MenuPrincipal'"
					class="btn btn-sm btn-white mb-10px"><i
					class="fa fa-angles-left t-plus-1 fa-fw fa-lg"></i> VOLTAR</a>
			</h1>
			<!-- END page-header -->
			<!-- BEGIN row -->
			<div class="row">
				<div class="col-xl-12">
					<!-- BEGIN panel -->
					<div class="panel panel-inverse">
						<!-- BEGIN panel-heading -->
						<div class="panel-heading">
							<h4 class="panel-title">LISTA</h4>
							<div class="panel-heading-btn">
								<a href="javascript:;" class="btn btn-xs btn-icon btn-default"
									data-toggle="panel-expand"><i class="fa fa-expand"></i></a>
							</div>
						</div>
						<!-- END panel-heading -->
						<!-- BEGIN panel-body -->
						<div class="panel-body">
							<table id="data-table-responsive"
								class="table table-striped table-bordered align-middle">
								<thead>
									<tr>
										<th class="text-nowrap">#</th>
										<th class="text-nowrap">TÍTULO</th>
										<th class="text-nowrap">DESCRIÇÃO</th>
										<th class="text-nowrap">STATUS</th>
										<th class="text-nowrap">DATA CRIAÇÃO</th>
										<th class="text-nowrap">&nbsp;</th>
									</tr>
								</thead>
								<c:set var="i" value="1"></c:set>
								<tbody>
									<c:forEach items="${retornoArray}" var="retorno"
										varStatus="stat">
										<tr class="odd gradeX">
											<td width="7%"><b>${i}</b></td>
											<td>${retorno.titulo}</td>
											<td>${retorno.descricao}</td>
											<td>${retorno.status}</td>
											<td><fmt:formatDate value="${retorno.datacriacao}" pattern="MM/dd/yyyy HH:mm"/></td>
											<td>
												<div class="btn-group">
													<a href="#" class="btn btn-white btn-sm w-60px">Ações</a> <a
														href="#"
														class="btn btn-white btn-sm dropdown-toggle w-30px no-caret"
														data-bs-toggle="dropdown" aria-expanded="false"> <span
														class="caret"></span>
													</a>
													<div class="dropdown-menu dropdown-menu-end" style="">
															<a
															href="#modal-message${retorno.id}" class="dropdown-item"
															data-bs-toggle="modal">DETALHAR</a> 
															<a
															href="javascript:alteraRegistro('${retorno.id}');"
															class="dropdown-item">EDITAR</a> 
																<a href="javascript:excluiRegistro('${retorno.id}');" class="dropdown-item bg-danger">EXCLUIR</a>
													</div>
												</div>

											</td>
										</tr>
										<c:set var="i" value="${i+1}"></c:set>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- END panel-body -->
					</div>
					<!-- END panel -->
				</div>
				<!-- END col-10 -->
			</div>
			<!-- END row -->
		</div>



		<c:forEach items="${retornoArray}" var="retorno" varStatus="stat">
			<div class="modal modal-message fade" id="modal-message${retorno.id}">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">TAREFA</h4>

							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-hidden="true"></button>
						</div>
						<div class="modal-body">
							<p>
								<b>CÓDIGO::</b> ${retorno.id}
							</p>
							<p>
								<b>TÍTULO ::</b> ${retorno.titulo}
							</p>
							<p>
								<b>DESCRIÇÃO ::</b> ${retorno.descricao}
							</p>
							<p>
								<b>STATUS ::</b> ${retorno.status}
							</p>
							<p>
								<b>DATA CRIAÇÃO::</b> <fmt:formatDate value="${retorno.datacriacao}" pattern="MM/dd/yyyy HH:mm"/>
							</p>
							<br>
						</div>
						<div class="modal-footer">
							<a href="javascript:;" class="btn btn-white"
								data-bs-dismiss="modal">FECHAR</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		<form name="frmExcluiRegistro" method="POST" action="${pageContext.request.contextPath}/TarefaExcluir">
			<input name="id" style="text-transform: uppercase;" type="hidden" size="1" />
		</form>
		<form name="frmAlteraRegistro" method="POST" action="${pageContext.request.contextPath}/TarefaAlterar">
			<input name="id" style="text-transform: uppercase;" type="hidden" size="1" value="" />
		</form>
		<form name="frmImpressaoPDF" method="POST" target="_blank"
			action="${pageContext.request.contextPath}/TarefaImpressao">
			<input name="tipo" style="text-transform: uppercase;" type="hidden" size="3" value="" />
		</form>
		<script language="javascript">
			$(document).ready(function() {
				$('#menucredor').toggleClass('active');
			});
		</script>
	</template:put>
</template:insert>
