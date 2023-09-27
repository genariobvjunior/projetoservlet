<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- BEGIN #sidebar -->
<div id="sidebar" class="app-sidebar">
	<!-- BEGIN scrollbar -->
	<div class="app-sidebar-content" data-scrollbar="true"
		data-height="100%">
		<!-- BEGIN menu -->
		<div class="menu">
			<div class="menu-profile">
				<a href="javascript:;" class="menu-profile-link"
					data-toggle="app-sidebar-profile"
					data-target="#appSidebarProfileMenu">
					<div class="menu-profile-cover with-shadow"></div>
					<div class="menu-profile-image">
						<a href="https://www.ufpb.br//" target="_blank"> <img src="${pageContext.request.contextPath}/img/logo1.png" /> </a>
					</div>
					<div class="menu-profile-info">
						online <small>Acesso Restrito</small>
					</div>
				</a>
			</div>
			<div class="menu-header">MENU DE OPÇÕES</div>
			<div class="menu-item" id="menu-principal">
				<a href="${pageContext.request.contextPath}/MenuPrincipal"
					class="menu-link">
					<div class="menu-icon">
						<i class="fa  me-10px  fa-bank"></i>
					</div>
					<div class="menu-text">MENU PRINCIPAL</div>
				</a>
			</div>
			<div class="menu-item" id="menucredor">
					<a href="${pageContext.request.contextPath}/TarefaListar"
						class="menu-link">
						<div class="menu-icon">
							<i class="fas fa-fw me-10px fa-cog fa-fw"></i>
						</div>
						<div class="menu-text">TAREFAS</div>
					</a>
				</div>
				
			<!-- BEGIN minify-button -->
			<div class="menu-item d-flex">
				<a href="javascript:;" class="app-sidebar-minify-btn ms-auto"
					data-toggle="app-sidebar-minify"><i
					class="fa fa-angle-double-left"></i></a>
			</div>
			<!-- END minify-button -->
		</div>
		<!-- END menu -->
	</div>
	<!-- END scrollbar -->
</div>
<div class="app-sidebar-bg"></div>
<div class="app-sidebar-mobile-backdrop">
	<a href="#" data-dismiss="app-sidebar-mobile" class="stretched-link"></a>
</div>
<!-- END #sidebar -->