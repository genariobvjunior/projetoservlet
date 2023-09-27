<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=iso-8859-1"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-template"
	prefix="template"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<template:insert template="../templatetables.jsp">
	<template:put name="cabecalho" content="cabecalho.jsp" />
	<template:put name="cabecalho2" content="cabecalho2.jsp" />
	<template:put name="menu" content="menu.jsp" />
	<template:put name="ribbon" content="ribbon.jsp" />
	<template:put name="footer" content="footer.jsp" />
	<template:put name="conteudo" direct="true">
		<!-- MAIN CONTENT -->
		<div id="content">
		<div class="row">
                <div class="col-xs-12 col-sm-7 col-md-7 col-lg-12">
                    <h1 class="page-title txt-color-blueDark"><i class="fa fa-lg fa fa fa-delicious txt-color-blue"></i>
							<b>CADASTROS  </b>
                        <span>
								
                        </span>
                        <a href="#" onclick="javascript:document.location.href = '${pageContext.request.contextPath}/MenuPrincipal'" class="btn btn-warning btn-sm">VOLTAR</a>
                    </h1>
                </div>
            </div>
            <p>
		
			<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<!-- Widget ID (each widget will need unique ID)-->
				<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0"
					data-widget-editbutton="false" data-widget-deletebutton="false"
					data-widget-custombutton="false" data-widget-togglebutton="false">
					<header>
						<span class="widget-icon"> <i class="fa fa-delicious"></i>
						</span>
						<h2>CADASTROS ESTRAT�GICOS</h2>
					</header>
					<!-- widget div-->
					<div>

						<!-- widget edit box -->
						<div class="jarviswidget-editbox">
							<!-- This area used as dropdown edit box -->

						</div>
						<!-- end widget edit box -->

						<!-- widget content -->
						<div class="widget-body">
							<div class="table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th width="2%" align="center"><i class="fa fa-gear"></i></th>
											<th width="30%">OP��ES</th>
											<th width="68%">DETALHE</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td align="right"><label>1</label></td>
											<td><label> <a
													href="${pageContext.request.contextPath}/MapaEstrategicoListar"
													onclick="document.getElementById('carregando').style.display = '';">MAPA
														ESTRAT�GICO</a>
											</label></td>
											<td>CADASTRO DE MAPA ESTRAT�GICO</td>
										</tr>
										<tr>
											<td align="right"><label>2</label></td>
											<td><label> <a
													href="${pageContext.request.contextPath}/ObjetivoEstrategicoListar"
													onclick="document.getElementById('carregando').style.display = '';">OBJETIVO
														ESTRAT�GICO</a>
											</label></td>
											<td>CADASTRO DE OBJETIVO ESTRAT�GICO DOS MAPAS</td>
										</tr>
										<tr>
											<td align="right"><label>3</label></td>
											<td><label> <a
													href="${pageContext.request.contextPath}/ProgramaEstrategicoListar"
													onclick="document.getElementById('carregando').style.display = '';">PROGRAMA
														ESTRAT�GICO</a>
											</label></td>
											<td>CADASTRO DE PROGRAMA ESTRAT�GICO DOS OBJETIVOS</td>
										</tr>
										<tr>
											<td align="right"><label>4</label></td>
											<td><label> <a
													href="${pageContext.request.contextPath}/AcaoEstrategicaListar"
													onclick="document.getElementById('carregando').style.display = '';">A��O
														ESTRAT�GICA</a>
											</label></td>
											<td>CADASTRO DE A��O ESTRAT�GICA DOS PROGRAMAS</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- end widget content -->
					</div>
					<!-- end widget div -->
				</div>
			</article>
			
			
			<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<!-- Widget ID (each widget will need unique ID)-->
				<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0"
					data-widget-editbutton="false" data-widget-deletebutton="false"
					data-widget-custombutton="false" data-widget-togglebutton="false">
					<header>
						<span class="widget-icon"> <i class="fa fa-delicious"></i>
						</span>
						<h2>PLANO GERAL DE ATUA��O</h2>
					</header>
					<!-- widget div-->
					<div>

						<!-- widget edit box -->
						<div class="jarviswidget-editbox">
							<!-- This area used as dropdown edit box -->

						</div>
						<!-- end widget edit box -->

						<!-- widget content -->
						<div class="widget-body">
							<div class="table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th width="2%" align="center"><i class="fa fa-gear"></i></th>
											<th width="30%">OP��ES</th>
											<th width="68%">DETALHE</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td align="right"><label>1</label></td>
											<td><label> <a
													href="${pageContext.request.contextPath}/PlanoGeralAtuacaoListar"
													onclick="document.getElementById('carregando').style.display = '';">PLANO GERAL DE ATUA��O</a>
											</label></td>
											<td>CADASTRO DE PLANO GERAL DE ATUA��O</td>
										</tr>
										<tr>
											<td align="right"><label>2</label></td>
											<td><label> <a
													href="${pageContext.request.contextPath}/IndicadorMetaPGAListar"
													onclick="document.getElementById('carregando').style.display = '';">INDICADORES E METAS DE PLANO GERAL DE ATUA��O</a>
											</label></td>
											<td>CADASTRO DE INDICADORES E METAS DE PLANO GERAL DE ATUA��O</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- end widget content -->
					</div>
					<!-- end widget div -->
				</div>
			</article>
			
			
			
			<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<!-- Widget ID (each widget will need unique ID)-->
				<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0"
					data-widget-editbutton="false" data-widget-deletebutton="false"
					data-widget-custombutton="false" data-widget-togglebutton="false">
					<header>
						<span class="widget-icon"> <i class="fa fa-delicious"></i>
						</span>
						<h2>PLANO DIRETOR SETORIAL</h2>
					</header>
					<!-- widget div-->
					<div>

						<!-- widget edit box -->
						<div class="jarviswidget-editbox">
							<!-- This area used as dropdown edit box -->

						</div>
						<!-- end widget edit box -->

						<!-- widget content -->
						<div class="widget-body">
							<div class="table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th width="2%" align="center"><i class="fa fa-gear"></i></th>
											<th width="30%">OP��ES</th>
											<th width="68%">DETALHE</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td align="right"><label>1</label></td>
											<td><label> <a
													href="${pageContext.request.contextPath}/PlanoDiretorSetorialListar"
													onclick="document.getElementById('carregando').style.display = '';">PLANO DIRETOR SETORIAL </a>
											</label></td>
											<td>CADASTRO DE PLANO DIRETOR SETORIAL</td>
										</tr>
										<tr>
											<td align="right"><label>2</label></td>
											<td><label> <a
													href="${pageContext.request.contextPath}/IndicadorMetaPDSListar"
													onclick="document.getElementById('carregando').style.display = '';">INDICADORES E METAS DE PLANO DIRETOR SETORIAL</a>
											</label></td>
											<td>CADASTRO DE INDICADORES E METAS DE PLANO DIRETOR DE ATUA��O</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- end widget content -->
					</div>
					<!-- end widget div -->
				</div>
			</article>
			
			
			<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<!-- Widget ID (each widget will need unique ID)-->
				<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0"
					data-widget-editbutton="false" data-widget-deletebutton="false"
					data-widget-custombutton="false" data-widget-togglebutton="false">
					<header>
						<span class="widget-icon"> <i class="fa fa-delicious"></i>
						</span>
						<h2>CARTA PROJETO/INICIATIVA</h2>
					</header>
					<!-- widget div-->
					<div>

						<!-- widget edit box -->
						<div class="jarviswidget-editbox">
							<!-- This area used as dropdown edit box -->

						</div>
						<!-- end widget edit box -->

						<!-- widget content -->
						<div class="widget-body">
							<div class="table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th width="2%" align="center"><i class="fa fa-gear"></i></th>
											<th width="30%">OP��ES</th>
											<th width="68%">DETALHE</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td align="right"><label>1</label></td>
											<td><label> <a
													href="${pageContext.request.contextPath}/CartaProjetoIniciativaListar"
													onclick="document.getElementById('carregando').style.display = '';">CARTA PROJETO/INICIATIVA</a>
											</label></td>
											<td>CADASTRO DE CARTAS PROJETO/INICIATIVA</td>
										</tr>
										<tr>
											<td align="right"><label>2</label></td>
											<td><label> <a
													href="${pageContext.request.contextPath}/CartaProjetoIniciativaPlanoAcaoListar"
													onclick="document.getElementById('carregando').style.display = '';">PLANO DE A��O DE CARTA PROJETO/INICIATIVA</a>
											</label></td>
											<td>CADASTRO DE PLANOS DE A��O DAS CARTAS PROJETO/INICIATIVA</td>
										</tr>
										<tr>
											<td align="right"><label>3</label></td>
											<td><label> <a
													href="${pageContext.request.contextPath}/IndicadorMetaCPIListar"
													onclick="document.getElementById('carregando').style.display = '';">INDICADORES E METAS DE CARTA PROJETO/INICIATIVA</a>
											</label></td>
											<td>CADASTRO DE INDICADORES E METAS DE CARTA PROJETO/INICIATIVA</td>
										</tr>
										<tr>
											<td align="right"><label>4</label></td>
											<td><label> <a
													href="${pageContext.request.contextPath}/ManifestacaoTecnicaCPIListar"
													onclick="document.getElementById('carregando').style.display = '';">MANIFESTA��ES T�CNICAS DE CARTA PROJETO/INICIATIVA</a>
											</label></td>
											<td>CADASTRO DE MANIFESTA��ES T�CNICAS DE CARTA PROJETO/INICIATIVA</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- end widget content -->
					</div>
					<!-- end widget div -->
				</div>
			</article>
		</div>
		<script language="javascript">
			$(document).ready(function() {
				$('#menu-cadastros').toggleClass('active');
			});
		</script>
	</template:put>
</template:insert>