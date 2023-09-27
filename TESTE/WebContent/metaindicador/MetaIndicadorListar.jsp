<%@page contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://jakarta.apache.org/struts/tags-template" prefix="template"%>
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
					text : 'DESEJA REALMENTE EXCLUIR REGISTRO ' + id + ' ?',
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
			function voltarnivel2() {
				document.frmVoltarNivel2.submit();
			}
			function voltarnivel1() {
				document.frmVoltarNivel1.submit();
			}
			function ImpressaoPDF(tipo) {
				document.frmImpressaoPDF.tipo.value = tipo;
				document.frmImpressaoPDF.submit();
			}
			function afericaometas(codigo) {
				document.frmAfericaoMeta.meta.value = codigo;
				document.frmAfericaoMeta.submit();
			}
			function novo() {
				document.frmNovo.submit();
			}
		</script>
		<!-- Main content -->
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
					<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/MenuPlanoGeral">Menu Plano Geral de Atuação</a></li>
					<li class="breadcrumb-item"><a href="javascript:voltarnivel1();">Plano Geral de Atuação</a></li>
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
				<li class="breadcrumb-item active">Cadastro de Metas de Indicador</li>
			</ol>
			<!-- END breadcrumb -->
			<!-- BEGIN page-header -->
			<h1 class="page-header">
				<c:choose>
					<c:when test="${tp eq '1'}">
	            METAS DE INDICADOR DE OBJ. ESTRATÉGICO &nbsp;
	         </c:when>
					<c:when test="${tp eq '2'}">
	            METAS DE INDICADOR DE PROG. ESTRATÉGICO &nbsp;
	         </c:when>
					<c:when test="${tp eq '3'}">
	            METAS DE INDICADOR DE AÇÃO ESTRATÉGICA &nbsp;
	         </c:when>
			 <c:when test="${tp eq '4'}">
	            METAS DE INDICADOR DE PLANO GERAL DE ATUAÇÃO &nbsp;
	         </c:when>
	         <c:when test="${tp eq '5'}">
	            METAS DE INDICADOR DE PLANO DIRETOR SETORIAL &nbsp;
	         </c:when>
	         <c:when test="${tp eq '6'}">
	            METAS DE INDICADOR DE CARTA PROPOSTA &nbsp;
	         </c:when>
					<c:otherwise>
                METAS DE INDICADOR DE ####################### &nbsp;
	         </c:otherwise>
				</c:choose>

				<button type="button" class="btn btn-sm btn-green me-1 mb-10px"
					onclick="javascript:novo();">NOVO</button>

				&nbsp;&nbsp; <a href="javascript:;" onclick="javascript:voltarnivel2();document.getElementById('carregando').style.display='';" class="btn btn-sm btn-white mb-10px"><i class="fa fa-angles-left t-plus-1 fa-fw fa-lg"></i> VOLTAR</a>
					
			</h1>
			
			<div class="col-12">
				<div class="mb-4px">
					<input type="text" readonly="" class="form-control-plaintext" value="INDICADOR:: ${INDICADOR.descricao}">
				</div>
			</div>
			
			
			<c:if test="${CI.situacao ne '1'}">
				<div class="alert alert-yellow alert-dismissible fade show h-100 mb-0">
				Caro usuário, por favor, observe que o cadastro, alteração e exclusão de Metas só podem ocorrer enquanto a situação da Carta Proposta estiver "Em Construção" e somente pelo autor da carta. Se a Carta Proposta estiver em qualquer outro status, as adequações de Metas não serão permitidas.
				<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
				</div>
			</c:if>
			
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
										<th class="text-nowrap">CÓDIGO</th>
										<th class="text-nowrap">ANO</th>
										<th class="text-nowrap">MÊS</th>
										<th class="text-nowrap">TIPO DE VALOR</th>
										<th class="text-nowrap">VALOR</th>
										<th class="text-nowrap">&nbsp;</th>
									</tr>
								</thead>
								<c:set var="i" value="1"></c:set>
								<tbody>
									<c:forEach items="${objetoMetaIndicadorArray}" var="retorno"
										varStatus="stat">
										<tr class="odd gradeX">
											<td width="7%"><b>${i}</b></td>
											<td><b>${retorno.id}</b></td>
											<td>${retorno.ano}</td>
											<td>${retorno.mes}</td>
											<td>${retorno.tpvalor}</td>
											<c:choose>
										         <c:when test = "${retorno.tpvalor eq 'VALOR DECIMAL'}">
										            <td><fmt:setLocale value="pt-BR" /> <fmt:formatNumber value="${retorno.valor}" minFractionDigits="2" /></td>
										         </c:when>
										         <c:when test = "${retorno.tpvalor eq 'PERCENTUAL'}">
										            <td><fmt:setLocale value="pt-BR" /> <fmt:formatNumber value="${retorno.valor}" minFractionDigits="2" />%</td>
										         </c:when>
										         <c:otherwise>
											         <td>${retorno.valor}</td>
										         </c:otherwise>
										     </c:choose>
											<td width="5%">
												<div class="btn-group">
													<a href="#" class="btn btn-white btn-sm w-60px">Ações</a>
													<a href="#" class="btn btn-white btn-sm dropdown-toggle w-30px no-caret" data-bs-toggle="dropdown" aria-expanded="false">
													<span class="caret"></span>
													</a>
													<div class="dropdown-menu dropdown-menu-end" style="">
														<a href="#modal-message${retorno.id}" class="dropdown-item" data-bs-toggle="modal">DETALHAR</a>
														<a href="javascript:alteraRegistro('${retorno.id}');" class="dropdown-item">EDITAR</a> 
														<c:if test="${retorno.qtdafericao eq 0}"> <a href="javascript:excluiRegistro('${retorno.id}');" class="dropdown-item bg-danger">EXCLUIR</a></c:if>
														<div class="dropdown-divider"></div>
            											 <a href="javascript:afericaometas('${retorno.id}');" class="dropdown-item">AFERIÇÃO DE METAS (${retorno.qtdafericao})</a>
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

		<c:forEach items="${objetoMetaIndicadorArray}" var="retorno" varStatus="stat">
			<div class="modal modal-message fade" id="modal-message${retorno.id}">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<c:choose>
								<c:when test="${tp eq '1'}">
									<h4 class="modal-title">METAS DE INDICADOR DE OBJETIVO ESTRATÉGICO</h4>
								</c:when>
								<c:when test="${tp eq '2'}">
									<h4 class="modal-title">METAS DE INDICADOR DE PROGRAMA ESTRATÉGICO</h4>
								</c:when>
								<c:when test="${tp eq '3'}">
									<h4 class="modal-title">METAS DE INDICADOR DE AÇÃO ESTRATÉGICA</h4>
								</c:when>
								<c:when test="${tp eq '4'}">
									<h4 class="modal-title">METAS DE INDICADOR DE PLANO GERAL DE ATUAÇÃO</h4>
								</c:when>
								<c:when test="${tp eq '5'}">
									<h4 class="modal-title">METAS DE INDICADOR DE PLANO DIRETOR SETORIAL</h4>
								</c:when>
								<c:when test="${tp eq '6'}">
									<h4 class="modal-title">METAS DE INDICADOR DE CARTA PROPOSTA</h4>
								</c:when>
								<c:otherwise>
									<h4 class="modal-title">#############</h4>
								</c:otherwise>
							</c:choose>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
						</div>
						<div class="modal-body">
						<c:choose>
								<c:when test="${tp eq '1'}">
								<p> <b>OBJETIVO ESTRATÉGICO ::</b> ${OE.descricao} </p>
								</c:when>
								<c:when test="${tp eq '2'}">
									<p> <b>PROGRAMA ESTRATÉGICO ::</b> ${PE.descricao} </p>
								</c:when>
								<c:when test="${tp eq '3'}">
									<p> <b>AÇÃO ESTRATÉGICA ::</b> ${AE.descricao} </p>
								</c:when>
								<c:when test="${tp eq '4'}">
								    <p> <b>PLANO GERAL DE ATUAÇÃO ::</b> ${PGA.titulo} </p>
								</c:when>
								<c:when test="${tp eq '5'}">
								    <p> <b>PLANO DIRETOR SETORIAL ::</b> ${PDS.titulo} </p>
								</c:when>
								<c:when test="${tp eq '6'}">
								    <p> <b>CARTA PROPOSTA ::</b> ${CI.titulo} </p>
								</c:when>
								<c:otherwise>
									<h4 class="modal-title">#############</h4>
								</c:otherwise>
							</c:choose>
						    <p> <b>INDICADOR ::</b> ${retorno.indicador.descricao} </p>
							<p>
								<b>ANO::</b> ${retorno.ano}
							</p>
							<p>
								<b>MÊS::</b> ${retorno.mes}
							</p>
							<p>
								<b>TIPO DE VALOR::</b> ${retorno.tpvalor}
							</p>
							<c:choose>
						         <c:when test = "${retorno.tpvalor eq 'VALOR DECIMAL'}">
						            <p>
										<b>VALOR::</b> <fmt:setLocale value="pt-BR" /> <fmt:formatNumber value="${retorno.valor}" minFractionDigits="2" />
									</p>
						         </c:when>
						         <c:when test = "${retorno.tpvalor eq 'PERCENTUAL'}">
						            <p>
										<b>VALOR::</b> <fmt:setLocale value="pt-BR" /> <fmt:formatNumber value="${retorno.valor}" minFractionDigits="2" /> %
									</p>
						         </c:when>
						         <c:otherwise>
							         <p>
										<b>VALOR::</b> ${retorno.valor}
									</p>
						         </c:otherwise>
						     </c:choose>
							
							<br>
							<div class="accordion" id="accordion">
								<div class="accordion-item border-0">
									<div class="accordion-header" id="headingOne">
										<button
											class="accordion-button bg-gray-900 text-white px-3 py-10px pointer-cursor collapsed"
											type="button" data-bs-toggle="collapse"
											data-bs-target="#collapseOne" aria-expanded="false">
											<i class="fa fa-circle fa-fw text-blue me-2 fs-8px"></i>
											DADOS DO CADASTRO
										</button>
									</div>
									<div id="collapseOne" class="accordion-collapse collapse"
										data-bs-parent="#accordion" style="">
										<div class="accordion-body bg-gray-800 text-white">
											<c:if test="${retorno.usuarioinclusao ne null}">
												<div class="note note-gray-500 mb-0">
													<div class="note-icon">
														<img
															src="${pageContext.request.contextPath}/FtServidorCpf?cpf=${retorno.usuarioinclusao.nuCpf}"
															class="rounded h-80px">
													</div>
													<div class="note-content">
														<h4>
															<b>USUÁRIO QUE CADASTROU</b>
														</h4>
														<p>
															&nbsp;${retorno.usuarioinclusao.id} - &nbsp;<b>${retorno.usuarioinclusao.nmUsuario}
																EM <fmt:formatDate value="${retorno.datainclusao}"
																	pattern='dd-MM-yyyy hh:mm:ss' />
															</b>
														</p>
													</div>
												</div>
											</c:if>
											<c:if test="${retorno.usuarioalteracao ne null}">
												<div class="note note-gray-500 mb-0">
													<div class="note-icon">
														<img
															src="${pageContext.request.contextPath}/FtServidorCpf?cpf=${retorno.usuarioalteracao.nuCpf}"
															class="rounded h-80px">
													</div>
													<div class="note-content">
														<h4>
															<b>USUÁRIO QUE RETIFICOU</b>
														</h4>
														<p>
															&nbsp;${retorno.usuarioalteracao.id} - &nbsp;<b>${retorno.usuarioalteracao.nmUsuario}
																EM <fmt:formatDate value="${retorno.dataalteracao}"
																	pattern='dd-MM-yyyy hh:mm:ss' />
															</b>
														</p>
													</div>
												</div>
											</c:if>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<a href="javascript:;" class="btn btn-white"
								data-bs-dismiss="modal">FECHAR</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		<form name="frmExcluiRegistro" method="POST" action="${pageContext.request.contextPath}/MetaIndicadorExcluir">
		    <input name="tp" style="text-transform: uppercase;" type="hidden" size="1" value="${tp}" /> 
			<input name="entidade" style="text-transform: uppercase;" type="hidden" size="1" value="${entidade}" />
			<input name="indicador" style="text-transform: uppercase;" type="hidden" size="1" value="${indicador}"  />
			<input name="id" style="text-transform: uppercase;" type="hidden" size="1" />
		</form>
		<form name="frmAlteraRegistro" method="POST" action="${pageContext.request.contextPath}/MetaIndicadorAlterar">
			<input name="tp" style="text-transform: uppercase;" type="hidden" size="1" value="${tp}" />
			<input name="entidade" style="text-transform: uppercase;" type="hidden" size="1" value="${entidade}" />
			<input name="indicador" style="text-transform: uppercase;" type="hidden" size="1" value="${indicador}"  />
			<input name="id" style="text-transform: uppercase;" type="hidden" size="1" value="" />
		</form>
		<form name="frmNovo" method="POST" action="${pageContext.request.contextPath}/MetaIndicadorCarregaIncluir">
			<input name="tp" style="text-transform: uppercase;" type="hidden" size="1" value="${tp}" /> 
			<input name="entidade" style="text-transform: uppercase;" type="hidden" size="1" value="${entidade}" />
			<input name="indicador" style="text-transform: uppercase;" type="hidden" size="1" value="${indicador}" />
		</form>
		<form name="frmAfericaoMeta" method="POST" action="${pageContext.request.contextPath}/AfericaoMetaListar">
			<input name="tp" style="text-transform: uppercase;" type="hidden" size="1" value="${tp}"  /> 
			<input name="entidade" style="text-transform: uppercase;" type="hidden" size="1" value="${entidade}" />
			<input name="meta" style="text-transform: uppercase;" type="hidden" size="1" />
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
		</script>
	</template:put>
</template:insert>