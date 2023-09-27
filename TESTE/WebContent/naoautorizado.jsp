<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>TESTE</title>
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"
	name="viewport" />
<meta content="" name="description" />
<meta content="" name="genario junior" />

<!-- ================== BEGIN core-css ================== -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/vendor.min.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/default/app.min.css"
	rel="stylesheet" />
<!-- ================== END core-css ================== -->
</head>
<body class='pace-top'>
	<!-- BEGIN #loader -->
	<div id="loader" class="app-loader">
		<span class="spinner"></span>
	</div>
	<!-- END #loader -->

	<!-- BEGIN #app -->
	<div id="app" class="app">
		<!-- BEGIN error -->
		<div class="error">
			<div class="error-code">Oops!</div>
			<div class="error-content">
				<div class="error-message">ACESSO RESTRITO � FUNCIONALIDADE.</div>
                <div class="error-message">PREZAD(A) USUARIO(A)</div>
                <div class="error-message text-start">Lamentamos informar que voc� n�o possui acesso � funcionalidade solicitada neste momento. Entretanto, estamos aqui para auxili�-la da melhor maneira poss�vel.</div>
				<div class="error-message text-start">Se voc� tiver alguma d�vida ou necessitar de mais informa��es sobre a funcionalidade em quest�o, n�o hesite em entrar em contato com o N�cleo de Atendimento.</div>
				<div class="error-desc mb-4">
					<br />
				</div>
				<div class="error-message text-start">Nossa equipe estar� pronta para ajud�-lo(a) a esclarecer suas d�vidas e oferecer o suporte necess�rio.</div>
				<div class="error-desc mb-4">
					<br />
				</div>
				<div class="error-message text-start">Agradecemos pela sua compreens�o e paci�ncia enquanto trabalhamos para fornecer a melhor experi�ncia poss�vel.</div>
				<div>
					<a href="${pageContext.request.contextPath}/MenuPrincipal" class="btn btn-success px-3">RETORNAR</a>
				</div>
			</div>
		</div>
		<!-- END error -->

		<!-- BEGIN scroll-top-btn -->
		<a href="javascript:;"
			class="btn btn-icon btn-circle btn-success btn-scroll-to-top"
			data-toggle="scroll-to-top"><i class="fa fa-angle-up"></i></a>
		<!-- END scroll-top-btn -->
	</div>
	<!-- END #app -->

	<!-- ================== BEGIN core-js ================== -->
	<script src="${pageContext.request.contextPath}/js/vendor.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/app.min.js"></script>
	<!-- ================== END core-js ================== -->
</body>
</html>