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
                    <h1 class="page-title txt-color-blueDark"><i class="fa fa-lg fa fa-table txt-color-blue"></i>
							<b>TABELAS  </b>
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
						<h2>TABELAS BÁSICAS</h2>
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
											<th width="30%">OPÇÕES</th>
											<th width="68%">DETALHE</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td align="right"><label>1</label></td>
											<td><label> <a
													href="${pageContext.request.contextPath}/TematicaListar"
													onclick="document.getElementById('carregando').style.display = '';">TEMÁTICA</a>
											</label></td>
											<td>CADASTRO DE TEMÁTICA</td>
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
				$('#menu-tabelas').toggleClass('active');
			});
		</script>
	</template:put>
</template:insert>