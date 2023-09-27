<%@page contentType="text/html; charset=iso-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://jakarta.apache.org/struts/tags-template" prefix="template"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<template:insert template="../templateformulario.jsp">
	<template:put name="cabecalhoformulario"
		content="cabecalhoformulario.jsp" />
	<template:put name="cabecalho2" content="cabecalho2.jsp" />
	<template:put name="menu" content="menu.jsp" />
	<template:put name="ribbon" content="ribbon.jsp" />
	<template:put name="footermp" content="footermp.jsp" />
	<template:put name="conteudo" direct="true">
		<script language="javascript">
			function voltar() {
				document.frmVoltar.submit();
			}
			function voltarnivel2() {
				document.frmVoltarNivel2.submit();
			}
			function voltarnivel1() {
				document.frmVoltarNivel1.submit();
			}
			function mudaParametros() {
				document.getElementById('carregando').style.display = '';
				document.frmMudaParametros.ano.value = document
						.getElementById('idAno').value;
				document.frmMudaParametros.mes.value = document
						.getElementById('idMes').value;
				document.frmMudaParametros.tipo.value = document
						.getElementById('idTipo').value;
				document.frmMudaParametros.submit();
			}
			

			<c:if test="${ATUALIZADO ne null}">
			swal({
				title: 'ATENÇÃO ${NAME}',
				text: 'DOCUMENTO ATUALIZADO COM SUCESSO!',
				icon: 'success',
				buttons: {
					confirm: {
						text: 'FECHAR',
						value: true,
						visible: true,
						className: 'btn btn-success',
						closeModal: true
					}
				}
			});
			</c:if>
		</script>

		<!-- BEGIN #content -->
		<div id="content" class="app-content">
			<!-- BEGIN breadcrumb -->
			<ol class="breadcrumb float-xl-end">
				<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/MenuPrincipal">Home</a></li>
			  <c:choose>
				 <c:when test="${tp eq '1'}">
					<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/MenuMapa">Menu Mapa Estratégico</a></li>
					<li class="breadcrumb-item"><a href="javascript:voltarnivel1();">Objetivo Estratégico</a></li>
		         </c:when>
				 <c:when test="${tp eq '2'}">
					<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/MenuMapa">Menu Mapa Estratégico</a></li>
					<li class="breadcrumb-item"><a href="javascript:voltarnivel1();">Programa Estratégico</a></li>
		         </c:when>
				 <c:when test="${tp eq '3'}">
					<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/MenuMapa">Menu Mapa Estratégico</a></li>
					<li class="breadcrumb-item"><a href="javascript:voltarnivel1();">Ação Estratégica</a></li>
		         </c:when>
				 <c:when test="${tp eq '4'}">
					<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/Menuxxxxxxxxxxxxxxxxxxxxxxx">Menu Carta Projeto Iniciativa</a></li>
					<li class="breadcrumb-item"><a href="javascript:voltarnivel1();">Carta Projeto Iniciativa</a></li>
		         </c:when>
		         <c:when test="${tp eq '5'}">
					<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/MenuPlanoDiretorSetorial">Menu Plano Diretor Setorial</a></li>
					<li class="breadcrumb-item"><a href="javascript:voltarnivel1();">Plano Diretor Setorial</a></li>
		         </c:when>
		         <c:when test="${tp eq '6'}">
					<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/MenuCarta">Menu Carta Proposta</a></li>
					<li class="breadcrumb-item"><a href="javascript:voltarnivel1();">Carta Proposta</a></li>
		         </c:when>
				<c:otherwise>

		         </c:otherwise>
				</c:choose>
				<li class="breadcrumb-item"><a href="javascript:voltarnivel2();">Indicadores</a></li>
				<li class="breadcrumb-item active">Alteração de Indicador</li>
			</ol>
			<!-- END breadcrumb -->
			<!-- BEGIN page-header -->
			<h1 class="page-header">
			<c:choose>
			 <c:when test="${tp eq '1'}">
	            META DE INDICADOR DE OBJ. ESTRATÉGICO &nbsp;
	         </c:when>
					<c:when test="${tp eq '2'}">
	            META DE INDICADOR DE PROG. ESTRATÉGICO &nbsp;
	         </c:when>
			 <c:when test="${tp eq '3'}">
	            META DE INDICADOR DE AÇÃO ESTRATÉGICA &nbsp;
	         </c:when>
			 <c:when test="${tp eq '4'}">
	            META DE INDICADOR DE PLANO GERAL DE ATUAÇÃO &nbsp;
	         </c:when>
	         <c:when test="${tp eq '5'}">
	            META DE INDICADOR DE PLANO DIRETOR SETORIAL &nbsp;
	         </c:when>
	         <c:when test="${tp eq '6'}">
	            META DE INDICADOR DE CARTA PROPOSTA &nbsp;
	         </c:when>
					<c:otherwise>
                INDICADOR DE ####################### &nbsp;
	         </c:otherwise>
				</c:choose>
				&nbsp;<a href="javascript:;"
					onclick="javascript:voltar();document.getElementById('carregando').style.display='';"
					class="btn btn-sm btn-white mb-10px"><i
					class="fa fa-angles-left t-plus-1 fa-fw fa-lg"></i> VOLTAR</a>
			</h1>
			<div class="col-12">
				<div class="mb-4px">
					<input type="text" readonly="" class="form-control-plaintext"
						value="INDICADOR:: ${retorno.indicador.descricao}">
				</div>
			</div>
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
							<h4 class="panel-title">ALTERAÇÃO DE META DE INDICADOR</h4>
							<div class="panel-heading-btn">
								<a href="javascript:;" class="btn btn-xs btn-icon btn-default"
									data-toggle="panel-expand"><i class="fa fa-expand"></i></a>
							</div>
						</div>
						<!-- END panel-heading -->
						<!-- BEGIN panel-body -->
						<div class="panel-body">
							<form name="frmAlterar" method="POST" class="form-horizontal" data-parsley-validate="true" action="${pageContext.request.contextPath}/MetaIndicadorGravar">
								<input type="hidden" id="id" name="id" value="${retorno.id}"/>
								<input type="hidden" id="tp" name="tp" value="${retorno.indicador.tpentidade}"/>
								<input type="hidden" id="indicador" name="indicador" value="${retorno.indicador.id}"/>
								<input type="hidden" id="entidade" name="entidade" value="${retorno.indicador.cdentidade}" />
								
								<div class="form-group row mb-3">
									<label class="col-lg-2 col-form-label form-label"
										for="fullname">ANO * :</label>
									<div class="col-lg-2">
										<input type="text" readonly="" class="form-control-plaintext"
											value="${retorno.ano}">
									</div>
								</div>
								<div class="form-group row mb-3">
									<label class="col-lg-2 col-form-label form-label"
										for="fullname">MÊS * :</label>
									<div class="col-lg-3">
										<c:choose>
											<c:when test="${retorno.mes eq '1'}">
												<input type="text" readonly=""
													class="form-control-plaintext" value="JANEIRO">
											</c:when>
											<c:when test="${retorno.mes eq '2'}">
												<input type="text" readonly=""
													class="form-control-plaintext" value="FEVEREIRO">
											</c:when>
											<c:when test="${retorno.mes eq '3'}">
												<input type="text" readonly=""
													class="form-control-plaintext" value="MARÇO">
											</c:when>
											<c:when test="${retorno.mes eq '4'}">
												<input type="text" readonly=""
													class="form-control-plaintext" value="ABRIL">
											</c:when>
											<c:when test="${retorno.mes eq '5'}">
												<input type="text" readonly=""
													class="form-control-plaintext" value="MAIO">
											</c:when>
											<c:when test="${retorno.mes eq '6'}">
												<input type="text" readonly=""
													class="form-control-plaintext" value="JUNHO">
											</c:when>
											<c:when test="${retorno.mes eq '7'}">
												<input type="text" readonly=""
													class="form-control-plaintext" value="JULHO">
											</c:when>
											<c:when test="${retorno.mes eq '8'}">
												<input type="text" readonly=""
													class="form-control-plaintext" value="AGOSTO">
											</c:when>
											<c:when test="${retorno.mes eq '9'}">
												<input type="text" readonly=""
													class="form-control-plaintext" value="SETEMBRO">
											</c:when>
											<c:when test="${retorno.mes eq '10'}">
												<input type="text" readonly=""
													class="form-control-plaintext" value="OUTUBRO">
											</c:when>
											<c:when test="${retorno.mes eq '11'}">
												<input type="text" readonly=""
													class="form-control-plaintext" value="NOVEMBRO">
											</c:when>
											<c:otherwise>
												<input type="text" readonly=""
													class="form-control-plaintext" value="DEZEMBRO">
											</c:otherwise>
										</c:choose>
									</div>
								</div>
								<div class="form-group row mb-3">
									<label class="col-lg-2 col-form-label form-label"
										for="fullname">TIPO VALOR * :</label>
									<div class="col-lg-3">
										<c:choose>
											<c:when test="${retorno.tpvalor eq 'I'}">
												<input type="text" readonly=""
													class="form-control-plaintext" value="VALOR INTEIRO">
											</c:when>
											<c:when test="${retorno.tpvalor eq 'D'}">
												<input type="text" readonly=""
													class="form-control-plaintext" value="VALOR DECIMAL">
											</c:when>
											<c:otherwise>
												<input type="text" readonly=""
													class="form-control-plaintext" value="TEXTO">
											</c:otherwise>
										</c:choose>
									</div>
								</div>
								<c:choose>
									<c:when test="${retorno.tpvalor eq 'T'}">
										<div class="form-group row mb-3">
											<label class="col-lg-2 col-form-label form-label"
												for="message">VALOR *:</label>
											<div class="col-lg-10">
												<textarea class="form-control" id="valor" name="valor"
													rows="4" data-parsley-minlength="20"
													data-parsley-maxlength="800" data-parsley-required="true">${retorno.valor}</textarea>
											</div>
										</div>
									</c:when>
									<c:when test="${retorno.tpvalor eq 'I'}">
										<div class="form-group row mb-3">
											<label class="col-lg-2 col-form-label form-label"
												for="message">VALOR *:</label>
											<div class="col-lg-3">
												<input class="form-control" type="text" id="valor"
													name="valor" data-parsley-type="number"
													data-parsley-required="true" value="${retorno.valor}"  />
											</div>
										</div>
									</c:when>
									<c:when test="${retorno.tpvalor eq 'D'}">
										<div class="form-group row mb-3">
											<label class="col-lg-2 col-form-label form-label"
												for="fullname">VALOR ATUAL:</label>
											<div class="col-lg-2">
												<input type="text" readonly=""
													class="form-control-plaintext"
													value="<fmt:setLocale value="pt-BR" /> <fmt:formatNumber value="${retorno.valor}" minFractionDigits="2" />">
											</div>
										</div>
										<div class="form-group row mb-3">
											<label class="col-lg-2 col-form-label form-label"
												for="message">VALOR *:</label>
											<div class="col-lg-3">
												<input class="form-control" type="text" id="valor"
													name="valor" data-parsley-type="number"
													data-parsley-required="true"
													 />
											</div>
										</div>
									</c:when>
									<c:when test="${retorno.tpvalor eq 'P'}">
										<div class="form-group row mb-3">
											<label class="col-lg-2 col-form-label form-label"
												for="fullname">VALOR ATUAL:</label>
											<div class="col-lg-2">
												<input type="text" readonly=""
													class="form-control-plaintext"
													value="<fmt:setLocale value="pt-BR" /> <fmt:formatNumber value="${retorno.valor}" minFractionDigits="2" /> %">
											</div>
										</div>
										<div class="form-group row mb-3">
											<label class="col-lg-2 col-form-label form-label"
												for="message">VALOR *:</label>
											<div class="col-lg-3">
												<input class="form-control" type="text" id="valor"
													name="valor" data-parsley-type="number"
													data-parsley-required="true"
													 />
											</div>
										</div>
									</c:when>
									<c:otherwise>
										
									</c:otherwise>
								</c:choose>
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
		<form name="frmVoltar" method="POST"
			action="${pageContext.request.contextPath}/MetaIndicadorListar">
			<input name="tp" style="text-transform: uppercase;" type="hidden" size="1" value="${retorno.indicador.tpentidade}" /> 
			<input name="entidade" style="text-transform: uppercase;" type="hidden" size="1" value="${retorno.indicador.cdentidade}" /> 
			<input name="indicador" style="text-transform: uppercase;" type="hidden" size="1" value="${retorno.indicador.id}" />
		</form>
		<form name="frmVoltarNivel2" method="POST" action="${pageContext.request.contextPath}/IndicadorListar">
			<input name="tp" style="text-transform: uppercase;" type="hidden" size="1" value="${tp}" /> 
	        <input name="entidade" style="text-transform: uppercase;" type="hidden" size="1" value="${entidade}" />
	        <input name="indicador" style="text-transform: uppercase;" type="hidden" size="1" value="${indicador}"  />
		</form>
		<c:choose>
			<c:when test="${tp eq '1'}">
				<form name="frmVoltarNivel1" method="POST" action="${pageContext.request.contextPath}/ObjetivoEstrategicoListar">
					<input name="mapa" style="text-transform: uppercase;" type="hidden" size="1" value="${OE.mapa.id}" /> 
				</form>
			</c:when>
			<c:when test="${tp eq '2'}">
				<form name="frmVoltarNivel1" method="POST" action="${pageContext.request.contextPath}/ProgramaEstrategicoListar">
					<input name="mapa" style="text-transform: uppercase;" type="text" size="1" value="${PE.objetivo.mapa.id}" />
					<input name="objetivo" style="text-transform: uppercase;" type="text" size="1" value="${PE.objetivo.id}" /> 
				</form>
			</c:when>
			<c:when test="${tp eq '3'}">
				<form name="frmVoltarNivel1" method="POST" action="${pageContext.request.contextPath}/AcaoEstrategicaListar">
					<input name="tp" style="text-transform: uppercase;" type="text" size="1" value="${tp}" />
					<input name="entidade" style="text-transform: uppercase;" type="text" size="1" value="${entidade}" />
					<input name="mapa" style="text-transform: uppercase;" type="text" size="1" value="${AE.programa.objetivo.mapa.id}" />
					<input name="objetivo" style="text-transform: uppercase;" type="text" size="1" value="${AE.programa.objetivo.id}" />
					<input name="programa" style="text-transform: uppercase;" type="text" size="1" value="${AE.programa.id}" />
				</form>
			</c:when>
			<c:when test="${tp eq '4'}">
				<form name="frmVoltarNivel1" method="POST" action="${pageContext.request.contextPath}/PlanoGeralAtuacaoListar">
					<input name="tp" style="text-transform: uppercase;" type="text" size="1" value="${tp}" />
					<input name="entidade" style="text-transform: uppercase;" type="text" size="1" value="${entidade}" />
					<input name="loa" style="text-transform: uppercase;" type="text" size="1" value="${PGA.anoloa}" />
				</form>
			</c:when>
			<c:when test="${tp eq '5'}">
				<form name="frmVoltarNivel1" method="POST" action="${pageContext.request.contextPath}/PlanoDiretorSetorialListar">
					<input name="tp" style="text-transform: uppercase;" type="text" size="1" value="${tp}" />
					<input name="entidade" style="text-transform: uppercase;" type="text" size="1" value="${entidade}" />
				</form>
			</c:when>
			<c:when test="${tp eq '6'}">
				<form name="frmVoltarNivel1" method="POST" action="${pageContext.request.contextPath}/CartaProjetoIniciativaListar">
					<input name="tp" style="text-transform: uppercase;" type="text" size="1" value="${tp}" />
					<input name="entidade" style="text-transform: uppercase;" type="text" size="1" value="${entidade}" />
				</form>
			</c:when>
			<c:otherwise>

			</c:otherwise>
		</c:choose>
		<script language="javascript">
		<c:choose>
        <c:when test = "${tp eq 1 or tp eq 2 or tp eq 3}">
	        $(document).ready(function() {
				$('#menumapa').toggleClass('active');
			});
        </c:when>
        <c:when test = "${tp eq 4}">
	        $(document).ready(function() {
				$('#menuplanogeral').toggleClass('active');
			});
        </c:when>
        <c:when test = "${tp eq 5}">
	        $(document).ready(function() {
				$('#menupds').toggleClass('active');
			});
    </c:when>
    <c:when test = "${tp eq 6}">
	    $(document).ready(function() {
			$('#menucarta').toggleClass('active');
		});
	</c:when>
    <c:otherwise>
      
    </c:otherwise>
	</c:choose>
			document.frmAlterar.valor.focus();
		</script>
	</template:put>
</template:insert>