<%@page contentType="text/html; charset=iso-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://jakarta.apache.org/struts/tags-template"
	prefix="template"%>

<template:insert template="../templateformulario.jsp">
	<template:put name="cabecalhoformulario"
		content="cabecalhoformulario.jsp" />
	<template:put name="cabecalho2" content="cabecalho2.jsp" />
	<template:put name="menu" content="menu.jsp" />
	<template:put name="ribbon" content="ribbon.jsp" />
	<template:put name="footermp" content="footermp.jsp" />
	<template:put name="conteudo" direct="true">
		<!-- BEGIN #content -->
		<div id="content" class="app-content">
			<!-- BEGIN breadcrumb -->
			<ol class="breadcrumb float-xl-end">
				<li class="breadcrumb-item"><a
					href="${pageContext.request.contextPath}/MenuPrincipal">Home</a></li>
				<li class="breadcrumb-item"><a
					href="${pageContext.request.contextPath}/TarefaListar">Tarefas</a></li>
				<li class="breadcrumb-item active">Inclusão de Tarefas</li>
			</ol>
			<!-- END breadcrumb -->
			<!-- BEGIN page-header -->
			<h1 class="page-header">
				TAREFAS &nbsp;<a href="javascript:;"
					onclick="javascript:document.location.href = '${pageContext.request.contextPath}/TarefaListar';document.getElementById('carregando').style.display='';"
					class="btn btn-sm btn-white mb-10px"><i
					class="fa fa-angles-left t-plus-1 fa-fw fa-lg"></i> VOLTAR</a>
			</h1>
			<!-- END page-header -->
			<!-- BEGIN row -->
			<div class="row">
				<!-- BEGIN col-6 -->
				<div class="col-xl-12">
					<!-- BEGIN panel -->
					<div class="panel panel-inverse"
						data-sortable-id="form-validation-1">
						<!-- BEGIN panel-heading -->
						<div class="panel-heading">
							<h4 class="panel-title">INCLUSÃO DE TAREFA</h4>
							<div class="panel-heading-btn">
								<a href="javascript:;" class="btn btn-xs btn-icon btn-default"
									data-toggle="panel-expand"><i class="fa fa-expand"></i></a>
							</div>
						</div>
						<!-- END panel-heading -->
						<!-- BEGIN panel-body -->
						<div class="panel-body">
							<form name="frmIncluir" method="POST" class="form-horizontal" data-parsley-validate="true" action="${pageContext.request.contextPath}/TarefaIncluir">
								<div class="form-group row mb-3">
									<label class="col-lg-2 col-form-label form-label" for="message">TÍTULO *:</label>
									<div class="col-lg-8">
										<input class="form-control" type="text" id="titulo" name="titulo" maxlength="100" data-parsley-required="true" autocomplete="off">
									</div>
								</div>
								<div class="form-group row mb-3">
									<label class="col-lg-2 col-form-label form-label" for="message">DESCRIÇÃO *:</label>
									<div class="col-lg-10">
										<textarea class="form-control" id="descricao" name="descricao" rows="3" data-parsley-minlength="5"
											data-parsley-required="true"></textarea>
									</div>
								</div>
								<div class="form-group row mb-3">
									<label class="col-lg-2 col-form-label form-label"
										for="fullname">STATUS * :</label>
									<div class="col-lg-10">
										<select class="form-select" id="idStatus" name="idStatus" data-parsley-required="true">
											<option value="A" >EM CONSTRUÇÃO</option>
										</select>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label form-label">&nbsp;</label>
									<div class="col-lg-8">
										<button type="submit" class="btn btn-primary btn-green">SALVAR</button>
									</div>
								</div>
							</form>
						</div>
						<!-- END panel-body -->
					</div>
					<!-- END panel -->
				</div>
				<!-- END panel -->
			</div>
			<!-- END col-6 -->
		</div>
		<!-- END row -->
		</div>
		<!-- END #content -->
		<script language="javascript">
			$(document).ready(function() {
				$('#menucredor').toggleClass('active');
			});
			document.frmIncluir.titulo.focus();
		</script>
	</template:put>
</template:insert>