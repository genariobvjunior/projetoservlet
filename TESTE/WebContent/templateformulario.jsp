<%@page contentType="text/html;charset=iso-8859-1"%>
<%@taglib uri="http://jakarta.apache.org/struts/tags-template" prefix="template"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <template:get name="cabecalhoformulario" />
<body>
	<div id="carregando" style="display: none; background-color: white; height: 100%; width: 100%; z-index: 9999; position: fixed; opacity: 0.4;">
		<div class="spinner-grow text-primary" role="status">
			<span class="visually-hidden">Loading...</span>
		</div>
		<div class="spinner-grow text-secondary" role="status">
			<span class="visually-hidden">Loading...</span>
		</div>
		<div class="spinner-grow text-success" role="status">
			<span class="visually-hidden">Loading...</span>
		</div>
		<div class="spinner-grow text-danger" role="status">
			<span class="visually-hidden">Loading...</span>
		</div>
		<div class="spinner-grow text-warning" role="status">
			<span class="visually-hidden">Loading...</span>
		</div>
		<div class="spinner-grow text-info" role="status">
			<span class="visually-hidden">Loading...</span>
		</div>
		<div class="spinner-grow text-light" role="status">
			<span class="visually-hidden">Loading...</span>
		</div>
		<div class="spinner-grow text-dark" role="status">
			<span class="visually-hidden">Loading...</span>
		</div>
	</div>
        <template:get name="cabecalho2" />
        <template:get name="menu" />
        <template:get name="conteudo" />
        
        <template:get name="ribbon" />
        <!-- BEGIN #content -->
		<div id="content" class="app-content">
		   <template:get name="footermp" />
		</div>
		<!-- END #content -->
</body>
</html>
