<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<!-- BEGIN #loader -->
	<div id="loader" class="app-loader">
		<span class="spinner"></span>
	</div>
	<!-- END #loader -->

	<!-- BEGIN #app -->
	<div id="app" class="app app-header-fixed app-sidebar-fixed ">
		<!-- BEGIN #header -->
		<div id="header" class="app-header">
			<!-- BEGIN navbar-header -->
			<div class="navbar-header">
				<a href="#" target="_blank" class="navbar-brand"><span class="navbar-logo"></span> <b>SISTEMA FRAMEWORK COM SERVLETS E JSP</b></a>
				<button type="button" class="navbar-mobile-toggler" data-toggle="app-sidebar-mobile">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<!-- END navbar-header -->
			<!-- BEGIN header-nav -->
			<div class="navbar-nav">
				<div class="navbar-item dropdown">

				</div>
				<div class="navbar-item navbar-user dropdown">
					<a href="#" class="navbar-link dropdown-toggle d-flex align-items-center" data-bs-toggle="dropdown">
					    <img src="${pageContext.request.contextPath}/img/homem.jpg" alt="" />
						<span>
							<span class="d-none d-md-inline">GENARIO BARBOSA DE V JÚNIOR</span>
							<b class="caret"></b>
						</span>
					</a>
					<div class="dropdown-menu dropdown-menu-end me-1">
						<a class="dropdown-item">GENARIO</a>
						 <div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item">SAIR DO SISTEMA</a>
					</div>
				</div>
			</div>
			<!-- END header-nav -->
		</div>
		<!-- END #header -->