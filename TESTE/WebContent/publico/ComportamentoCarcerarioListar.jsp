<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=iso-8859-1"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-template" prefix="template"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<template:insert template="../templatemapa.jsp">
    <template:put name="cabecalho"  content="cabecalho.jsp"/>
    <template:put name="cabecalho2"  content="cabecalho2.jsp"/>
    <template:put name="ribbon"  content="ribbon.jsp"/>
    <template:put name="footer"  content="footer.jsp"/>
    <template:put name="conteudo" direct="true">

        <div  id="carregando" style="display:none; background-color:white;height:100%; width:100%; z-index:9999;position:fixed; opacity:0.6;">
            <div style=" background-image:url('${pageContext.request.contextPath}/img/aguarde_processando.gif'); height:50px ;width:200px; left:45%;top:4%;z-index:10000;position:fixed; margin: auto 0 ; "></div>
        </div>
        <c:set var="retorno" value="${retorno}"></c:set>
            <!-- MAIN CONTENT -->
            <div id="content">

                <div class="row">
                    <div class="col-xs-12 col-sm-7 col-md-7 col-lg-14">
                        <h1 class="page-title txt-color-blueDark">
                            <img src="${pageContext.request.contextPath}/img/logo-pale.png"  alt="" style="width:70px" >
                        <b> COMPORTAMENTO CARCERÁRIO DO ESTADO DA PARAÍBA                                                         <button class='btn btn-xs btn-default' style="display:none" id="idmensagem" title='Excluir Registro' data-toggle="modal" data-target="#myModal"  ><i class='fa fa-trash-o'></i></button>
 </b>
                        <span>
                            <b>  <span style="color: rgb(102, 0, 0);">DADOS FORNECIDOS PELA SECRETARIA DE ADMINISTRAÇÃO PENITENCIARIA DO ESTADO DA PARAÍBA : REF:: ${competencia.dado}</span></b>
                        </span>
                    </h1>
                </div>

            </div>

            <!-- widget grid -->
            <section id="widget-grid" class="">
                <div class="well well-sm well-light">
                    <div id="tabs">
                        <ul>
                            <li>
                                <a href="#tabs-a" title="">POPULAÇÃO CARCERÁRIA POR MUNICÍPIO</a>
                            </li>
                            <li>
                                <a href="#tabs-b" title="População Carcerária Geral do Estado da Paraíba">POPULAÇÃO CARCERÁRIA DA PB</a>
                            </li>
                            <li>
                                <a href="#tabs-c" title="População Carcerária por Município">POPULAÇÃO POR MUNICÍPIO</a>
                            </li>
                            <li>
                                <a href="#tabs-d">DADOS</a>
                            </li>
                        </ul>
                        <div id="tabs-a">
                            <div class="row">
                                <div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
                                    <section>
                                        Município
                                        <label class="select">
                                            <select name="idMunicipio" id="idMunicipio" onchange="javascript:mudaMunicipios();">
                                                <option value="-1">SELECIONE O MUNICÍPIO</option>
                                                <c:forEach items="${retornoArrayMunicipio}" var="retornoArrayMunicipio" varStatus="stat">
                                                    <option mapa="${retornoArrayMunicipio.cdMapa}" value="${retornoArrayMunicipio.id},${retornoArrayMunicipio.cdMapa}" <c:if test="${retornoArrayMunicipio.id == municipio}" >selected</c:if> >${retornoArrayMunicipio.ds}</option>
                                                </c:forEach>
                                            </select>
                                            <i></i> 
                                        </label>
                                    </section>
                                </div>



                                <!---                MAPA DA PARAIBA                 -->

                                <div class="mppb_mapa_div div_central ">
                                    <div style="margin: 0pt; padding: 0pt; background-image: url(${pageContext.request.contextPath}/img/mapa/mapa_paraiba-800x600.gif); width: 800px; height: 471px;" class="mapitem_img_group">


                                        <span onmouseout="Mlib.x('cEv', '1', 'out')" onmouseover="Mlib.x('cEv', '1', 'over')" style="left: 64.6%; top: 49.6%; display: none;" id="comarca_mapimage_1_imgtip" class="mapatooltip">   Campina Grande
                                            <span id="comarca_mapimage_1_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_1_imgtip_inner1">Campina Grande</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S3/comarca_1.gif'); width: 200px; height: 45px; left: 64.6%; top: 49.6%; display: none;" class="mapitem_img" id="comarca_mapimage_1_imagem">
                                            <div onclick="Mapa._hideMenu('1')" style="display:none;" id="info_menu_1" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '1', 'out', '1')" onmouseover="Mlib.x('cEv', '1', 'over', '1')" onclick="return Mlib.x('cEv', '1', 'clk', '1')" style="width:3%;height:8%;left:65.5%;top:50%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '1', 'out', '1')" onmouseover="Mlib.x('cEv', '1', 'over', '1')" onclick="return Mlib.x('cEv', '1', 'clk', '1')" style="width:3.5%;height:3.5%;left:68.0%;top:52%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '1', 'out', '1')" onmouseover="Mlib.x('cEv', '1', 'over', '1')" onclick="return Mlib.x('cEv', '1', 'clk', '1')" style="width:3.0%;height:3.5%;left:71.5%;top:53.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '2', 'out')" onmouseover="Mlib.x('cEv', '2', 'over')" style="display:none;left:91.3% ;top:59.8%;" id="comarca_mapimage_2_imgtip" class="mapatooltip">   Caaporã
                                            <span id="comarca_mapimage_2_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_2_imgtip_inner1">Caaporã (Sede)</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_2.gif); width:40px; height:40px; left:91.3% ; top:59.8%;" class="mapitem_img" id="comarca_mapimage_2_imagem">
                                            <div onclick="Mapa._hideMenu('2')" style="display:none;" id="info_menu_2" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '2', 'out', '8')" onmouseover="Mlib.x('cEv', '2', 'over', '8')" onclick="return Mlib.x('cEv', '2', 'clk', '8')" style="width:2.58%;height:4%;left:91.5%;top:61%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '3', 'out')" onmouseover="Mlib.x('cEv', '3', 'over')" style="left: 74.4%; top: 41.2%; display: none;" id="comarca_mapimage_3_imgtip" class="mapatooltip">   Alagoa Grande
                                            <span id="comarca_mapimage_3_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_3_imgtip_inner1">Alagoa Grande (Sede)</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S2/comarca_3.gif'); width: 40px; height: 40px; left: 74.4%; top: 41.2%; display: none;" class="mapitem_img" id="comarca_mapimage_3_imagem">
                                            <div onclick="Mapa._hideMenu('3')" style="display:none;" id="info_menu_3" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '3', 'out', '')" onmouseover="Mlib.x('cEv', '3', 'over', '')" onclick="return Mlib.x('cEv', '3', 'clk', '')" style="width:3.2%;height:5.6%;left:75.2%;top:43.3%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '4', 'out')" onmouseover="Mlib.x('cEv', '4', 'over')" style="left: 71%; top: 44.5%; display: none;" id="comarca_mapimage_4_imgtip" class="mapatooltip">   Alagoa Nova
                                            <span id="comarca_mapimage_4_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_4_imgtip_inner1">Alagoa Nova (Sede)</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S1/comarca_4.gif'); width: 200px; height: 100px; left: 71%; top: 44.5%; display: none;" class="mapitem_img" id="comarca_mapimage_4_imagem">
                                            <div onclick="Mapa._hideMenu('4')" style="display:none;" id="info_menu_4" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '4', 'out', '')" onmouseover="Mlib.x('cEv', '4', 'over', '')" onclick="return Mlib.x('cEv', '4', 'clk', '')" style="width:3%;height:3%;left:71.7%;top:45%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '5', 'out')" onmouseover="Mlib.x('cEv', '5', 'over')" style="display:none;left:8.5%;top:26.8%;" id="comarca_mapimage_5_imgtip" class="mapatooltip">   São João do Rio do Peixe
                                            <span id="comarca_mapimage_5_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_5_imgtip_inner1">São João do Rio do Peixe</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S2/comarca_5.gif); width:200px; height:100px; left:8.5%; top:26.8%;" class="mapitem_img" id="comarca_mapimage_5_imagem">
                                            <div onclick="Mapa._hideMenu('5')" style="display:none;" id="info_menu_5" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '5', 'out', '')" onmouseover="Mlib.x('cEv', '5', 'over', '')" onclick="return Mlib.x('cEv', '5', 'clk', '')" style="width:2.7%;height:8.5%;left:10.2%;top:28%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '5', 'out', '')" onmouseover="Mlib.x('cEv', '5', 'over', '')" onclick="return Mlib.x('cEv', '5', 'clk', '')" style="width:1.7%;height:8.5%;left:11.2%;top:32.4;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '6', 'out')" onmouseover="Mlib.x('cEv', '6', 'over')" style="left: 70.8%; top: 21.6%; display: none;" id="comarca_mapimage_6_imgtip" class="mapatooltip">   Araruna
                                            <span id="comarca_mapimage_6_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_6_imgtip_inner1">Araruna</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S2/comarca_6.gif'); width: 200px; height: 100px; left: 70.8%; top: 21.6%; display: none;" class="mapitem_img" id="comarca_mapimage_6_imagem">
                                            <div onclick="Mapa._hideMenu('6')" style="display:none;" id="info_menu_6" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '6', 'out', '')" onmouseover="Mlib.x('cEv', '6', 'over', '')" onclick="return Mlib.x('cEv', '6', 'clk', '')" style="width:4%;height:4%;left:71%;top:23.4%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '7', 'out')" onmouseover="Mlib.x('cEv', '7', 'over')" style="left: 72%; top: 38.2%; display: none;" id="comarca_mapimage_7_imgtip" class="mapatooltip">   Areia
                                            <span id="comarca_mapimage_7_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_7_imgtip_inner1">Areia</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S2/comarca_7.gif'); width: 100px; height: 100px; left: 72%; top: 38.2%; display: none;" class="mapitem_img" id="comarca_mapimage_7_imagem">
                                            <div onclick="Mapa._hideMenu('7')" style="display:none;" id="info_menu_7" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '7', 'out', '')" onmouseover="Mlib.x('cEv', '7', 'over', '')" onclick="return Mlib.x('cEv', '7', 'clk', '')" style="width:3%;height:4.6%;left:72.8%;top:39.8%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '7', 'out', '')" onmouseover="Mlib.x('cEv', '7', 'over', '')" onclick="return Mlib.x('cEv', '7', 'clk', '')" style="width:4.2%;height:2.8%;left:72.8%;top:40.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '8', 'out')" onmouseover="Mlib.x('cEv', '8', 'over')" style="left: 74.9%; top: 28.2%; display: none;" id="comarca_mapimage_8_imgtip" class="mapatooltip">   Bananeiras
                                            <span id="comarca_mapimage_8_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_8_imgtip_inner1">Bananeiras</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S2/comarca_8.gif'); width: 100px; height: 100px; left: 74.9%; top: 28.2%; display: none;" class="mapitem_img" id="comarca_mapimage_8_imagem">
                                            <div onclick="Mapa._hideMenu('8')" style="display:none;" id="info_menu_8" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '8', 'out', '')" onmouseover="Mlib.x('cEv', '8', 'over', '')" onclick="return Mlib.x('cEv', '8', 'clk', '')" style="width:3%;height:5.6%;left:75.4%;top:29.8%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '9', 'out')" onmouseover="Mlib.x('cEv', '9', 'over')" style="display:none;left:43.8% ;top:48.5%;" id="comarca_mapimage_9_imgtip" class="mapatooltip">   Taperoá
                                            <span id="comarca_mapimage_9_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_9_imgtip_inner1">Taperoá (Sede)</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_9.gif); width:100px; height:100px; left:43.8% ; top:48.5%;" class="mapitem_img" id="comarca_mapimage_9_imagem">
                                            <div onclick="Mapa._hideMenu('9')" style="display:none;" id="info_menu_9" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '9', 'out', '')" onmouseover="Mlib.x('cEv', '9', 'over', '')" onclick="return Mlib.x('cEv', '9', 'clk', '')" style="width:8%;height:5%;left:44%;top:50.4%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '9', 'out', '')" onmouseover="Mlib.x('cEv', '9', 'over', '')" onclick="return Mlib.x('cEv', '9', 'clk', '')" style="width:2.8%;height:3%;left:49.4%;top:46%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '10', 'out')" onmouseover="Mlib.x('cEv', '10', 'over')" style="display:none;left:30.3%;top:13.9%;" id="comarca_mapimage_10_imgtip" class="mapatooltip">   Brejo do Cruz
                                            <span id="comarca_mapimage_10_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_10_imgtip_inner1">Brejo do Cruz</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_10.gif); width:100px; height:100px; left:30.3%; top:13.9%;" class="mapitem_img" id="comarca_mapimage_10_imagem">
                                            <div onclick="Mapa._hideMenu('10')" style="display:none;" id="info_menu_10" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '10', 'out', '')" onmouseover="Mlib.x('cEv', '10', 'over', '')" onclick="return Mlib.x('cEv', '10', 'clk', '')" style="width:5.7%;height:4%;left:30.5%;top:16%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '10', 'out', '')" onmouseover="Mlib.x('cEv', '10', 'over', '')" onclick="return Mlib.x('cEv', '10', 'clk', '')" style="width:3%;height:3%;left:30.5%;top:14%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '11', 'out')" onmouseover="Mlib.x('cEv', '11', 'over')" style="left: 57.6%; top: 56.6%; display: none;" id="comarca_mapimage_11_imgtip" class="mapatooltip">   Cabaceiras
                                            <span id="comarca_mapimage_11_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_11_imgtip_inner1">Cabaceiras (Sede)</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S1/comarca_11.gif'); width: 200px; height: 100px; left: 57.6%; top: 56.6%; display: none;" class="mapitem_img" id="comarca_mapimage_11_imagem">
                                            <div onclick="Mapa._hideMenu('11')" style="display:none;" id="info_menu_11" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '11', 'out', '')" onmouseover="Mlib.x('cEv', '11', 'over', '')" onclick="return Mlib.x('cEv', '11', 'clk', '')" style="width:3.8%;height:6%;left:58.6%;top:58.6%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '11', 'out', '')" onmouseover="Mlib.x('cEv', '11', 'over', '')" onclick="return Mlib.x('cEv', '11', 'clk', '')" style="width:2.5%;height:4%;left:59.4%;top:62%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '12', 'out')" onmouseover="Mlib.x('cEv', '12', 'over')" style="display:none;left:78.9%;top:23.6% ;" id="comarca_mapimage_12_imgtip" class="mapatooltip">   Caiçara
                                            <span id="comarca_mapimage_12_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_12_imgtip_inner1">Caiçara</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_12.gif); width:100px; height:100px; left:78.9%; top:23.6% ;" class="mapitem_img" id="comarca_mapimage_12_imagem">
                                            <div onclick="Mapa._hideMenu('12')" style="display:none;" id="info_menu_12" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '12', 'out', '')" onmouseover="Mlib.x('cEv', '12', 'over', '')" onclick="return Mlib.x('cEv', '12', 'clk', '')" style="width:2.8%;height:1.2%;left:80%;top:28.7%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '12', 'out', '')" onmouseover="Mlib.x('cEv', '12', 'over', '')" onclick="return Mlib.x('cEv', '12', 'clk', '')" style="width:0.8%;height:6%;left:81.3%;top:24%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '13', 'out')" onmouseover="Mlib.x('cEv', '13', 'over')" style="display:none;left:5.6% ;top:35.6%;" id="comarca_mapimage_13_imgtip" class="mapatooltip">   Cajazeiras
                                            <span id="comarca_mapimage_13_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_13_imgtip_inner1">Cajazeiras</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S2/comarca_13.gif); width:200px; height:100px; left:5.6% ; top:35.6%;" class="mapitem_img" id="comarca_mapimage_13_imagem">
                                            <div onclick="Mapa._hideMenu('13')" style="display:none;" id="info_menu_13" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '13', 'out', '')" onmouseover="Mlib.x('cEv', '13', 'over', '')" onclick="return Mlib.x('cEv', '13', 'clk', '')" style="width:5%;height:7%;left:6.3%;top:36.4%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '13', 'out', '')" onmouseover="Mlib.x('cEv', '13', 'over', '')" onclick="return Mlib.x('cEv', '13', 'clk', '')" style="width:3%;height:4%;left:6.0%;top:41.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '14', 'out')" onmouseover="Mlib.x('cEv', '14', 'over')" style="display:none;left:25%;top:11.0%;" id="comarca_mapimage_14_imgtip" class="mapatooltip">   Catolé do Rocha
                                            <span id="comarca_mapimage_14_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_14_imgtip_inner1">Catolé do Rocha (Sede)</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S2/comarca_14.gif); width:100px; height:100px; left:25%; top:11.0%;" class="mapitem_img" id="comarca_mapimage_14_imagem">
                                            <div onclick="Mapa._hideMenu('14')" style="display:none;" id="info_menu_14" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '14', 'out', '')" onmouseover="Mlib.x('cEv', '14', 'over', '')" onclick="return Mlib.x('cEv', '14', 'clk', '')" style="width:3.7%;height:9.0%;left:26.7%;top:11.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '14', 'out', '')" onmouseover="Mlib.x('cEv', '14', 'over', '')" onclick="return Mlib.x('cEv', '14', 'clk', '')" style="width:2.2%;height:6.0%;left:25.5%;top:16.2%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '16', 'out')" onmouseover="Mlib.x('cEv', '16', 'over')" style="display:none;left:62%;top:20.6%;" id="comarca_mapimage_16_imgtip" class="mapatooltip">   Cuité
                                            <span id="comarca_mapimage_16_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_16_imgtip_inner1">Cuité (Sede)</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S2/comarca_16.gif); width:200px; height:100px; left:62%; top:20.6%;" class="mapitem_img" id="comarca_mapimage_16_imagem">
                                            <div onclick="Mapa._hideMenu('16')" style="display:none;" id="info_menu_16" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '16', 'out', '')" onmouseover="Mlib.x('cEv', '16', 'over', '')" onclick="return Mlib.x('cEv', '16', 'clk', '')" style="width:3%;height:10%;left:64%;top:21%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '16', 'out', '')" onmouseover="Mlib.x('cEv', '16', 'over', '')" onclick="return Mlib.x('cEv', '16', 'clk', '')" style="width:4%;height:6%;left:62.5%;top:25%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '16', 'out', '')" onmouseover="Mlib.x('cEv', '16', 'over', '')" onclick="return Mlib.x('cEv', '16', 'clk', '')" style="width:5%;height:4%;left:65.7%;top:23.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '17', 'out')" onmouseover="Mlib.x('cEv', '17', 'over')" style="display:none;left:68.1%;top:41%;" id="comarca_mapimage_17_imgtip" class="mapatooltip">   Esperança
                                            <span id="comarca_mapimage_17_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_17_imgtip_inner1">Esperança</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S2/comarca_17.gif'); width: 100px; height: 100px; left: 68.1%; top: 41%; display: none;" class="mapitem_img" id="comarca_mapimage_17_imagem">
                                            <div onclick="Mapa._hideMenu('17')" style="display:none;" id="info_menu_17" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '17', 'out', '')" onmouseover="Mlib.x('cEv', '17', 'over', '')" onclick="return Mlib.x('cEv', '17', 'clk', '')" style="width:3.2%;height:3.0%;left:68.7%;top:42%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '18', 'out')" onmouseover="Mlib.x('cEv', '18', 'over')" style="left: 78.5%; top: 36%; display: none;" id="comarca_mapimage_18_imgtip" class="mapatooltip">   Guarabira
                                            <span id="comarca_mapimage_18_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_18_imgtip_inner1">Guarabira</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S2/comarca_18.gif'); width: 100px; height: 100px; left: 78.5%; top: 36%; display: none;" class="mapitem_img" id="comarca_mapimage_18_imagem">
                                            <div onclick="Mapa._hideMenu('18')" style="display:none;" id="info_menu_18" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '18', 'out', '')" onmouseover="Mlib.x('cEv', '18', 'over', '')" onclick="return Mlib.x('cEv', '18', 'clk', '')" style="width:2.8%;height:2.8%;left:78.9%;top:36.9%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '18', 'out', '')" onmouseover="Mlib.x('cEv', '18', 'over', '')" onclick="return Mlib.x('cEv', '18', 'clk', '')" style="width:2.1%;height:2.8%;left:79.8%;top:39.2%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '19', 'out')" onmouseover="Mlib.x('cEv', '19', 'over')" style="display:none;left:56.3%;top:42%;" id="comarca_mapimage_19_imgtip" class="mapatooltip">   Soledade
                                            <span id="comarca_mapimage_19_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_19_imgtip_inner1">Soledade</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S1/comarca_19.gif'); width: 200px; height: 100px; left: 56.3%; top: 42%; display: none;" class="mapitem_img" id="comarca_mapimage_19_imagem">
                                            <div onclick="Mapa._hideMenu('19')" style="display:none;" id="info_menu_19" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '19', 'out', '')" onmouseover="Mlib.x('cEv', '19', 'over', '')" onclick="return Mlib.x('cEv', '19', 'clk', '')" style="width:4%;height:8.5%;left:58.0%;top:44.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '19', 'out', '')" onmouseover="Mlib.x('cEv', '19', 'over', '')" onclick="return Mlib.x('cEv', '19', 'clk', '')" style="width:2.5%;height:10%;left:55.7%;top:42.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '20', 'out')" onmouseover="Mlib.x('cEv', '20', 'over')" style="left: 73.65%; top: 50.65%; display: none;" id="comarca_mapimage_20_imgtip" class="mapatooltip">   Ingá
                                            <span id="comarca_mapimage_20_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_20_imgtip_inner1">Ingá (Sede)</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S2/comarca_20.gif'); width: 200px; height: 45px; left: 73.65%; top: 50.65%; display: none;" class="mapitem_img" id="comarca_mapimage_20_imagem">
                                            <div onclick="Mapa._hideMenu('20')" style="display:none;" id="info_menu_20" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '20', 'out', '')" onmouseover="Mlib.x('cEv', '20', 'over', '')" onclick="return Mlib.x('cEv', '20', 'clk', '')" style="width:4%;height:3.2%;left:74%;top:54.3%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '20', 'out', '')" onmouseover="Mlib.x('cEv', '20', 'over', '')" onclick="return Mlib.x('cEv', '20', 'clk', '')" style="width:2.2%;height:4%;left:76.3%;top:51.1%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '21', 'out')" onmouseover="Mlib.x('cEv', '21', 'over')" style="display:none;left:13.9%;top:49.9%;" id="comarca_mapimage_21_imgtip" class="mapatooltip">   Itaporanga
                                            <span id="comarca_mapimage_21_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_21_imgtip_inner1">Itaporanga</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S2/comarca_21.gif); width:100px; height:100px; left:13.9%; top:49.9%;" class="mapitem_img" id="comarca_mapimage_21_imagem">
                                            <div onclick="Mapa._hideMenu('21')" style="display:none;" id="info_menu_21" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '21', 'out', '')" onmouseover="Mlib.x('cEv', '21', 'over', '')" onclick="return Mlib.x('cEv', '21', 'clk', '')" style="width:4.2%;height:6%;left:14.8%;top:53%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '21', 'out', '')" onmouseover="Mlib.x('cEv', '21', 'over', '')" onclick="return Mlib.x('cEv', '21', 'clk', '')" style="width:3%;height:5%;left:14.8%;top:50.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '22', 'out')" onmouseover="Mlib.x('cEv', '22', 'over')" style="display:none;left:5.4%;top:43.3%;" id="comarca_mapimage_22_imgtip" class="mapatooltip">   São José de Piranhas
                                            <span id="comarca_mapimage_22_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_22_imgtip_inner1">São José de Piranhas</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_22.gif); width:250px; height:100px; left:5.4%; top:43.3%;" class="mapitem_img" id="comarca_mapimage_22_imagem">
                                            <div onclick="Mapa._hideMenu('22')" style="display:none;" id="info_menu_22" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '22', 'out', '')" onmouseover="Mlib.x('cEv', '22', 'over', '')" onclick="return Mlib.x('cEv', '22', 'clk', '')" style="width:7.4%;height:5.7%;left:5.8%;top:45%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '22', 'out', '')" onmouseover="Mlib.x('cEv', '22', 'over', '')" onclick="return Mlib.x('cEv', '22', 'clk', '')" style="width:3.8%;height:5.7%;left:9%;top:43.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '23', 'out')" onmouseover="Mlib.x('cEv', '23', 'over')" style="left: 85.4%; top: 24.6%; display: none;" id="comarca_mapimage_23_imgtip" class="mapatooltip">   Mamanguape
                                            <span id="comarca_mapimage_23_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_23_imgtip_inner1">Mamanguape</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S2/comarca_23.gif'); width: 100px; height: 100px; left: 85.4%; top: 24.6%; display: none;" class="mapitem_img" id="comarca_mapimage_23_imagem">
                                            <div onclick="Mapa._hideMenu('23')" style="display:none;" id="info_menu_23" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '23', 'out', '7')" onmouseover="Mlib.x('cEv', '23', 'over', '7')" onclick="return Mlib.x('cEv', '23', 'clk', '7')" style="width:2.5%;height:3%;left:86%;top:26.8%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '23', 'out', '7')" onmouseover="Mlib.x('cEv', '23', 'over', '7')" onclick="return Mlib.x('cEv', '23', 'clk', '7')" style="width:2.3%;height:8%;left:86%;top:30%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '24', 'out')" onmouseover="Mlib.x('cEv', '24', 'over')" style="display:none;left:36.2%;top:72.2%;" id="comarca_mapimage_24_imgtip" class="mapatooltip">   Monteiro
                                            <span id="comarca_mapimage_24_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_24_imgtip_inner1">Monteiro</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S2/comarca_24.gif); width:200px; height:100px; left:36.2%; top:72.2%;" class="mapitem_img" id="comarca_mapimage_24_imagem">
                                            <div onclick="Mapa._hideMenu('24')" style="display:none;" id="info_menu_24" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '24', 'out', '2')" onmouseover="Mlib.x('cEv', '24', 'over', '2')" onclick="return Mlib.x('cEv', '24', 'clk', '2')" style="width:6.8%;height:7%;left:39%;top:75.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '24', 'out', '2')" onmouseover="Mlib.x('cEv', '24', 'over', '2')" onclick="return Mlib.x('cEv', '24', 'clk', '2')" style="width:4%;height:4%;left:36.5%;top:78%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '24', 'out', '2')" onmouseover="Mlib.x('cEv', '24', 'over', '2')" onclick="return Mlib.x('cEv', '24', 'clk', '2')" style="width:6.0%;height:3%;left:40%;top:82%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '24', 'out', '2')" onmouseover="Mlib.x('cEv', '24', 'over', '2')" onclick="return Mlib.x('cEv', '24', 'clk', '2')" style="width:4%;height:3%;left:41%;top:73%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '25', 'out')" onmouseover="Mlib.x('cEv', '25', 'over')" style="display:none;left:32.3% ;top:40.2%;" id="comarca_mapimage_25_imgtip" class="mapatooltip">   Patos
                                            <span id="comarca_mapimage_25_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_25_imgtip_inner1">Patos</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S2/comarca_25.gif'); width: 100px; height: 100px; left: 32.3%; top: 40.2%; display: none;" class="mapitem_img" id="comarca_mapimage_25_imagem">
                                            <div onclick="Mapa._hideMenu('25')" style="display:none;" id="info_menu_25" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '25', 'out', '')" onmouseover="Mlib.x('cEv', '25', 'over', '')" onclick="return Mlib.x('cEv', '25', 'clk', '')" style="width:6.8%;height:3.1%;left:33.5%;top:40.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '25', 'out', '')" onmouseover="Mlib.x('cEv', '25', 'over', '')" onclick="return Mlib.x('cEv', '25', 'clk', '')" style="width:4.3%;height:6.4%;left:36%;top:40.4%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '26', 'out')" onmouseover="Mlib.x('cEv', '26', 'over')" style="display:none;left:19% ;top:47.2%;" id="comarca_mapimage_26_imgtip" class="mapatooltip">   Piancó
                                            <span id="comarca_mapimage_26_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_26_imgtip_inner1">Piancó (Sede)</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S2/comarca_26.gif); width:100px; height:100px; left:19% ; top:47.2%;" class="mapitem_img" id="comarca_mapimage_26_imagem">
                                            <div onclick="Mapa._hideMenu('26')" style="display:none;" id="info_menu_26" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '26', 'out', '')" onmouseover="Mlib.x('cEv', '26', 'over', '')" onclick="return Mlib.x('cEv', '26', 'clk', '')" style="width:4%;height:6%;left:19.6%;top:50%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '26', 'out', '')" onmouseover="Mlib.x('cEv', '26', 'over', '')" onclick="return Mlib.x('cEv', '26', 'clk', '')" style="width:3.2%;height:6.0%;left:22%;top:47.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '27', 'out')" onmouseover="Mlib.x('cEv', '27', 'over')" style="display:none;left:56.9%;top:15.2%;" id="comarca_mapimage_27_imgtip" class="mapatooltip">   Picuí
                                            <span id="comarca_mapimage_27_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_27_imgtip_inner1">Picuí (Sede)</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S2/comarca_27.gif); width:200px; height:100px; left:56.9%; top:15.2%;" class="mapitem_img" id="comarca_mapimage_27_imagem">
                                            <div onclick="Mapa._hideMenu('27')" style="display:none;" id="info_menu_27" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '27', 'out', '')" onmouseover="Mlib.x('cEv', '27', 'over', '')" onclick="return Mlib.x('cEv', '27', 'clk', '')" style="width:4.7%;height:7%;left:57.5%;top:20.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '27', 'out', '')" onmouseover="Mlib.x('cEv', '27', 'over', '')" onclick="return Mlib.x('cEv', '27', 'clk', '')" style="width:2.5%;height:4%;left:59.2%;top:17%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '27', 'out', '')" onmouseover="Mlib.x('cEv', '27', 'over', '')" onclick="return Mlib.x('cEv', '27', 'clk', '')" style="width:5%;height:4%;left:57%;top:25%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '28', 'out')" onmouseover="Mlib.x('cEv', '28', 'over')" style="display:none;left:83.4%;top:52.2%;" id="comarca_mapimage_28_imgtip" class="mapatooltip">   Pilar
                                            <span id="comarca_mapimage_28_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_28_imgtip_inner1">Pilar</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S2/comarca_28.gif); width:100px; height:40px; left:83.4%; top:52.2%;" class="mapitem_img" id="comarca_mapimage_28_imagem">
                                            <div onclick="Mapa._hideMenu('28')" style="display:none;" id="info_menu_28" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '28', 'out', '9')" onmouseover="Mlib.x('cEv', '28', 'over', '9')" onclick="return Mlib.x('cEv', '28', 'clk', '9')" style="width:1.5%;height:5%;left:84%;top:52%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '29', 'out')" onmouseover="Mlib.x('cEv', '29', 'over')" style="display:none;left:86.5%;top:45% ;" id="comarca_mapimage_29_imgtip" class="mapatooltip">   Cruz do Espírito Santo
                                            <span id="comarca_mapimage_29_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_29_imgtip_inner1">Cruz do Espírito Santo</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_29.gif); width:200px; height:40px; left:86.5%; top:45% ;" class="mapitem_img" id="comarca_mapimage_29_imagem">
                                            <div onclick="Mapa._hideMenu('29')" style="display:none;" id="info_menu_29" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '29', 'out', '9')" onmouseover="Mlib.x('cEv', '29', 'over', '9')" onclick="return Mlib.x('cEv', '29', 'clk', '9')" style="width:2%;height:6%;left:87.5%;top:47%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '30', 'out')" onmouseover="Mlib.x('cEv', '30', 'over')" style="display:none;left:20.7%;top:28.7%;" id="comarca_mapimage_30_imgtip" class="mapatooltip">   Pombal
                                            <span id="comarca_mapimage_30_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_30_imgtip_inner1">Pombal</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S2/comarca_30.gif); width:100px; height:100px; left:20.7%; top:28.7%;" class="mapitem_img" id="comarca_mapimage_30_imagem">
                                            <div onclick="Mapa._hideMenu('30')" style="display:none;" id="info_menu_30" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '30', 'out', '')" onmouseover="Mlib.x('cEv', '30', 'over', '')" onclick="return Mlib.x('cEv', '30', 'clk', '')" style="width:6%;height:3.5%;left:21%;top:30%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '30', 'out', '')" onmouseover="Mlib.x('cEv', '30', 'over', '')" onclick="return Mlib.x('cEv', '30', 'clk', '')" style="width:6%;height:3.5%;left:23.8%;top:33%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '30', 'out', '')" onmouseover="Mlib.x('cEv', '30', 'over', '')" onclick="return Mlib.x('cEv', '30', 'clk', '')" style="width:3.2%;height:3.5%;left:23.8%;top:35.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '30', 'out', '')" onmouseover="Mlib.x('cEv', '30', 'over', '')" onclick="return Mlib.x('cEv', '30', 'clk', '')" style="width:3.2%;height:3.5%;left:21.3%;top:38.1%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '31', 'out')" onmouseover="Mlib.x('cEv', '31', 'over')" style="display:none;left:18.9%;top:64%;" id="comarca_mapimage_31_imgtip" class="mapatooltip">   Princesa Isabel
                                            <span id="comarca_mapimage_31_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_31_imgtip_inner1">Princesa Isabel</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S2/comarca_31.gif); width:200px; height:100px; left:18.9%; top:64%;" class="mapitem_img" id="comarca_mapimage_31_imagem">
                                            <div onclick="Mapa._hideMenu('31')" style="display:none;" id="info_menu_31" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '31', 'out', '')" onmouseover="Mlib.x('cEv', '31', 'over', '')" onclick="return Mlib.x('cEv', '31', 'clk', '')" style="width:2.6%;height:9%;left:20.1%;top:65%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '32', 'out')" onmouseover="Mlib.x('cEv', '32', 'over')" style="left: 43.6%; top: 33.9%; display: none;" id="comarca_mapimage_32_imgtip" class="mapatooltip">   Santa Luzia
                                            <span id="comarca_mapimage_32_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_32_imgtip_inner1">Santa Luzia</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S2/comarca_32.gif'); width: 100px; height: 100px; left: 43.6%; top: 33.9%; display: none;" class="mapitem_img" id="comarca_mapimage_32_imagem">
                                            <div onclick="Mapa._hideMenu('32')" style="display:none;" id="info_menu_32" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '32', 'out', '')" onmouseover="Mlib.x('cEv', '32', 'over', '')" onclick="return Mlib.x('cEv', '32', 'clk', '')" style="width:5%;height:3%;left:44.2%;top:38.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '32', 'out', '')" onmouseover="Mlib.x('cEv', '32', 'over', '')" onclick="return Mlib.x('cEv', '32', 'clk', '')" style="width:1.7%;height:10%;left:45.2%;top:35.2%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '32', 'out', '')" onmouseover="Mlib.x('cEv', '32', 'over', '')" onclick="return Mlib.x('cEv', '32', 'clk', '')" style="width:1.7%;height:3%;left:47.5%;top:39%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '33', 'out')" onmouseover="Mlib.x('cEv', '33', 'over')" style="display:none;left:87.1% ;top:40.1%;" id="comarca_mapimage_33_imgtip" class="mapatooltip">   Santa Rita
                                            <span id="comarca_mapimage_33_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_33_imgtip_inner1">Santa Rita</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S3/comarca_33.gif); width:100px; height:100px; left:87.1% ; top:40.1%;" class="mapitem_img" id="comarca_mapimage_33_imagem">
                                            <div onclick="Mapa._hideMenu('33')" style="display:none;" id="info_menu_33" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '33', 'out', '6')" onmouseover="Mlib.x('cEv', '33', 'over', '6')" onclick="return Mlib.x('cEv', '33', 'clk', '6')" style="width:6%;height:4%;left:87.5%;top:42%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '33', 'out', '6')" onmouseover="Mlib.x('cEv', '33', 'over', '6')" onclick="return Mlib.x('cEv', '33', 'clk', '6')" style="width:2.2%;height:13.5%;left:89.5%;top:41%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '33', 'out', '6')" onmouseover="Mlib.x('cEv', '33', 'over', '6')" onclick="return Mlib.x('cEv', '33', 'clk', '6')" style="width:4%;height:5.5%;left:89.5%;top:42.2%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '34', 'out')" onmouseover="Mlib.x('cEv', '34', 'over')" style="display:none;left:53%;top:55.5%;" id="comarca_mapimage_34_imgtip" class="mapatooltip">   São João do Cariri
                                            <span id="comarca_mapimage_34_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_34_imgtip_inner1">São João do Cariri</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S2/comarca_34.gif'); width: 200px; height: 100px; left: 53%; top: 55.5%; display: none;" class="mapitem_img" id="comarca_mapimage_34_imagem">
                                            <div onclick="Mapa._hideMenu('34')" style="display:none;" id="info_menu_34" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '34', 'out', '')" onmouseover="Mlib.x('cEv', '34', 'over', '')" onclick="return Mlib.x('cEv', '34', 'clk', '')" style="width:4.6%;height:6%;left:54%;top:56.6%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '34', 'out', '')" onmouseover="Mlib.x('cEv', '34', 'over', '')" onclick="return Mlib.x('cEv', '34', 'clk', '')" style="width:2.8%;height:13.4%;left:54.7%;top:56.6%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '34', 'out', '')" onmouseover="Mlib.x('cEv', '34', 'over', '')" onclick="return Mlib.x('cEv', '34', 'clk', '')" style="width:4%;height:5.5%;left:54.7%;top:56%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '35', 'out')" onmouseover="Mlib.x('cEv', '35', 'over')" style="display:none;left:84.2%;top:41.5%;" id="comarca_mapimage_35_imgtip" class="mapatooltip">   Sapé
                                            <span id="comarca_mapimage_35_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_35_imgtip_inner1">Sapé (Sede)</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S2/comarca_35.gif); width:40px; height:50px; left:84.2%; top:41.5%;" class="mapitem_img" id="comarca_mapimage_35_imagem">
                                            <div onclick="Mapa._hideMenu('35')" style="display:none;" id="info_menu_35" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '35', 'out', '9')" onmouseover="Mlib.x('cEv', '35', 'over', '9')" onclick="return Mlib.x('cEv', '35', 'clk', '9')" style="width:2.58%;height:8%;left:85%;top:42%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '36', 'out')" onmouseover="Mlib.x('cEv', '36', 'over')" style="left: 74.3%; top: 36%; display: none;" id="comarca_mapimage_36_imgtip" class="mapatooltip">   Serraria
                                            <span id="comarca_mapimage_36_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_36_imgtip_inner1">Serraria</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S1/comarca_36.gif'); width: 40px; height: 40px; left: 74.3%; top: 36%; display: none;" class="mapitem_img" id="comarca_mapimage_36_imagem">
                                            <div onclick="Mapa._hideMenu('36')" style="display:none;" id="info_menu_36" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '36', 'out', '')" onmouseover="Mlib.x('cEv', '36', 'over', '')" onclick="return Mlib.x('cEv', '36', 'clk', '')" style="width:1.8%;height:2.5%;left:75.4%;top:36%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '36', 'out', '')" onmouseover="Mlib.x('cEv', '36', 'over', '')" onclick="return Mlib.x('cEv', '36', 'clk', '')" style="width:2.2%;height:1.8%;left:75%;top:36.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '37', 'out')" onmouseover="Mlib.x('cEv', '37', 'over')" style="display:none;left:12.6%;top:27.9%;" id="comarca_mapimage_37_imgtip" class="mapatooltip">   Sousa
                                            <span id="comarca_mapimage_37_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_37_imgtip_inner1">Sousa</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S2/comarca_37.gif); width:100px; height:100px; left:12.6%; top:27.9%;" class="mapitem_img" id="comarca_mapimage_37_imagem">
                                            <div onclick="Mapa._hideMenu('37')" style="display:none;" id="info_menu_37" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '37', 'out', '')" onmouseover="Mlib.x('cEv', '37', 'over', '')" onclick="return Mlib.x('cEv', '37', 'clk', '')" style="width:6.2%;height:5.9%;left:13%;top:28.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '37', 'out', '')" onmouseover="Mlib.x('cEv', '37', 'over', '')" onclick="return Mlib.x('cEv', '37', 'clk', '')" style="width:4.4%;height:10%;left:14.4%;top:30%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '38', 'out')" onmouseover="Mlib.x('cEv', '38', 'over')" style="left: 81%; top: 53.8%; display: none;" id="comarca_mapimage_38_imgtip" class="mapatooltip">   Itabaiana
                                            <span id="comarca_mapimage_38_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_38_imgtip_inner1">Itabaiana</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S2/comarca_38.gif'); width: 100px; height: 40px; left: 81%; top: 53.8%; display: none;" class="mapitem_img" id="comarca_mapimage_38_imagem">
                                            <div onclick="Mapa._hideMenu('38')" style="display:none;" id="info_menu_38" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '38', 'out', '')" onmouseover="Mlib.x('cEv', '38', 'over', '')" onclick="return Mlib.x('cEv', '38', 'clk', '')" style="width:2.3%;height:6%;left:81.5%;top:54.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '39', 'out')" onmouseover="Mlib.x('cEv', '39', 'over')" style="display:none;left:36.8%;top:52%;" id="comarca_mapimage_39_imgtip" class="mapatooltip">   Teixeira
                                            <span id="comarca_mapimage_39_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_39_imgtip_inner1">Teixeira</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_39.gif); width:200px; height:20px; left:36.8%; top:52%;" class="mapitem_img" id="comarca_mapimage_39_imagem">
                                            <div onclick="Mapa._hideMenu('39')" style="display:none;" id="info_menu_39" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '39', 'out', '')" onmouseover="Mlib.x('cEv', '39', 'over', '')" onclick="return Mlib.x('cEv', '39', 'clk', '')" style="width:3%;height:4%;left:37%;top:52%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '40', 'out')" onmouseover="Mlib.x('cEv', '40', 'over')" style="display:none;left:71.5%;top:67.9%;" id="comarca_mapimage_40_imgtip" class="mapatooltip">   Umbuzeiro
                                            <span id="comarca_mapimage_40_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_40_imgtip_inner1">Umbuzeiro</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S2/comarca_40.gif'); width: 200px; height: 100px; left: 71.5%; top: 67.9%; display: none;" class="mapitem_img" id="comarca_mapimage_40_imagem">
                                            <div onclick="Mapa._hideMenu('40')" style="display:none;" id="info_menu_40" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '40', 'out', '')" onmouseover="Mlib.x('cEv', '40', 'over', '')" onclick="return Mlib.x('cEv', '40', 'clk', '')" style="width:5%;height:2.5%;left:71.7%;top:69.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '41', 'out')" onmouseover="Mlib.x('cEv', '41', 'over')" style="display:none;left:89.7%;top:54.2%;" id="comarca_mapimage_41_imgtip" class="mapatooltip">   Alhandra
                                            <span id="comarca_mapimage_41_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_41_imgtip_inner1">Alhandra</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S2/comarca_41.gif'); width: 100px; height: 40px; left: 89.7%; top: 54.2%; display: none;" class="mapitem_img" id="comarca_mapimage_41_imagem">
                                            <div onclick="Mapa._hideMenu('41')" style="display:none;" id="info_menu_41" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '41', 'out', '8')" onmouseover="Mlib.x('cEv', '41', 'over', '8')" onclick="return Mlib.x('cEv', '41', 'clk', '8')" style="width:2.58%;height:2%;left:90.2%;top:54.8%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '41', 'out', '8')" onmouseover="Mlib.x('cEv', '41', 'over', '8')" onclick="return Mlib.x('cEv', '41', 'clk', '8')" style="width:1.5%;height:3%;left:91.9%;top:56.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '42', 'out')" onmouseover="Mlib.x('cEv', '42', 'over')" style="display:none;left:8.4% ;top:51.4%;" id="comarca_mapimage_42_imgtip" class="mapatooltip">   Bonito de Santa Fé
                                            <span id="comarca_mapimage_42_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_42_imgtip_inner1">Bonito de Santa Fé</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_42.gif); width:200px; height:100px; left:8.4% ; top:51.4%;" class="mapitem_img" id="comarca_mapimage_42_imagem">
                                            <div onclick="Mapa._hideMenu('42')" style="display:none;" id="info_menu_42" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '42', 'out', '')" onmouseover="Mlib.x('cEv', '42', 'over', '')" onclick="return Mlib.x('cEv', '42', 'clk', '')" style="width:3%;height:5.4%;left:8.5%;top:52.8%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '45', 'out')" onmouseover="Mlib.x('cEv', '45', 'over')" style="display:none;left:42.5%;top:62.8%;" id="comarca_mapimage_45_imgtip" class="mapatooltip">   Sumé
                                            <span id="comarca_mapimage_45_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_45_imgtip_inner1">Sumé (Sede)</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_45.gif); width:100px; height:100px; left:42.5%; top:62.8%;" class="mapitem_img" id="comarca_mapimage_45_imagem">
                                            <div onclick="Mapa._hideMenu('45')" style="display:none;" id="info_menu_45" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '45', 'out', '2')" onmouseover="Mlib.x('cEv', '45', 'over', '2')" onclick="return Mlib.x('cEv', '45', 'clk', '2')" style="width:3.8%;height:12%;left:44.5%;top:64%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '45', 'out', '2')" onmouseover="Mlib.x('cEv', '45', 'over', '2')" onclick="return Mlib.x('cEv', '45', 'clk', '2')" style="width:3.8%;height:8%;left:45.5%;top:68.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '45', 'out', '2')" onmouseover="Mlib.x('cEv', '45', 'over', '2')" onclick="return Mlib.x('cEv', '45', 'clk', '2')" style="width:3.8%;height:5%;left:46.5%;top:71.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '45', 'out', '2')" onmouseover="Mlib.x('cEv', '45', 'over', '2')" onclick="return Mlib.x('cEv', '45', 'clk', '2')" style="width:3.8%;height:5%;left:44%;top:68.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '46', 'out')" onmouseover="Mlib.x('cEv', '46', 'over')" style="left: 72.1%; top: 27.8%; display: none;" id="comarca_mapimage_46_imgtip" class="mapatooltip">   Solânea
                                            <span id="comarca_mapimage_46_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_46_imgtip_inner1">Solânea (Sede)</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S2/comarca_46.gif'); width: 100px; height: 100px; left: 72.1%; top: 27.8%; display: none;" class="mapitem_img" id="comarca_mapimage_46_imagem">
                                            <div onclick="Mapa._hideMenu('46')" style="display:none;" id="info_menu_46" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '46', 'out', '')" onmouseover="Mlib.x('cEv', '46', 'over', '')" onclick="return Mlib.x('cEv', '46', 'clk', '')" style="width:2.8%;height:6.5%;left:72.5%;top:30%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '47', 'out')" onmouseover="Mlib.x('cEv', '47', 'over')" style="display:none;left:71.5%;top:61.6%;" id="comarca_mapimage_47_imgtip" class="mapatooltip">   Aroeiras
                                            <span id="comarca_mapimage_47_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_47_imgtip_inner1">Aroeiras</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S1/comarca_47.gif'); width: 100px; height: 40px; left: 71.5%; top: 61.6%; display: none;" class="mapitem_img" id="comarca_mapimage_47_imagem">
                                            <div onclick="Mapa._hideMenu('47')" style="display:none;" id="info_menu_47" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '47', 'out', '')" onmouseover="Mlib.x('cEv', '47', 'over', '')" onclick="return Mlib.x('cEv', '47', 'clk', '')" style="width:5%;height:2.5%;left:72%;top:62.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '47', 'out', '')" onmouseover="Mlib.x('cEv', '47', 'over', '')" onclick="return Mlib.x('cEv', '47', 'clk', '')" style="width:3.2%;height:5.5%;left:73.8%;top:62.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '48', 'out')" onmouseover="Mlib.x('cEv', '48', 'over')" style="left: 75.6%; top: 37.8%; display: none;" id="comarca_mapimage_48_imgtip" class="mapatooltip">   Pilões
                                            <span id="comarca_mapimage_48_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_48_imgtip_inner1">Pilões</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S1/comarca_48.gif'); width: 40px; height: 40px; left: 75.6%; top: 37.8%; display: none;" class="mapitem_img" id="comarca_mapimage_48_imagem">
                                            <div onclick="Mapa._hideMenu('48')" style="display:none;" id="info_menu_48" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '48', 'out', '')" onmouseover="Mlib.x('cEv', '48', 'over', '')" onclick="return Mlib.x('cEv', '48', 'clk', '')" style="width:1.8%;height:2.5%;left:75.8%;top:38%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '49', 'out')" onmouseover="Mlib.x('cEv', '49', 'over')" style="display:none;left:9.6% ;top:20.0%;" id="comarca_mapimage_49_imgtip" class="mapatooltip">   Uiraúna
                                            <span id="comarca_mapimage_49_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_49_imgtip_inner1">Uiraúna (Sede)</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_49.gif); width:200px; height:100px; left:9.6% ; top:20.0%;" class="mapitem_img" id="comarca_mapimage_49_imagem">
                                            <div onclick="Mapa._hideMenu('49')" style="display:none;" id="info_menu_49" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '49', 'out', '')" onmouseover="Mlib.x('cEv', '49', 'over', '')" onclick="return Mlib.x('cEv', '49', 'clk', '')" style="width:2.8%;height:5.6%;left:10.7%;top:21.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '49', 'out', '')" onmouseover="Mlib.x('cEv', '49', 'over', '')" onclick="return Mlib.x('cEv', '49', 'clk', '')" style="width:2.8%;height:4%;left:11.5%;top:23.1%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '49', 'out', '')" onmouseover="Mlib.x('cEv', '49', 'over', '')" onclick="return Mlib.x('cEv', '49', 'clk', '')" style="width:2.8%;height:2%;left:9.8%;top:25%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '50', 'out')" onmouseover="Mlib.x('cEv', '50', 'over')" style="left: 39%; top: 35%; display: none;" id="comarca_mapimage_50_imgtip" class="mapatooltip">   São Mamede
                                            <span id="comarca_mapimage_50_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_50_imgtip_inner1">São Mamede (Sede)</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S1/comarca_50.gif'); width: 100px; height: 100px; left: 39%; top: 35%; display: none;" class="mapitem_img" id="comarca_mapimage_50_imagem">
                                            <div onclick="Mapa._hideMenu('50')" style="display:none;" id="info_menu_50" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '50', 'out', '4')" onmouseover="Mlib.x('cEv', '50', 'over', '4')" onclick="return Mlib.x('cEv', '50', 'clk', '4')" style="width:4%;height:6.0%;left:39.5%;top:36.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '50', 'out', '4')" onmouseover="Mlib.x('cEv', '50', 'over', '4')" onclick="return Mlib.x('cEv', '50', 'clk', '4')" style="width:4.2%;height:5.0%;left:41.5%;top:40.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '51', 'out')" onmouseover="Mlib.x('cEv', '51', 'over')" style="display:none;left:77.6%;top:34.0%;" id="comarca_mapimage_51_imgtip" class="mapatooltip">   Pirpirituba
                                            <span id="comarca_mapimage_51_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_51_imgtip_inner1">Pirpirituba (Sede)</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_51.gif); width:40px; height:40px; left:77.6%; top:34.0%;" class="mapitem_img" id="comarca_mapimage_51_imagem">
                                            <div onclick="Mapa._hideMenu('51')" style="display:none;" id="info_menu_51" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '51', 'out', '')" onmouseover="Mlib.x('cEv', '51', 'over', '')" onclick="return Mlib.x('cEv', '51', 'clk', '')" style="width:3%;height:2%;left:77.8%;top:34.6%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '52', 'out')" onmouseover="Mlib.x('cEv', '52', 'over')" style="display:none;left:77.4% ;top:40.5%;" id="comarca_mapimage_52_imgtip" class="mapatooltip">   Alagoinha
                                            <span id="comarca_mapimage_52_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_52_imgtip_inner1">Alagoinha</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_52.gif); width:200px; height:100px; left:77.4% ; top:40.5%;" class="mapitem_img" id="comarca_mapimage_52_imagem">
                                            <div onclick="Mapa._hideMenu('52')" style="display:none;" id="info_menu_52" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '52', 'out', '')" onmouseover="Mlib.x('cEv', '52', 'over', '')" onclick="return Mlib.x('cEv', '52', 'clk', '')" style="width:2.6%;height:2.5%;left:77.4%;top:41%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '53', 'out')" onmouseover="Mlib.x('cEv', '53', 'over')" style="display:none;left:31.15%;top:34.7%;" id="comarca_mapimage_53_imgtip" class="mapatooltip">   Malta
                                            <span id="comarca_mapimage_53_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_53_imgtip_inner1">Malta</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_53.gif); width:200px; height:100px; left:31.15%; top:34.7%;" class="mapitem_img" id="comarca_mapimage_53_imagem">
                                            <div onclick="Mapa._hideMenu('53')" style="display:none;" id="info_menu_53" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '53', 'out', '')" onmouseover="Mlib.x('cEv', '53', 'over', '')" onclick="return Mlib.x('cEv', '53', 'clk', '')" style="width:1.8%;height:7%;left:31.5%;top:35.3%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '54', 'out')" onmouseover="Mlib.x('cEv', '54', 'over')" style="display:none;left:62.0% ;top:40.2%;" id="comarca_mapimage_54_imgtip" class="mapatooltip">   Pocinhos
                                            <span id="comarca_mapimage_54_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_54_imgtip_inner1">Pocinhos</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_54.gif); width:200px; height:100px; left:62.0% ; top:40.2%;" class="mapitem_img" id="comarca_mapimage_54_imagem">
                                            <div onclick="Mapa._hideMenu('54')" style="display:none;" id="info_menu_54" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '54', 'out', '')" onmouseover="Mlib.x('cEv', '54', 'over', '')" onclick="return Mlib.x('cEv', '54', 'clk', '')" style="width:5%;height:6.6%;left:63%;top:43%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '55', 'out')" onmouseover="Mlib.x('cEv', '55', 'over')" style="display:none;left:68.8%;top:38.1%;" id="comarca_mapimage_55_imgtip" class="mapatooltip">   Remígio
                                            <span id="comarca_mapimage_55_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_55_imgtip_inner1">Remígio (Sede)</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S1/comarca_55.gif'); width: 100px; height: 100px; left: 68.8%; top: 38.1%; display: none;" class="mapitem_img" id="comarca_mapimage_55_imagem">
                                            <div onclick="Mapa._hideMenu('55')" style="display:none;" id="info_menu_55" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '55', 'out', '')" onmouseover="Mlib.x('cEv', '55', 'over', '')" onclick="return Mlib.x('cEv', '55', 'clk', '')" style="width:3.7%;height:3.5%;left:69%;top:39.0%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '56', 'out')" onmouseover="Mlib.x('cEv', '56', 'over')" style="display:none;left:19.1% ;top:41.7%;" id="comarca_mapimage_56_imgtip" class="mapatooltip">   Coremas
                                            <span id="comarca_mapimage_56_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_56_imgtip_inner1">Coremas</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_56.gif); width:200px; height:100px; left:19.1% ; top:41.7%;" class="mapitem_img" id="comarca_mapimage_56_imagem">
                                            <div onclick="Mapa._hideMenu('56')" style="display:none;" id="info_menu_56" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '56', 'out', '')" onmouseover="Mlib.x('cEv', '56', 'over', '')" onclick="return Mlib.x('cEv', '56', 'clk', '')" style="width:5.8%;height:3.1%;left:19.5%;top:44%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '56', 'out', '')" onmouseover="Mlib.x('cEv', '56', 'over', '')" onclick="return Mlib.x('cEv', '56', 'clk', '')" style="width:1.7%;height:3.3%;left:20.5%;top:46.8%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '56', 'out', '')" onmouseover="Mlib.x('cEv', '56', 'over', '')" onclick="return Mlib.x('cEv', '56', 'clk', '')" style="width:3.5%;height:2%;left:19.6%;top:42.6%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '57', 'out')" onmouseover="Mlib.x('cEv', '57', 'over')" style="display:none;left:86.3%;top:52.4%;" id="comarca_mapimage_57_imgtip" class="mapatooltip">   Pedras de Fogo
                                            <span id="comarca_mapimage_57_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_57_imgtip_inner1">Pedras de Fogo</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S2/comarca_57.gif); width:100px; height:40px; left:86.3%; top:52.4%;" class="mapitem_img" id="comarca_mapimage_57_imagem">
                                            <div onclick="Mapa._hideMenu('57')" style="display:none;" id="info_menu_57" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '57', 'out', '8')" onmouseover="Mlib.x('cEv', '57', 'over', '8')" onclick="return Mlib.x('cEv', '57', 'clk', '8')" style="width:2.58%;height:6.2%;left:86.8%;top:53.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '57', 'out', '8')" onmouseover="Mlib.x('cEv', '57', 'over', '8')" onclick="return Mlib.x('cEv', '57', 'clk', '8')" style="width:4.5%;height:3.8%;left:86.8%;top:56%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '58', 'out')" onmouseover="Mlib.x('cEv', '58', 'over')" style="left: 87.7%; top: 27.5%; display: none;" id="comarca_mapimage_58_imgtip" class="mapatooltip">   Rio Tinto
                                            <span id="comarca_mapimage_58_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_58_imgtip_inner1">Rio Tinto</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S2/comarca_58.gif'); width: 100px; height: 100px; left: 87.7%; top: 27.5%; display: none;" class="mapitem_img" id="comarca_mapimage_58_imagem">
                                            <div onclick="Mapa._hideMenu('58')" style="display:none;" id="info_menu_58" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '58', 'out', '7')" onmouseover="Mlib.x('cEv', '58', 'over', '7')" onclick="return Mlib.x('cEv', '58', 'clk', '7')" style="width:2%;height:3.6%;left:88%;top:28.8%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '58', 'out', '7')" onmouseover="Mlib.x('cEv', '58', 'over', '7')" onclick="return Mlib.x('cEv', '58', 'clk', '7')" style="width:1%;height:11%;left:88%;top:29.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '58', 'out', '7')" onmouseover="Mlib.x('cEv', '58', 'over', '7')" onclick="return Mlib.x('cEv', '58', 'clk', '7')" style="width:4.5%;height:5%;left:88%;top:35%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '60', 'out')" onmouseover="Mlib.x('cEv', '60', 'over')" style="display:none;left:78.3%;top:30.0%;" id="comarca_mapimage_60_imgtip" class="mapatooltip">   Belém
                                            <span id="comarca_mapimage_60_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_60_imgtip_inner1">Belém (Sede)</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_60.gif); width:100px; height:100px; left:78.3%; top:30.0%;" class="mapitem_img" id="comarca_mapimage_60_imagem">
                                            <div onclick="Mapa._hideMenu('60')" style="display:none;" id="info_menu_60" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '60', 'out', '')" onmouseover="Mlib.x('cEv', '60', 'over', '')" onclick="return Mlib.x('cEv', '60', 'clk', '')" style="width:1.4%;height:4%;left:78.4%;top:30.2%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '61', 'out')" onmouseover="Mlib.x('cEv', '61', 'over')" style="display:none;left:82.1%;top:42.3%;" id="comarca_mapimage_61_imgtip" class="mapatooltip">   Mari
                                            <span id="comarca_mapimage_61_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_61_imgtip_inner1">Mari (Sede)</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_61.gif); width:40px; height:40px; left:82.1%; top:42.3%;" class="mapitem_img" id="comarca_mapimage_61_imagem">
                                            <div onclick="Mapa._hideMenu('61')" style="display:none;" id="info_menu_61" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '61', 'out', '9')" onmouseover="Mlib.x('cEv', '61', 'over', '9')" onclick="return Mlib.x('cEv', '61', 'clk', '9')" style="width:2.58%;height:4%;left:82.4%;top:43.2%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '63', 'out')" onmouseover="Mlib.x('cEv', '63', 'over')" style="display:none;left:52.0%;top:39.5%;" id="comarca_mapimage_63_imgtip" class="mapatooltip">   Juazerinho
                                            <span id="comarca_mapimage_63_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_63_imgtip_inner1">Juazerinho (Sede)</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_63.gif); width:200px; height:100px; left:52.0%; top:39.5%;" class="mapitem_img" id="comarca_mapimage_63_imagem">
                                            <div onclick="Mapa._hideMenu('63')" style="display:none;" id="info_menu_63" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '63', 'out', '')" onmouseover="Mlib.x('cEv', '63', 'over', '')" onclick="return Mlib.x('cEv', '63', 'clk', '')" style="width:4.2%;height:4.5%;left:52.5%;top:44.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '63', 'out', '')" onmouseover="Mlib.x('cEv', '63', 'over', '')" onclick="return Mlib.x('cEv', '63', 'clk', '')" style="width:2.5%;height:10%;left:54.2%;top:41%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '68', 'out')" onmouseover="Mlib.x('cEv', '68', 'over')" style="display:none;left:40.8%;top:67%;" id="comarca_mapimage_68_imgtip" class="mapatooltip">   Prata
                                            <span id="comarca_mapimage_68_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_68_imgtip_inner1">Prata</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S1/comarca_68.gif'); width: 200px; height: 100px; left: 40.8%; top: 67%; display: none;" class="mapitem_img" id="comarca_mapimage_68_imagem">
                                            <div onclick="Mapa._hideMenu('68')" style="display:none;" id="info_menu_68" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '68', 'out', '2')" onmouseover="Mlib.x('cEv', '68', 'over', '2')" onclick="return Mlib.x('cEv', '68', 'clk', '2')" style="width:3%;height:5%;left:41%;top:69%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '73', 'out')" onmouseover="Mlib.x('cEv', '73', 'over')" style="display:none;left:94%;top:43%;" id="comarca_mapimage_73_imgtip" class="mapatooltip">   Cabedelo
                                            <span id="comarca_mapimage_73_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_73_imgtip_inner1">Cabedelo (Sede)</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S3/comarca_73.gif); width:100px; height:100px; left:94%; top:43%;" class="mapitem_img" id="comarca_mapimage_73_imagem">
                                            <div onclick="Mapa._hideMenu('73')" style="display:none;" id="info_menu_73" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '73', 'out', '6')" onmouseover="Mlib.x('cEv', '73', 'over', '6')" onclick="return Mlib.x('cEv', '73', 'clk', '6')" style="width:1.2%;height:3.5%;left:94%;top:44.2%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '74', 'out')" onmouseover="Mlib.x('cEv', '74', 'over')" style="left: 62.35%; top: 57.1%; display: none;" id="comarca_mapimage_74_imgtip" class="mapatooltip">   Boqueirão
                                            <span id="comarca_mapimage_74_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_74_imgtip_inner1">Boqueirão (Sede)</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S1/comarca_74.gif'); width: 200px; height: 100px; left: 62.35%; top: 57.1%; display: none;" class="mapitem_img" id="comarca_mapimage_74_imagem">
                                            <div onclick="Mapa._hideMenu('74')" style="display:none;" id="info_menu_74" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '74', 'out', '')" onmouseover="Mlib.x('cEv', '74', 'over', '')" onclick="return Mlib.x('cEv', '74', 'clk', '')" style="width:2.8%;height:10%;left:62.5%;top:58%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '74', 'out', '')" onmouseover="Mlib.x('cEv', '74', 'over', '')" onclick="return Mlib.x('cEv', '74', 'clk', '')" style="width:1.8%;height:4%;left:64.5%;top:61.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '75', 'out')" onmouseover="Mlib.x('cEv', '75', 'over')" style="display:none;left:91.6%;top:47.2%;" id="comarca_mapimage_75_imgtip" class="mapatooltip">   Bayeux
                                            <span id="comarca_mapimage_75_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_75_imgtip_inner1">Bayeux</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S3/comarca_75.gif); width:100px; height:100px; left:91.6%; top:47.2%;" class="mapitem_img" id="comarca_mapimage_75_imagem">
                                            <div onclick="Mapa._hideMenu('75')" style="display:none;" id="info_menu_75" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '75', 'out', '6')" onmouseover="Mlib.x('cEv', '75', 'over', '6')" onclick="return Mlib.x('cEv', '75', 'clk', '6')" style="width:1.5%;height:2%;left:91.5%;top:48.8%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '75', 'out', '6')" onmouseover="Mlib.x('cEv', '75', 'over', '6')" onclick="return Mlib.x('cEv', '75', 'clk', '6')" style="width:1%;height:2.8%;left:92.4%;top:47.4%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '76', 'out')" onmouseover="Mlib.x('cEv', '76', 'over')" style="display:none;left:78.3%;top:45.2% ;" id="comarca_mapimage_76_imgtip" class="mapatooltip">   Gurinhém
                                            <span id="comarca_mapimage_76_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_76_imgtip_inner1">Gurinhém (Sede)</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_76.gif); width:100px; height:40px; left:78.3%; top:45.2% ;" class="mapitem_img" id="comarca_mapimage_76_imagem">
                                            <div onclick="Mapa._hideMenu('76')" style="display:none;" id="info_menu_76" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '76', 'out', '')" onmouseover="Mlib.x('cEv', '76', 'over', '')" onclick="return Mlib.x('cEv', '76', 'clk', '')" style="width:3.5%;height:4%;left:79%;top:46.8%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '76', 'out', '')" onmouseover="Mlib.x('cEv', '76', 'over', '')" onclick="return Mlib.x('cEv', '76', 'clk', '')" style="width:2.5%;height:4%;left:80%;top:48.8%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '78', 'out')" onmouseover="Mlib.x('cEv', '78', 'over')" style="left: 61.6%; top: 27.4%; display: none;" id="comarca_mapimage_78_imgtip" class="mapatooltip">   Barra de Santa Rosa
                                            <span id="comarca_mapimage_78_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_78_imgtip_inner1">Barra de Santa Rosa</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S1/comarca_78.gif'); width: 200px; height: 100px; left: 61.6%; top: 27.4%; display: none;" class="mapitem_img" id="comarca_mapimage_78_imagem">
                                            <div onclick="Mapa._hideMenu('78')" style="display:none;" id="info_menu_78" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '78', 'out', '')" onmouseover="Mlib.x('cEv', '78', 'over', '')" onclick="return Mlib.x('cEv', '78', 'clk', '')" style="width:4.5%;height:8%;left:64.5%;top:30%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '78', 'out', '')" onmouseover="Mlib.x('cEv', '78', 'over', '')" onclick="return Mlib.x('cEv', '78', 'clk', '')" style="width:4.5%;height:5%;left:62%;top:35%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '83', 'out')" onmouseover="Mlib.x('cEv', '83', 'over')" style="left: 70%; top: 25.6%; display: none;" id="comarca_mapimage_83_imgtip" class="mapatooltip">   Cacimba de Dentro
                                            <span id="comarca_mapimage_83_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_83_imgtip_inner1">Cacimba de Dentro (Sede)</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S1/comarca_83.gif'); width: 200px; height: 100px; left: 70%; top: 25.6%; display: none;" class="mapitem_img" id="comarca_mapimage_83_imagem">
                                            <div onclick="Mapa._hideMenu('83')" style="display:none;" id="info_menu_83" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '83', 'out', '')" onmouseover="Mlib.x('cEv', '83', 'over', '')" onclick="return Mlib.x('cEv', '83', 'clk', '')" style="width:3.5%;height:4%;left:70%;top:27%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '88', 'out')" onmouseover="Mlib.x('cEv', '88', 'over')" style="display:none;left:30.9% ;top:19.8%;" id="comarca_mapimage_88_imgtip" class="mapatooltip">   São Bento
                                            <span id="comarca_mapimage_88_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_88_imgtip_inner1">São Bento</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_88.gif); width:100px; height:100px; left:30.9% ; top:19.8%;" class="mapitem_img" id="comarca_mapimage_88_imagem">
                                            <div onclick="Mapa._hideMenu('88')" style="display:none;" id="info_menu_88" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '88', 'out', '')" onmouseover="Mlib.x('cEv', '88', 'over', '')" onclick="return Mlib.x('cEv', '88', 'clk', '')" style="width:4.2%;height:4.5%;left:31.5%;top:20.4%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '91', 'out')" onmouseover="Mlib.x('cEv', '91', 'over')" style="display:none;left:46.8%;top:58.8%;" id="comarca_mapimage_91_imgtip" class="mapatooltip">   Serra Branca
                                            <span id="comarca_mapimage_91_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_91_imgtip_inner1">Serra Branca</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S1/comarca_91.gif'); width: 200px; height: 100px; left: 46.8%; top: 58.8%; display: none;" class="mapitem_img" id="comarca_mapimage_91_imagem">
                                            <div onclick="Mapa._hideMenu('91')" style="display:none;" id="info_menu_91" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '91', 'out', '2')" onmouseover="Mlib.x('cEv', '91', 'over', '2')" onclick="return Mlib.x('cEv', '91', 'clk', '2')" style="width:3.3%;height:1.8%;left:47%;top:63.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '91', 'out', '2')" onmouseover="Mlib.x('cEv', '91', 'over', '2')" onclick="return Mlib.x('cEv', '91', 'clk', '2')" style="width:6%;height:4%;left:48.5%;top:62.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '91', 'out', '2')" onmouseover="Mlib.x('cEv', '91', 'over', '2')" onclick="return Mlib.x('cEv', '91', 'clk', '2')" style="width:3.2%;height:9%;left:48.5%;top:62.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '91', 'out', '2')" onmouseover="Mlib.x('cEv', '91', 'over', '2')" onclick="return Mlib.x('cEv', '91', 'clk', '2')" style="width:3.3%;height:7%;left:50.5%;top:59.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '91', 'out', '2')" onmouseover="Mlib.x('cEv', '91', 'over', '2')" onclick="return Mlib.x('cEv', '91', 'clk', '2')" style="width:2.5%;height:2.5%;left:52.8%;top:63.3%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '92', 'out')" onmouseover="Mlib.x('cEv', '92', 'over')" style="display:none;left:5.5% ;top:57%;" id="comarca_mapimage_92_imgtip" class="mapatooltip">   Conceição
                                            <span id="comarca_mapimage_92_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_92_imgtip_inner1">Conceição</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S2/comarca_92.gif); width:100px; height:100px; left:5.5% ; top:57%;" class="mapitem_img" id="comarca_mapimage_92_imagem">
                                            <div onclick="Mapa._hideMenu('92')" style="display:none;" id="info_menu_92" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '92', 'out', '')" onmouseover="Mlib.x('cEv', '92', 'over', '')" onclick="return Mlib.x('cEv', '92', 'clk', '')" style="width:3.5%;height:5.6%;left:6.5%;top:61.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '92', 'out', '')" onmouseover="Mlib.x('cEv', '92', 'over', '')" onclick="return Mlib.x('cEv', '92', 'clk', '')" style="width:4%;height:3%;left:7.8%;top:58.3%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '92', 'out', '')" onmouseover="Mlib.x('cEv', '92', 'over', '')" onclick="return Mlib.x('cEv', '92', 'clk', '')" style="width:3.8%;height:3.2%;left:7.5%;top:65.6%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '94', 'out')" onmouseover="Mlib.x('cEv', '94', 'over')" style="display:none;left:27% ;top:58.5%;" id="comarca_mapimage_94_imgtip" class="mapatooltip">   Água Branca
                                            <span id="comarca_mapimage_94_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_94_imgtip_inner1">Água Branca (Sede)</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_94.gif); width:100px; height:100px; left:27% ; top:58.5%;" class="mapitem_img" id="comarca_mapimage_94_imagem">
                                            <div onclick="Mapa._hideMenu('94')" style="display:none;" id="info_menu_94" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '94', 'out', '')" onmouseover="Mlib.x('cEv', '94', 'over', '')" onclick="return Mlib.x('cEv', '94', 'clk', '')" style="width:2.5%;height:4.1%;left:28%;top:60.4%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '94', 'out', '')" onmouseover="Mlib.x('cEv', '94', 'over', '')" onclick="return Mlib.x('cEv', '94', 'clk', '')" style="width:1.5%;height:1.5%;left:27.4%;top:64.6%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '95', 'out')" onmouseover="Mlib.x('cEv', '95', 'over')" style="left: 72%; top: 36.5%; display: none;" id="comarca_mapimage_95_imgtip" class="mapatooltip">   Arara
                                            <span id="comarca_mapimage_95_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_95_imgtip_inner1">Arara (Sede)</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S1/comarca_95.gif'); width: 100px; height: 100px; left: 72%; top: 36.5%; display: none;" class="mapitem_img" id="comarca_mapimage_95_imagem">
                                            <div onclick="Mapa._hideMenu('95')" style="display:none;" id="info_menu_95" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '95', 'out', '')" onmouseover="Mlib.x('cEv', '95', 'over', '')" onclick="return Mlib.x('cEv', '95', 'clk', '')" style="width:3.2%;height:2.5%;left:72.2%;top:37%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '98', 'out')" onmouseover="Mlib.x('cEv', '98', 'over')" style="left: 67.3%; top: 55%; display: none;" id="comarca_mapimage_98_imgtip" class="mapatooltip">   Queimadas
                                            <span id="comarca_mapimage_98_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_98_imgtip_inner1">Queimadas</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S2/comarca_98.gif'); width: 200px; height: 45px; left: 67.3%; top: 55%; display: none;" class="mapitem_img" id="comarca_mapimage_98_imagem">
                                            <div onclick="Mapa._hideMenu('98')" style="display:none;" id="info_menu_98" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '98', 'out', '1')" onmouseover="Mlib.x('cEv', '98', 'over', '1')" onclick="return Mlib.x('cEv', '98', 'clk', '1')" style="width:3.75%;height:3.5%;left:67.7%;top:60%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '98', 'out', '1')" onmouseover="Mlib.x('cEv', '98', 'over', '1')" onclick="return Mlib.x('cEv', '98', 'clk', '1')" style="width:3.75%;height:3.5%;left:67.7%;top:57%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '98', 'out', '1')" onmouseover="Mlib.x('cEv', '98', 'over', '1')" onclick="return Mlib.x('cEv', '98', 'clk', '1')" style="width:3.75%;height:3.5%;left:67.7%;top:54%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '107', 'out')" onmouseover="Mlib.x('cEv', '107', 'over')" style="display:none;left:81.5%;top:24.1%;" id="comarca_mapimage_107_imgtip" class="mapatooltip">   Jacaraú
                                            <span id="comarca_mapimage_107_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_107_imgtip_inner1">Jacaraú (Sede)</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/S2/comarca_107.gif'); width: 100px; height: 100px; left: 81.5%; top: 24.1%; display: none;" class="mapitem_img" id="comarca_mapimage_107_imagem">
                                            <div onclick="Mapa._hideMenu('107')" style="display:none;" id="info_menu_107" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '107', 'out', '')" onmouseover="Mlib.x('cEv', '107', 'over', '')" onclick="return Mlib.x('cEv', '107', 'clk', '')" style="width:4%;height:2.8%;left:82%;top:25.8%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '107', 'out', '')" onmouseover="Mlib.x('cEv', '107', 'over', '')" onclick="return Mlib.x('cEv', '107', 'clk', '')" style="width:3%;height:2.8%;left:83.7%;top:26.8%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '107', 'out', '')" onmouseover="Mlib.x('cEv', '107', 'over', '')" onclick="return Mlib.x('cEv', '107', 'clk', '')" style="width:1.5%;height:2.8%;left:85%;top:28%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '116', 'out')" onmouseover="Mlib.x('cEv', '116', 'over')" style="display:none;left:19.4%;top:55.3%;" id="comarca_mapimage_116_imgtip" class="mapatooltip">   Santana dos Garrotes
                                            <span id="comarca_mapimage_116_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_116_imgtip_inner1">Santana dos Garrotes</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_116.gif); width:200px; height:100px; left:19.4%; top:55.3%;" class="mapitem_img" id="comarca_mapimage_116_imagem">
                                            <div onclick="Mapa._hideMenu('116')" style="display:none;" id="info_menu_116" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '116', 'out', '')" onmouseover="Mlib.x('cEv', '116', 'over', '')" onclick="return Mlib.x('cEv', '116', 'clk', '')" style="width:4.4%;height:3.8%;left:19.9%;top:57%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '116', 'out', '')" onmouseover="Mlib.x('cEv', '116', 'over', '')" onclick="return Mlib.x('cEv', '116', 'clk', '')" style="width:2.4%;height:4%;left:21.4%;top:58.7%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '117', 'out')" onmouseover="Mlib.x('cEv', '117', 'over')" style="display:none;left:26% ;top:25.0%;" id="comarca_mapimage_117_imgtip" class="mapatooltip">   Paulista
                                            <span id="comarca_mapimage_117_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_117_imgtip_inner1">Paulista (Sede)</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_117.gif); width:100px; height:100px; left:26% ; top:25.0%;" class="mapitem_img" id="comarca_mapimage_117_imagem">
                                            <div onclick="Mapa._hideMenu('117')" style="display:none;" id="info_menu_117" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '117', 'out', '')" onmouseover="Mlib.x('cEv', '117', 'over', '')" onclick="return Mlib.x('cEv', '117', 'clk', '')" style="width:7.4%;height:2.5%;left:26%;top:28%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '117', 'out', '')" onmouseover="Mlib.x('cEv', '117', 'over', '')" onclick="return Mlib.x('cEv', '117', 'clk', '')" style="width:6%;height:6.5%;left:27.5%;top:26%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '120', 'out')" onmouseover="Mlib.x('cEv', '120', 'over')" style="display:none;left:80% ;top:34.2% ;" id="comarca_mapimage_120_imgtip" class="mapatooltip">   Araçagi
                                            <span id="comarca_mapimage_120_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_120_imgtip_inner1">Araçagi (Sede)</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_120.gif); width:40px; height:40px; left:80% ; top:34.2% ;" class="mapitem_img" id="comarca_mapimage_120_imagem">
                                            <div onclick="Mapa._hideMenu('120')" style="display:none;" id="info_menu_120" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '120', 'out', '')" onmouseover="Mlib.x('cEv', '120', 'over', '')" onclick="return Mlib.x('cEv', '120', 'clk', '')" style="width:1.8%;height:6%;left:81.8%;top:35.2%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '121', 'out')" onmouseover="Mlib.x('cEv', '121', 'over')" style="display:none;left:91%;top:38.5%;" id="comarca_mapimage_121_imgtip" class="mapatooltip">   Lucena
                                            <span id="comarca_mapimage_121_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_121_imgtip_inner1">Lucena (Sede)</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_121.gif); width:200px; height:45px; left:91%; top:38.5%;" class="mapitem_img" id="comarca_mapimage_121_imagem">
                                            <div onclick="Mapa._hideMenu('121')" style="display:none;" id="info_menu_121" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '121', 'out', '6')" onmouseover="Mlib.x('cEv', '121', 'over', '6')" onclick="return Mlib.x('cEv', '121', 'clk', '6')" style="width:3.5%;height:4%;left:91%;top:39%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '122', 'out')" onmouseover="Mlib.x('cEv', '122', 'over')" style="display:none;left:15.4% ;top:39%;" id="comarca_mapimage_122_imgtip" class="mapatooltip">   São José da Lagoa Tapada
                                            <span id="comarca_mapimage_122_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_122_imgtip_inner1">São José da Lagoa Tapada (Sede)</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S1/comarca_122.gif); width:200px; height:60px; left:15.4% ; top:39%;" class="mapitem_img" id="comarca_mapimage_122_imagem">
                                            <div onclick="Mapa._hideMenu('122')" style="display:none;" id="info_menu_122" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '122', 'out', '')" onmouseover="Mlib.x('cEv', '122', 'over', '')" onclick="return Mlib.x('cEv', '122', 'clk', '')" style="width:5.2%;height:3.7%;left:15.5%;top:40%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('cEv', '200', 'out')" onmouseover="Mlib.x('cEv', '200', 'over')" style="display:none;left:91.5%;top:46.2%;" id="comarca_mapimage_200_imgtip" class="mapatooltip">   João Pessoa
                                            <span id="comarca_mapimage_200_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="comarca_mapimage_200_imgtip_inner1">João Pessoa</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/S3/comarca_200.gif); width:200px; height:45px; left:91.5%; top:46.2%;" class="mapitem_img" id="comarca_mapimage_200_imagem">
                                            <div onclick="Mapa._hideMenu('200')" style="display:none;" id="info_menu_200" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('cEv', '200', 'out', '6')" onmouseover="Mlib.x('cEv', '200', 'over', '6')" onclick="return Mlib.x('cEv', '200', 'clk', '6')" style="width:2.5%;height:5%;left:93%;top:47.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('cEv', '200', 'out', '6')" onmouseover="Mlib.x('cEv', '200', 'over', '6')" onclick="return Mlib.x('cEv', '200', 'clk', '6')" style="width:1.5%;height:2%;left:91.5%;top:50.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5218', 'out')" onmouseover="Mlib.x('tEv', '5218', 'over')" style="display:none;left:20.9%;top:33.2%;" id="termo_mapimage_5218_imgtip" class="mapatooltip">   São Domingos de Pombal
                                            <span id="termo_mapimage_5218_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5218_imgtip_inner1">POMBAL</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5218.gif); width:200px; height:45px; left:20.9%; top:33.2%;" class="mapitem_img" id="termo_mapimage_5218_imagem">
                                            <div onclick="Mapa._hideMenu('5218')" style="display:none;" id="info_menu_5218" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5218', 'out', '')" onmouseover="Mlib.x('tEv', '5218', 'over', '')" onclick="return Mlib.x('tEv', '5218', 'clk', '')" style="width:2.7%;height:4.4%;left:21.3%;top:34%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5117', 'out')" onmouseover="Mlib.x('tEv', '5117', 'over')" style="display:none;left:21.8%;top:25%;" id="termo_mapimage_5117_imgtip" class="mapatooltip">   Lagoa
                                            <span id="termo_mapimage_5117_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5117_imgtip_inner1">POMBAL</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5117.gif); width:200px; height:45px; left:21.8%; top:25%;" class="mapitem_img" id="termo_mapimage_5117_imagem">
                                            <div onclick="Mapa._hideMenu('5117')" style="display:none;" id="info_menu_5117" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5117', 'out', '')" onmouseover="Mlib.x('tEv', '5117', 'over', '')" onclick="return Mlib.x('tEv', '5117', 'clk', '')" style="width:3.5%;height:3.2%;left:22.3%;top:26.3%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '9818', 'out')" onmouseover="Mlib.x('tEv', '9818', 'over')" style="display:none;left:26.3%;top:35.8%;" id="termo_mapimage_9818_imgtip" class="mapatooltip">   São Bentinho
                                            <span id="termo_mapimage_9818_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_9818_imgtip_inner1">POMBAL</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_9818.gif); width:200px; height:45px; left:26.3%; top:35.8%;" class="mapitem_img" id="termo_mapimage_9818_imagem">
                                            <div onclick="Mapa._hideMenu('9818')" style="display:none;" id="info_menu_9818" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '9818', 'out', '')" onmouseover="Mlib.x('tEv', '9818', 'over', '')" onclick="return Mlib.x('tEv', '9818', 'clk', '')" style="width:2.9%;height:3.5%;left:26.6%;top:36%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5050', 'out')" onmouseover="Mlib.x('tEv', '5050', 'over')" style="display:none;left:23.2%;top:38.6%;" id="termo_mapimage_5050_imgtip" class="mapatooltip">   Cajazeirinhas
                                            <span id="termo_mapimage_5050_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5050_imgtip_inner1">POMBAL</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5050.gif); width:200px; height:45px; left:23.2%; top:38.6%;" class="mapitem_img" id="termo_mapimage_5050_imagem">
                                            <div onclick="Mapa._hideMenu('5050')" style="display:none;" id="info_menu_5050" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5050', 'out', '')" onmouseover="Mlib.x('tEv', '5050', 'over', '')" onclick="return Mlib.x('tEv', '5050', 'clk', '')" style="width:3.7%;height:5.2%;left:23.5%;top:39%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5028', 'out')" onmouseover="Mlib.x('tEv', '5028', 'over')" style="display:none;left:30%;top:5.5%;" id="termo_mapimage_5028_imgtip" class="mapatooltip">   Belém do Brejo do Cruz
                                            <span id="termo_mapimage_5028_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5028_imgtip_inner1">BREJO DO CRUZ</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5028.gif); width:200px; height:45px; left:30%; top:5.5%;" class="mapitem_img" id="termo_mapimage_5028_imagem">
                                            <div onclick="Mapa._hideMenu('5028')" style="display:none;" id="info_menu_5028" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5028', 'out', '')" onmouseover="Mlib.x('tEv', '5028', 'over', '')" onclick="return Mlib.x('tEv', '5028', 'clk', '')" style="width:4%;height:3.8%;left:30%;top:10%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5028', 'out', '')" onmouseover="Mlib.x('tEv', '5028', 'over', '')" onclick="return Mlib.x('tEv', '5028', 'clk', '')" style="width:6.5%;height:4%;left:34%;top:7%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5234', 'out')" onmouseover="Mlib.x('tEv', '5234', 'over')" style="display:none;left:33%;top:11%;" id="termo_mapimage_5234_imgtip" class="mapatooltip">   São José do Brejo do Cruz
                                            <span id="termo_mapimage_5234_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5234_imgtip_inner1">BREJO DO CRUZ</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5234.gif); width:200px; height:45px; left:33%; top:11%;" class="mapitem_img" id="termo_mapimage_5234_imagem">
                                            <div onclick="Mapa._hideMenu('5234')" style="display:none;" id="info_menu_5234" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5234', 'out', '')" onmouseover="Mlib.x('tEv', '5234', 'over', '')" onclick="return Mlib.x('tEv', '5234', 'clk', '')" style="width:4.5%;height:4.5%;left:34%;top:11.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5195', 'out')" onmouseover="Mlib.x('tEv', '5195', 'over')" style="display:none;left:27.3%;top:19.4%;" id="termo_mapimage_5195_imgtip" class="mapatooltip">   Riacho dos Cavalos
                                            <span id="termo_mapimage_5195_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5195_imgtip_inner1">CATOLE DO ROCHA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5195.gif); width:200px; height:45px; left:27.3%; top:19.4%;" class="mapitem_img" id="termo_mapimage_5195_imagem">
                                            <div onclick="Mapa._hideMenu('5195')" style="display:none;" id="info_menu_5195" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5195', 'out', '')" onmouseover="Mlib.x('tEv', '5195', 'over', '')" onclick="return Mlib.x('tEv', '5195', 'clk', '')" style="width:4.0%;height:3.5%;left:27.3%;top:20.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5195', 'out', '')" onmouseover="Mlib.x('tEv', '5195', 'over', '')" onclick="return Mlib.x('tEv', '5195', 'clk', '')" style="width:3.2%;height:3%;left:29%;top:22.8%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5033', 'out')" onmouseover="Mlib.x('tEv', '5033', 'over')" style="display:none;left:20.5%;top:20%;" id="termo_mapimage_5033_imgtip" class="mapatooltip">   Bom Sucesso
                                            <span id="termo_mapimage_5033_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5033_imgtip_inner1">CATOLE DO ROCHA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5033.gif); width:200px; height:45px; left:20.5%; top:20%;" class="mapitem_img" id="termo_mapimage_5033_imagem">
                                            <div onclick="Mapa._hideMenu('5033')" style="display:none;" id="info_menu_5033" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5033', 'out', '')" onmouseover="Mlib.x('tEv', '5033', 'over', '')" onclick="return Mlib.x('tEv', '5033', 'clk', '')" style="width:3.2%;height:4%;left:20.8%;top:21%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5111', 'out')" onmouseover="Mlib.x('tEv', '5111', 'over')" style="display:none;left:23.4%;top:21.8%;" id="termo_mapimage_5111_imgtip" class="mapatooltip">   Jericó
                                            <span id="termo_mapimage_5111_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5111_imgtip_inner1">CATOLE DO ROCHA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5111.gif); width:200px; height:45px; left:23.4%; top:21.8%;" class="mapitem_img" id="termo_mapimage_5111_imagem">
                                            <div onclick="Mapa._hideMenu('5111')" style="display:none;" id="info_menu_5111" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5111', 'out', '')" onmouseover="Mlib.x('tEv', '5111', 'over', '')" onclick="return Mlib.x('tEv', '5111', 'clk', '')" style="width:3.0%;height:4%;left:23.8%;top:22.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5138', 'out')" onmouseover="Mlib.x('tEv', '5138', 'over')" style="display:none;left:25.8%;top:23.3%;" id="termo_mapimage_5138_imgtip" class="mapatooltip">   Mato Grosso
                                            <span id="termo_mapimage_5138_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5138_imgtip_inner1">CATOLE DO ROCHA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5138.gif); width:200px; height:45px; left:25.8%; top:23.3%;" class="mapitem_img" id="termo_mapimage_5138_imagem">
                                            <div onclick="Mapa._hideMenu('5138')" style="display:none;" id="info_menu_5138" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5138', 'out', '')" onmouseover="Mlib.x('tEv', '5138', 'over', '')" onclick="return Mlib.x('tEv', '5138', 'clk', '')" style="width:3%;height:3%;left:26%;top:24.3%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5038', 'out')" onmouseover="Mlib.x('tEv', '5038', 'over')" style="display:none;left:23.2% ;top:17.6%;" id="termo_mapimage_5038_imgtip" class="mapatooltip">   Brejo dos Santos
                                            <span id="termo_mapimage_5038_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5038_imgtip_inner1">CATOLE DO ROCHA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5038.gif); width:200px; height:45px; left:23.2% ; top:17.6%;" class="mapitem_img" id="termo_mapimage_5038_imagem">
                                            <div onclick="Mapa._hideMenu('5038')" style="display:none;" id="info_menu_5038" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5038', 'out', '')" onmouseover="Mlib.x('tEv', '5038', 'over', '')" onclick="return Mlib.x('tEv', '5038', 'clk', '')" style="width:2.5%;height:3%;left:23.5%;top:18.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5273', 'out')" onmouseover="Mlib.x('tEv', '5273', 'over')" style="display:none;left:13% ;top:23.3%;" id="termo_mapimage_5273_imgtip" class="mapatooltip">   Vieirópolis
                                            <span id="termo_mapimage_5273_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5273_imgtip_inner1">SOUSA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5273.gif); width:200px; height:45px; left:13% ; top:23.3%;" class="mapitem_img" id="termo_mapimage_5273_imagem">
                                            <div onclick="Mapa._hideMenu('5273')" style="display:none;" id="info_menu_5273" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5273', 'out', '')" onmouseover="Mlib.x('tEv', '5273', 'over', '')" onclick="return Mlib.x('tEv', '5273', 'clk', '')" style="width:2.4%;height:4%;left:14%;top:24%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5132', 'out')" onmouseover="Mlib.x('tEv', '5132', 'over')" style="display:none;left:12.6% ;top:34.6%;" id="termo_mapimage_5132_imgtip" class="mapatooltip">   Marizópolis
                                            <span id="termo_mapimage_5132_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5132_imgtip_inner1">SOUSA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5132.gif); width:200px; height:45px; left:12.6% ; top:34.6%;" class="mapitem_img" id="termo_mapimage_5132_imagem">
                                            <div onclick="Mapa._hideMenu('5132')" style="display:none;" id="info_menu_5132" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5132', 'out', '')" onmouseover="Mlib.x('tEv', '5132', 'over', '')" onclick="return Mlib.x('tEv', '5132', 'clk', '')" style="width:1.2%;height:4%;left:13%;top:35%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5150', 'out')" onmouseover="Mlib.x('tEv', '5150', 'over')" style="display:none;left:11.3%  ;top:38.6%;" id="termo_mapimage_5150_imgtip" class="mapatooltip">   Nazareninho
                                            <span id="termo_mapimage_5150_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5150_imgtip_inner1">SOUSA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5150.gif); width:200px; height:45px; left:11.3%  ; top:38.6%;" class="mapitem_img" id="termo_mapimage_5150_imagem">
                                            <div onclick="Mapa._hideMenu('5150')" style="display:none;" id="info_menu_5150" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5150', 'out', '')" onmouseover="Mlib.x('tEv', '5150', 'over', '')" onclick="return Mlib.x('tEv', '5150', 'clk', '')" style="width:3.3%;height:3.5%;left:12%;top:40%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5068', 'out')" onmouseover="Mlib.x('tEv', '5068', 'over')" style="display:none;left:28.3%  ;top:33.2%;" id="termo_mapimage_5068_imgtip" class="mapatooltip">   Condado
                                            <span id="termo_mapimage_5068_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5068_imgtip_inner1">MALTA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5068.gif); width:200px; height:60px; left:28.3%  ; top:33.2%;" class="mapitem_img" id="termo_mapimage_5068_imagem">
                                            <div onclick="Mapa._hideMenu('5068')" style="display:none;" id="info_menu_5068" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5068', 'out', '')" onmouseover="Mlib.x('tEv', '5068', 'over', '')" onclick="return Mlib.x('tEv', '5068', 'clk', '')" style="width:1.8%;height:5%;left:29.7%;top:35.3%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5068', 'out', '')" onmouseover="Mlib.x('tEv', '5068', 'over', '')" onclick="return Mlib.x('tEv', '5068', 'clk', '')" style="width:2.8%;height:5%;left:28.8%;top:38.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5274', 'out')" onmouseover="Mlib.x('tEv', '5274', 'over')" style="display:none;left:29.7% ;top:32.2%;" id="termo_mapimage_5274_imgtip" class="mapatooltip">   Vista Serrana
                                            <span id="termo_mapimage_5274_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5274_imgtip_inner1">MALTA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5274.gif); width:200px; height:60px; left:29.7% ; top:32.2%;" class="mapitem_img" id="termo_mapimage_5274_imagem">
                                            <div onclick="Mapa._hideMenu('5274')" style="display:none;" id="info_menu_5274" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5274', 'out', '')" onmouseover="Mlib.x('tEv', '5274', 'over', '')" onclick="return Mlib.x('tEv', '5274', 'clk', '')" style="width:1.5%;height:2.8%;left:30.2%;top:33%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5229', 'out')" onmouseover="Mlib.x('tEv', '5229', 'over')" style="display:none;left:31.7% ;top:31.7%;" id="termo_mapimage_5229_imgtip" class="mapatooltip">   São José de Espinharas
                                            <span id="termo_mapimage_5229_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5229_imgtip_inner1">PATOS</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5229.gif'); width: 200px; height: 60px; left: 31.7%; top: 31.7%; display: none;" class="mapitem_img" id="termo_mapimage_5229_imagem">
                                            <div onclick="Mapa._hideMenu('5229')" style="display:none;" id="info_menu_5229" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5229', 'out', '')" onmouseover="Mlib.x('tEv', '5229', 'over', '')" onclick="return Mlib.x('tEv', '5229', 'clk', '')" style="width:5.5%;height:8.5%;left:33%;top:32%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5120', 'out')" onmouseover="Mlib.x('tEv', '5120', 'over')" style="display:none;left:15.6% ;top:23.5%;" id="termo_mapimage_5120_imgtip" class="mapatooltip">   Lastro
                                            <span id="termo_mapimage_5120_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5120_imgtip_inner1">SOUSA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5120.gif); width:50px; height:30px; left:15.6% ; top:23.5%;" class="mapitem_img" id="termo_mapimage_5120_imagem">
                                            <div onclick="Mapa._hideMenu('5120')" style="display:none;" id="info_menu_5120" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5120', 'out', '')" onmouseover="Mlib.x('tEv', '5120', 'over', '')" onclick="return Mlib.x('tEv', '5120', 'clk', '')" style="width:2%;height:4%;left:16%;top:24%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5008', 'out')" onmouseover="Mlib.x('tEv', '5008', 'over')" style="display:none;left:17.8%;top:30.7%;" id="termo_mapimage_5008_imgtip" class="mapatooltip">   Aparecida
                                            <span id="termo_mapimage_5008_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5008_imgtip_inner1">SOUSA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5008.gif); width:70px; height:45px; left:17.8%; top:30.7%;" class="mapitem_img" id="termo_mapimage_5008_imagem">
                                            <div onclick="Mapa._hideMenu('5008')" style="display:none;" id="info_menu_5008" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5008', 'out', '')" onmouseover="Mlib.x('tEv', '5008', 'over', '')" onclick="return Mlib.x('tEv', '5008', 'clk', '')" style="width:2.1%;height:7.5%;left:19%;top:31.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5220', 'out')" onmouseover="Mlib.x('tEv', '5220', 'over')" style="display:none;left:18.8% ;top:27.3%;" id="termo_mapimage_5220_imgtip" class="mapatooltip">   São Francisco
                                            <span id="termo_mapimage_5220_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5220_imgtip_inner1">SOUSA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5220.gif); width:70px; height:45px; left:18.8% ; top:27.3%;" class="mapitem_img" id="termo_mapimage_5220_imagem">
                                            <div onclick="Mapa._hideMenu('5220')" style="display:none;" id="info_menu_5220" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5220', 'out', '')" onmouseover="Mlib.x('tEv', '5220', 'over', '')" onclick="return Mlib.x('tEv', '5220', 'clk', '')" style="width:2.5%;height:3.2%;left:19%;top:28%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5203', 'out')" onmouseover="Mlib.x('tEv', '5203', 'over')" style="display:none;left:17.5%;top:22%;" id="termo_mapimage_5203_imgtip" class="mapatooltip">   Santa Cruz
                                            <span id="termo_mapimage_5203_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5203_imgtip_inner1">SOUSA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5203.gif); width:70px; height:45px; left:17.5%; top:22%;" class="mapitem_img" id="termo_mapimage_5203_imagem">
                                            <div onclick="Mapa._hideMenu('5203')" style="display:none;" id="info_menu_5203" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5203', 'out', '')" onmouseover="Mlib.x('tEv', '5203', 'over', '')" onclick="return Mlib.x('tEv', '5203', 'clk', '')" style="width:2.8%;height:4.5%;left:18.5%;top:23%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5069', 'out')" onmouseover="Mlib.x('tEv', '5069', 'over')" style="left: 92.2%; top: 52.5%; display: none;" id="termo_mapimage_5069_imgtip" class="mapatooltip">   Conde
                                            <span id="termo_mapimage_5069_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5069_imgtip_inner1">ALHANDRA</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5069.gif'); width: 70px; height: 45px; left: 92.2%; top: 52.5%; display: none;" class="mapitem_img" id="termo_mapimage_5069_imagem">
                                            <div onclick="Mapa._hideMenu('5069')" style="display:none;" id="info_menu_5069" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5069', 'out', '6')" onmouseover="Mlib.x('tEv', '5069', 'over', '6')" onclick="return Mlib.x('tEv', '5069', 'clk', '6')" style="width:2.5%;height:4.5%;left:93%;top:53%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5180', 'out')" onmouseover="Mlib.x('tEv', '5180', 'over')" style="display:none;left:92.8% ;top:57.3%;" id="termo_mapimage_5180_imgtip" class="mapatooltip">   Pitimbu
                                            <span id="termo_mapimage_5180_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5180_imgtip_inner1">CAAPORA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5180.gif); width:70px; height:45px; left:92.8% ; top:57.3%;" class="mapitem_img" id="termo_mapimage_5180_imagem">
                                            <div onclick="Mapa._hideMenu('5180')" style="display:none;" id="info_menu_5180" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5180', 'out', '8')" onmouseover="Mlib.x('tEv', '5180', 'over', '8')" onclick="return Mlib.x('tEv', '5180', 'clk', '8')" style="width:1.5%;height:6.8%;left:94%;top:58%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5094', 'out')" onmouseover="Mlib.x('tEv', '5094', 'over')" style="display:none;left:55.5% ;top:16%;" id="termo_mapimage_5094_imgtip" class="mapatooltip">   Frei Martinho
                                            <span id="termo_mapimage_5094_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5094_imgtip_inner1">PICUI</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5094.gif); width:70px; height:45px; left:55.5% ; top:16%;" class="mapitem_img" id="termo_mapimage_5094_imagem">
                                            <div onclick="Mapa._hideMenu('5094')" style="display:none;" id="info_menu_5094" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5094', 'out', '')" onmouseover="Mlib.x('tEv', '5094', 'over', '')" onclick="return Mlib.x('tEv', '5094', 'clk', '')" style="width:2%;height:7%;left:55.5%;top:18.8%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5094', 'out', '')" onmouseover="Mlib.x('tEv', '5094', 'over', '')" onclick="return Mlib.x('tEv', '5094', 'clk', '')" style="width:2%;height:4%;left:57.8%;top:16.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5269', 'out')" onmouseover="Mlib.x('tEv', '5269', 'over')" style="display:none;left:41.3% ;top:32.2%;" id="termo_mapimage_5269_imgtip" class="mapatooltip">   Várzea
                                            <span id="termo_mapimage_5269_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5269_imgtip_inner1">SANTA LUZIA</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5269.gif'); width: 70px; height: 45px; left: 41.3%; top: 32.2%; display: none;" class="mapitem_img" id="termo_mapimage_5269_imagem">
                                            <div onclick="Mapa._hideMenu('5269')" style="display:none;" id="info_menu_5269" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5269', 'out', '')" onmouseover="Mlib.x('tEv', '5269', 'over', '')" onclick="return Mlib.x('tEv', '5269', 'clk', '')" style="width:3%;height:4.5%;left:42.5%;top:33.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5136', 'out')" onmouseover="Mlib.x('tEv', '5136', 'over')" style="display:none;left:87.8%  ;top:23.5%;" id="termo_mapimage_5136_imgtip" class="mapatooltip">   Mataraca
                                            <span id="termo_mapimage_5136_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5136_imgtip_inner1">MAMANGUAPE</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5136.gif'); width: 70px; height: 45px; left: 87.8%; top: 23.5%; display: none;" class="mapitem_img" id="termo_mapimage_5136_imagem">
                                            <div onclick="Mapa._hideMenu('5136')" style="display:none;" id="info_menu_5136" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5136', 'out', '7')" onmouseover="Mlib.x('tEv', '5136', 'over', '7')" onclick="return Mlib.x('tEv', '5136', 'clk', '7')" style="width:3.5%;height:3.3%;left:88.3%;top:24.4%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5019', 'out')" onmouseover="Mlib.x('tEv', '5019', 'over')" style="display:none;left:89.9%  ;top:27.5%;" id="termo_mapimage_5019_imgtip" class="mapatooltip">   Baía da Traição
                                            <span id="termo_mapimage_5019_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5019_imgtip_inner1">RIO TINTO</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5019.gif'); width: 70px; height: 45px; left: 89.9%; top: 27.5%; display: none;" class="mapitem_img" id="termo_mapimage_5019_imagem">
                                            <div onclick="Mapa._hideMenu('5019')" style="display:none;" id="info_menu_5019" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5019', 'out', '7')" onmouseover="Mlib.x('tEv', '5019', 'over', '7')" onclick="return Mlib.x('tEv', '5019', 'clk', '7')" style="width:2%;height:4.2%;left:90%;top:28%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5130', 'out')" onmouseover="Mlib.x('tEv', '5130', 'over')" style="display:none;left:88.8%  ;top:31.8%;" id="termo_mapimage_5130_imgtip" class="mapatooltip">   Marcação
                                            <span id="termo_mapimage_5130_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5130_imgtip_inner1">RIO TINTO</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5130.gif'); width: 70px; height: 45px; left: 88.8%; top: 31.8%; display: none;" class="mapitem_img" id="termo_mapimage_5130_imagem">
                                            <div onclick="Mapa._hideMenu('5130')" style="display:none;" id="info_menu_5130" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5130', 'out', '7')" onmouseover="Mlib.x('tEv', '5130', 'over', '7')" onclick="return Mlib.x('tEv', '5130', 'clk', '7')" style="width:3.8%;height:3.3%;left:89%;top:32%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5152', 'out')" onmouseover="Mlib.x('tEv', '5152', 'over')" style="display:none;left:62.5% ;top:21.2%;" id="termo_mapimage_5152_imgtip" class="mapatooltip">   Nova Floresta
                                            <span id="termo_mapimage_5152_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5152_imgtip_inner1">CUITE</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5152.gif); width:70px; height:45px; left:62.5% ; top:21.2%;" class="mapitem_img" id="termo_mapimage_5152_imagem">
                                            <div onclick="Mapa._hideMenu('5152')" style="display:none;" id="info_menu_5152" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5152', 'out', '12')" onmouseover="Mlib.x('tEv', '5152', 'over', '12')" onclick="return Mlib.x('tEv', '5152', 'clk', '12')" style="width:1.5%;height:4%;left:62.5%;top:21.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5225', 'out')" onmouseover="Mlib.x('tEv', '5225', 'over')" style="display:none;left:45.2%;top:80.8%;" id="termo_mapimage_5225_imgtip" class="mapatooltip">   São João do Tigre
                                            <span id="termo_mapimage_5225_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5225_imgtip_inner1">MONTEIRO</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5225.gif); width:70px; height:65px; left:45.2%; top:80.8%;" class="mapitem_img" id="termo_mapimage_5225_imagem">
                                            <div onclick="Mapa._hideMenu('5225')" style="display:none;" id="info_menu_5225" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5225', 'out', '')" onmouseover="Mlib.x('tEv', '5225', 'over', '')" onclick="return Mlib.x('tEv', '5225', 'clk', '')" style="width:6%;height:6%;left:47.3%;top:82%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5225', 'out', '')" onmouseover="Mlib.x('tEv', '5225', 'over', '')" onclick="return Mlib.x('tEv', '5225', 'clk', '')" style="width:4%;height:5.0%;left:45.5%;top:88%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5225', 'out', '')" onmouseover="Mlib.x('tEv', '5225', 'over', '')" onclick="return Mlib.x('tEv', '5225', 'clk', '')" style="width:4.5%;height:5%;left:47%;top:85.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5242', 'out')" onmouseover="Mlib.x('tEv', '5242', 'over')" style="display:none;left:40.7% ;top:84%;" id="termo_mapimage_5242_imgtip" class="mapatooltip">   São Sebastião do Umbuzeiro
                                            <span id="termo_mapimage_5242_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5242_imgtip_inner1">MONTEIRO</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5242.gif); width:70px; height:65px; left:40.7% ; top:84%;" class="mapitem_img" id="termo_mapimage_5242_imagem">
                                            <div onclick="Mapa._hideMenu('5242')" style="display:none;" id="info_menu_5242" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5242', 'out', '')" onmouseover="Mlib.x('tEv', '5242', 'over', '')" onclick="return Mlib.x('tEv', '5242', 'clk', '')" style="width:2.8%;height:5%;left:44%;top:85%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5242', 'out', '')" onmouseover="Mlib.x('tEv', '5242', 'over', '')" onclick="return Mlib.x('tEv', '5242', 'clk', '')" style="width:4.4%;height:5%;left:41.3%;top:88.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5275', 'out')" onmouseover="Mlib.x('tEv', '5275', 'over')" style="display:none;left:40.8% ;top:84.1%;" id="termo_mapimage_5275_imgtip" class="mapatooltip">   Zabelê
                                            <span id="termo_mapimage_5275_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5275_imgtip_inner1">MONTEIRO</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5275.gif); width:70px; height:65px; left:40.8% ; top:84.1%;" class="mapitem_img" id="termo_mapimage_5275_imagem">
                                            <div onclick="Mapa._hideMenu('5275')" style="display:none;" id="info_menu_5275" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5275', 'out', '')" onmouseover="Mlib.x('tEv', '5275', 'over', '')" onclick="return Mlib.x('tEv', '5275', 'clk', '')" style="width:2.8%;height:3.4%;left:41.0%;top:85%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5182', 'out')" onmouseover="Mlib.x('tEv', '5182', 'over')" style="display:none;left:7.3%;top:17.5%;" id="termo_mapimage_5182_imgtip" class="mapatooltip">   Poço Dantas
                                            <span id="termo_mapimage_5182_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5182_imgtip_inner1">UIRAUNA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5182.gif); width:70px; height:70px; left:7.3%; top:17.5%;" class="mapitem_img" id="termo_mapimage_5182_imagem">
                                            <div onclick="Mapa._hideMenu('5182')" style="display:none;" id="info_menu_5182" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5182', 'out', '')" onmouseover="Mlib.x('tEv', '5182', 'over', '')" onclick="return Mlib.x('tEv', '5182', 'clk', '')" style="width:2.2%;height:3.5%;left:7.8%;top:18.3%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5029', 'out')" onmouseover="Mlib.x('tEv', '5029', 'over')" style="display:none;left:7%;top:21.5%;" id="termo_mapimage_5029_imgtip" class="mapatooltip">   Bernardino Batista
                                            <span id="termo_mapimage_5029_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5029_imgtip_inner1">SAO JOAO DO RIO DO PEIXE</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5029.gif); width:25px; height:25px; left:7%; top:21.5%;" class="mapitem_img" id="termo_mapimage_5029_imagem">
                                            <div onclick="Mapa._hideMenu('5029')" style="display:none;" id="info_menu_5029" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5029', 'out', '')" onmouseover="Mlib.x('tEv', '5029', 'over', '')" onclick="return Mlib.x('tEv', '5029', 'clk', '')" style="width:2.2%;height:3.5%;left:7.0%;top:21.2%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5265', 'out')" onmouseover="Mlib.x('tEv', '5265', 'over')" style="display:none;left:6.2% ;top:24.2%;" id="termo_mapimage_5265_imgtip" class="mapatooltip">   Triunfo
                                            <span id="termo_mapimage_5265_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5265_imgtip_inner1">SAO JOAO DO RIO DO PEIXE</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5265.gif); width:75px; height:65px; left:6.2% ; top:24.2%;" class="mapitem_img" id="termo_mapimage_5265_imagem">
                                            <div onclick="Mapa._hideMenu('5265')" style="display:none;" id="info_menu_5265" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5265', 'out', '')" onmouseover="Mlib.x('tEv', '5265', 'over', '')" onclick="return Mlib.x('tEv', '5265', 'clk', '')" style="width:2.3%;height:5%;left:6.5%;top:25%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5265', 'out', '')" onmouseover="Mlib.x('tEv', '5265', 'over', '')" onclick="return Mlib.x('tEv', '5265', 'clk', '')" style="width:2.0%;height:3%;left:7.5%;top:29%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5183', 'out')" onmouseover="Mlib.x('tEv', '5183', 'over')" style="display:none;left:8.6% ;top:24.8%;" id="termo_mapimage_5183_imgtip" class="mapatooltip">   Poço de José de Moura
                                            <span id="termo_mapimage_5183_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5183_imgtip_inner1">SAO JOAO DO RIO DO PEIXE</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5183.gif); width:75px; height:65px; left:8.6% ; top:24.8%;" class="mapitem_img" id="termo_mapimage_5183_imagem">
                                            <div onclick="Mapa._hideMenu('5183')" style="display:none;" id="info_menu_5183" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5183', 'out', '')" onmouseover="Mlib.x('tEv', '5183', 'over', '')" onclick="return Mlib.x('tEv', '5183', 'clk', '')" style="width:2%;height:3.5%;left:8.8%;top:26%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5205', 'out')" onmouseover="Mlib.x('tEv', '5205', 'over')" style="display:none;left:5.7% ;top:28.7%;" id="termo_mapimage_5205_imgtip" class="mapatooltip">   Santa Helena
                                            <span id="termo_mapimage_5205_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5205_imgtip_inner1">SAO JOAO DO RIO DO PEIXE</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5205.gif); width:75px; height:65px; left:5.7% ; top:28.7%;" class="mapitem_img" id="termo_mapimage_5205_imagem">
                                            <div onclick="Mapa._hideMenu('5205')" style="display:none;" id="info_menu_5205" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5205', 'out', '')" onmouseover="Mlib.x('tEv', '5205', 'over', '')" onclick="return Mlib.x('tEv', '5205', 'clk', '')" style="width:3.8%;height:4%;left:6%;top:31.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5032', 'out')" onmouseover="Mlib.x('tEv', '5032', 'over')" style="display:none;left:5.5%  ;top:34.8%;" id="termo_mapimage_5032_imgtip" class="mapatooltip">   Bom Jesus
                                            <span id="termo_mapimage_5032_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5032_imgtip_inner1">CAJAZEIRAS</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5032.gif); width:75px; height:65px; left:5.5%  ; top:34.8%;" class="mapitem_img" id="termo_mapimage_5032_imagem">
                                            <div onclick="Mapa._hideMenu('5032')" style="display:none;" id="info_menu_5032" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5032', 'out', '')" onmouseover="Mlib.x('tEv', '5032', 'over', '')" onclick="return Mlib.x('tEv', '5032', 'clk', '')" style="width:1.5%;height:2%;left:5.8%;top:35.8%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5235', 'out')" onmouseover="Mlib.x('tEv', '5235', 'over')" style="display:none;left:46.6% ;top:33.2%;" id="termo_mapimage_5235_imgtip" class="mapatooltip">   São José do Sabugi
                                            <span id="termo_mapimage_5235_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5235_imgtip_inner1">SANTA LUZIA</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5235.gif'); width: 75px; height: 65px; left: 46.6%; top: 33.2%; display: none;" class="mapitem_img" id="termo_mapimage_5235_imagem">
                                            <div onclick="Mapa._hideMenu('5235')" style="display:none;" id="info_menu_5235" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5235', 'out', '')" onmouseover="Mlib.x('tEv', '5235', 'over', '')" onclick="return Mlib.x('tEv', '5235', 'clk', '')" style="width:2.5%;height:4.0%;left:46.9%;top:34.0%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5235', 'out', '')" onmouseover="Mlib.x('tEv', '5235', 'over', '')" onclick="return Mlib.x('tEv', '5235', 'clk', '')" style="width:2.5%;height:4%;left:48%;top:35.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5206', 'out')" onmouseover="Mlib.x('tEv', '5206', 'over')" style="display:none;left:4.7%  ;top:66%;" id="termo_mapimage_5206_imgtip" class="mapatooltip">   Santa Inês
                                            <span id="termo_mapimage_5206_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5206_imgtip_inner1">CONCEIÇÃO</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5206.gif); width:75px; height:65px; left:4.7%  ; top:66%;" class="mapitem_img" id="termo_mapimage_5206_imagem">
                                            <div onclick="Mapa._hideMenu('5206')" style="display:none;" id="info_menu_5206" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5206', 'out', '')" onmouseover="Mlib.x('tEv', '5206', 'over', '')" onclick="return Mlib.x('tEv', '5206', 'clk', '')" style="width:3.8%;height:3.2%;left:5%;top:66.6%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5206', 'out', '')" onmouseover="Mlib.x('tEv', '5206', 'over', '')" onclick="return Mlib.x('tEv', '5206', 'clk', '')" style="width:3.8%;height:3.8%;left:7%;top:69.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5129', 'out')" onmouseover="Mlib.x('tEv', '5129', 'over')" style="display:none;left:13.9%   ;top:67%;" id="termo_mapimage_5129_imgtip" class="mapatooltip">   Manaíra
                                            <span id="termo_mapimage_5129_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5129_imgtip_inner1">PRINCESA ISABEL</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5129.gif); width:75px; height:65px; left:13.9%   ; top:67%;" class="mapitem_img" id="termo_mapimage_5129_imagem">
                                            <div onclick="Mapa._hideMenu('5129')" style="display:none;" id="info_menu_5129" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5129', 'out', '')" onmouseover="Mlib.x('tEv', '5129', 'over', '')" onclick="return Mlib.x('tEv', '5129', 'clk', '')" style="width:3.8%;height:5.5%;left:14.5%;top:70%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5212', 'out')" onmouseover="Mlib.x('tEv', '5212', 'over')" style="display:none;left:10.8%   ;top:64.0%;" id="termo_mapimage_5212_imgtip" class="mapatooltip">   Santana de Mangueira
                                            <span id="termo_mapimage_5212_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5212_imgtip_inner1">CONCEIÇÃO</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5212.gif); width:75px; height:65px; left:10.8%   ; top:64.0%;" class="mapitem_img" id="termo_mapimage_5212_imagem">
                                            <div onclick="Mapa._hideMenu('5212')" style="display:none;" id="info_menu_5212" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5212', 'out', '')" onmouseover="Mlib.x('tEv', '5212', 'over', '')" onclick="return Mlib.x('tEv', '5212', 'clk', '')" style="width:3.8%;height:3.8%;left:11%;top:68%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5212', 'out', '')" onmouseover="Mlib.x('tEv', '5212', 'over', '')" onclick="return Mlib.x('tEv', '5212', 'clk', '')" style="width:3.8%;height:2.5%;left:13%;top:67%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5212', 'out', '')" onmouseover="Mlib.x('tEv', '5212', 'over', '')" onclick="return Mlib.x('tEv', '5212', 'clk', '')" style="width:2.2%;height:3.5%;left:12.5%;top:65%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5214', 'out')" onmouseover="Mlib.x('tEv', '5214', 'over')" style="display:none;left:8.7%   ;top:20.2%;" id="termo_mapimage_5214_imgtip" class="mapatooltip">   Santarém
                                            <span id="termo_mapimage_5214_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5214_imgtip_inner1">UIRAUNA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5214.gif); width:36px; height:33px; left:8.7%   ; top:20.2%;" class="mapitem_img" id="termo_mapimage_5214_imagem">
                                            <div onclick="Mapa._hideMenu('5214')" style="display:none;" id="info_menu_5214" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5214', 'out', '')" onmouseover="Mlib.x('tEv', '5214', 'over', '')" onclick="return Mlib.x('tEv', '5214', 'clk', '')" style="width:1.6%;height:4.5%;left:9.2%;top:20.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5043', 'out')" onmouseover="Mlib.x('tEv', '5043', 'over')" style="display:none;left:3.5%   ;top:37.8%;" id="termo_mapimage_5043_imgtip" class="mapatooltip">   Cachoeira dos Índios
                                            <span id="termo_mapimage_5043_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5043_imgtip_inner1">CAJAZEIRAS</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5043.gif); width:36px; height:33px; left:3.5%   ; top:37.8%;" class="mapitem_img" id="termo_mapimage_5043_imagem">
                                            <div onclick="Mapa._hideMenu('5043')" style="display:none;" id="info_menu_5043" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5043', 'out', '')" onmouseover="Mlib.x('tEv', '5043', 'over', '')" onclick="return Mlib.x('tEv', '5043', 'clk', '')" style="width:2.3%;height:5.3%;left:3.8%;top:39%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5143', 'out')" onmouseover="Mlib.x('tEv', '5143', 'over')" style="display:none;left:6.4%    ;top:50.6%;" id="termo_mapimage_5143_imgtip" class="mapatooltip">   Monte Horebe
                                            <span id="termo_mapimage_5143_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5143_imgtip_inner1">BONITO DE SANTA FE</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5143.gif); width:50px; height:33px; left:6.4%    ; top:50.6%;" class="mapitem_img" id="termo_mapimage_5143_imagem">
                                            <div onclick="Mapa._hideMenu('5143')" style="display:none;" id="info_menu_5143" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5143', 'out', '')" onmouseover="Mlib.x('tEv', '5143', 'over', '')" onclick="return Mlib.x('tEv', '5143', 'clk', '')" style="width:5%;height:2%;left:7%;top:50.8%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5059', 'out')" onmouseover="Mlib.x('tEv', '5059', 'over')" style="display:none;left:12.7%    ;top:43.2%;" id="termo_mapimage_5059_imgtip" class="mapatooltip">   Carrapateira
                                            <span id="termo_mapimage_5059_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5059_imgtip_inner1">SAO JOSE DE PIRANHAS</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5059.gif); width:50px; height:33px; left:12.7%    ; top:43.2%;" class="mapitem_img" id="termo_mapimage_5059_imagem">
                                            <div onclick="Mapa._hideMenu('5059')" style="display:none;" id="info_menu_5059" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5059', 'out', '')" onmouseover="Mlib.x('tEv', '5059', 'over', '')" onclick="return Mlib.x('tEv', '5059', 'clk', '')" style="width:1.8%;height:3.5%;left:12.8%;top:43.2%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5232', 'out')" onmouseover="Mlib.x('tEv', '5232', 'over')" style="display:none;left:18.2%   ;top:66.2%;" id="termo_mapimage_5232_imgtip" class="mapatooltip">   São José de Princesa
                                            <span id="termo_mapimage_5232_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5232_imgtip_inner1">PRINCESA ISABEL</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5232.gif); width:50px; height:50px; left:18.2%   ; top:66.2%;" class="mapitem_img" id="termo_mapimage_5232_imagem">
                                            <div onclick="Mapa._hideMenu('5232')" style="display:none;" id="info_menu_5232" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5232', 'out', '')" onmouseover="Mlib.x('tEv', '5232', 'over', '')" onclick="return Mlib.x('tEv', '5232', 'clk', '')" style="width:1.8%;height:9%;left:18.2%;top:67%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5101', 'out')" onmouseover="Mlib.x('tEv', '5101', 'over')" style="display:none;left:9.8%    ;top:60.0%;" id="termo_mapimage_5101_imgtip" class="mapatooltip">   Ibiara
                                            <span id="termo_mapimage_5101_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5101_imgtip_inner1">CONCEIÇÃO</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5101.gif); width:50px; height:50px; left:9.8%    ; top:60.0%;" class="mapitem_img" id="termo_mapimage_5101_imagem">
                                            <div onclick="Mapa._hideMenu('5101')" style="display:none;" id="info_menu_5101" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5101', 'out', '')" onmouseover="Mlib.x('tEv', '5101', 'over', '')" onclick="return Mlib.x('tEv', '5101', 'clk', '')" style="width:3.8%;height:4.2%;left:10%;top:60.6%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5101', 'out', '')" onmouseover="Mlib.x('tEv', '5101', 'over', '')" onclick="return Mlib.x('tEv', '5101', 'clk', '')" style="width:1.5%;height:2.5%;left:10.9%;top:64.8%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5000', 'out')" onmouseover="Mlib.x('tEv', '5000', 'over')" style="display:none;left:13.5% ;top:43.5%;" id="termo_mapimage_5000_imgtip" class="mapatooltip">   Aguiar
                                            <span id="termo_mapimage_5000_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5000_imgtip_inner1">PIANCO</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5000.gif); width:50px; height:60px; left:13.5% ; top:43.5%;" class="mapitem_img" id="termo_mapimage_5000_imagem">
                                            <div onclick="Mapa._hideMenu('5000')" style="display:none;" id="info_menu_5000" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5000', 'out', '')" onmouseover="Mlib.x('tEv', '5000', 'over', '')" onclick="return Mlib.x('tEv', '5000', 'clk', '')" style="width:5.5%;height:3.6%;left:14%;top:44.3%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5000', 'out', '')" onmouseover="Mlib.x('tEv', '5000', 'over', '')" onclick="return Mlib.x('tEv', '5000', 'clk', '')" style="width:2%;height:6%;left:14%;top:44.3%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5102', 'out')" onmouseover="Mlib.x('tEv', '5102', 'over')" style="display:none;left:15.8% ;top:47%;" id="termo_mapimage_5102_imgtip" class="mapatooltip">   Igaracy
                                            <span id="termo_mapimage_5102_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5102_imgtip_inner1">PIANCO</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5102.gif); width:50px; height:50px; left:15.8% ; top:47%;" class="mapitem_img" id="termo_mapimage_5102_imagem">
                                            <div onclick="Mapa._hideMenu('5102')" style="display:none;" id="info_menu_5102" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5102', 'out', '')" onmouseover="Mlib.x('tEv', '5102', 'over', '')" onclick="return Mlib.x('tEv', '5102', 'clk', '')" style="width:2%;height:5.3%;left:17.8%;top:47.3%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5102', 'out', '')" onmouseover="Mlib.x('tEv', '5102', 'over', '')" onclick="return Mlib.x('tEv', '5102', 'clk', '')" style="width:2.5%;height:2.5%;left:16%;top:48%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5248', 'out')" onmouseover="Mlib.x('tEv', '5248', 'over')" style="display:none;left:11.5% ;top:50%;" id="termo_mapimage_5248_imgtip" class="mapatooltip">   Serra Grande
                                            <span id="termo_mapimage_5248_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5248_imgtip_inner1">ITAPORANGA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5248.gif); width:30px; height:50px; left:11.5% ; top:50%;" class="mapitem_img" id="termo_mapimage_5248_imagem">
                                            <div onclick="Mapa._hideMenu('5248')" style="display:none;" id="info_menu_5248" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5248', 'out', '')" onmouseover="Mlib.x('tEv', '5248', 'over', '')" onclick="return Mlib.x('tEv', '5248', 'clk', '')" style="width:2%;height:2%;left:12%;top:50%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5248', 'out', '')" onmouseover="Mlib.x('tEv', '5248', 'over', '')" onclick="return Mlib.x('tEv', '5248', 'clk', '')" style="width:1%;height:5.5%;left:11.7%;top:50.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5228', 'out')" onmouseover="Mlib.x('tEv', '5228', 'over')" style="display:none;left:11.8% ;top:49.8%;" id="termo_mapimage_5228_imgtip" class="mapatooltip">   São José de Caiana
                                            <span id="termo_mapimage_5228_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5228_imgtip_inner1">ITAPORANGA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5228.gif); width:30px; height:50px; left:11.8% ; top:49.8%;" class="mapitem_img" id="termo_mapimage_5228_imagem">
                                            <div onclick="Mapa._hideMenu('5228')" style="display:none;" id="info_menu_5228" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5228', 'out', '')" onmouseover="Mlib.x('tEv', '5228', 'over', '')" onclick="return Mlib.x('tEv', '5228', 'clk', '')" style="width:1.7%;height:6%;left:13.3%;top:50.5%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5228', 'out', '')" onmouseover="Mlib.x('tEv', '5228', 'over', '')" onclick="return Mlib.x('tEv', '5228', 'clk', '')" style="width:3%;height:3%;left:12.3%;top:53.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5084', 'out')" onmouseover="Mlib.x('tEv', '5084', 'over')" style="display:none;left:11.6%  ;top:56%;" id="termo_mapimage_5084_imgtip" class="mapatooltip">   Diamante
                                            <span id="termo_mapimage_5084_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5084_imgtip_inner1">ITAPORANGA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5084.gif); width:40px; height:50px; left:11.6%  ; top:56%;" class="mapitem_img" id="termo_mapimage_5084_imagem">
                                            <div onclick="Mapa._hideMenu('5084')" style="display:none;" id="info_menu_5084" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5084', 'out', '')" onmouseover="Mlib.x('tEv', '5084', 'over', '')" onclick="return Mlib.x('tEv', '5084', 'clk', '')" style="width:3.2%;height:3.5%;left:12%;top:56.8%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5084', 'out', '')" onmouseover="Mlib.x('tEv', '5084', 'over', '')" onclick="return Mlib.x('tEv', '5084', 'clk', '')" style="width:1.8%;height:6.4%;left:13.8%;top:58.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5262', 'out')" onmouseover="Mlib.x('tEv', '5262', 'over')" style="display:none;left:21.6%   ;top:62.4%;" id="termo_mapimage_5262_imgtip" class="mapatooltip">   Tavares
                                            <span id="termo_mapimage_5262_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5262_imgtip_inner1">PRINCESA ISABEL</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5262.gif); width:50px; height:50px; left:21.6%   ; top:62.4%;" class="mapitem_img" id="termo_mapimage_5262_imagem">
                                            <div onclick="Mapa._hideMenu('5262')" style="display:none;" id="info_menu_5262" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5262', 'out', '')" onmouseover="Mlib.x('tEv', '5262', 'over', '')" onclick="return Mlib.x('tEv', '5262', 'clk', '')" style="width:3.3%;height:4%;left:22.3%;top:66.8%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5262', 'out', '')" onmouseover="Mlib.x('tEv', '5262', 'over', '')" onclick="return Mlib.x('tEv', '5262', 'clk', '')" style="width:2%;height:4%;left:22%;top:64.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5116', 'out')" onmouseover="Mlib.x('tEv', '5116', 'over')" style="display:none;left:23%   ;top:59.1%;" id="termo_mapimage_5116_imgtip" class="mapatooltip">   Juru
                                            <span id="termo_mapimage_5116_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5116_imgtip_inner1">AGUA BRANCA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5116.gif); width:50px; height:50px; left:23%   ; top:59.1%;" class="mapitem_img" id="termo_mapimage_5116_imagem">
                                            <div onclick="Mapa._hideMenu('5116')" style="display:none;" id="info_menu_5116" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5116', 'out', '')" onmouseover="Mlib.x('tEv', '5116', 'over', '')" onclick="return Mlib.x('tEv', '5116', 'clk', '')" style="width:3.0%;height:7.3%;left:24.7%;top:60%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5116', 'out', '')" onmouseover="Mlib.x('tEv', '5116', 'over', '')" onclick="return Mlib.x('tEv', '5116', 'clk', '')" style="width:4.3%;height:3.8%;left:23.4%;top:61.8%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5103', 'out')" onmouseover="Mlib.x('tEv', '5103', 'over')" style="display:none;left:27.2%    ;top:52.6%;" id="termo_mapimage_5103_imgtip" class="mapatooltip">   Imaculada
                                            <span id="termo_mapimage_5103_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5103_imgtip_inner1">AGUA BRANCA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5103.gif); width:70px; height:50px; left:27.2%    ; top:52.6%;" class="mapitem_img" id="termo_mapimage_5103_imagem">
                                            <div onclick="Mapa._hideMenu('5103')" style="display:none;" id="info_menu_5103" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5103', 'out', '')" onmouseover="Mlib.x('tEv', '5103', 'over', '')" onclick="return Mlib.x('tEv', '5103', 'clk', '')" style="width:5%;height:2.3%;left:28%;top:57%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5103', 'out', '')" onmouseover="Mlib.x('tEv', '5103', 'over', '')" onclick="return Mlib.x('tEv', '5103', 'clk', '')" style="width:2%;height:5.5%;left:30.5%;top:57%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5103', 'out', '')" onmouseover="Mlib.x('tEv', '5103', 'over', '')" onclick="return Mlib.x('tEv', '5103', 'clk', '')" style="width:2.8%;height:3%;left:31.5%;top:54.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5139', 'out')" onmouseover="Mlib.x('tEv', '5139', 'over')" style="display:none;left:35% ;top:52.8%;" id="termo_mapimage_5139_imgtip" class="mapatooltip">   Matureia
                                            <span id="termo_mapimage_5139_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5139_imgtip_inner1">TEIXEIRA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5139.gif); width:70px; height:50px; left:35% ; top:52.8%;" class="mapitem_img" id="termo_mapimage_5139_imagem">
                                            <div onclick="Mapa._hideMenu('5139')" style="display:none;" id="info_menu_5139" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5139', 'out', '')" onmouseover="Mlib.x('tEv', '5139', 'over', '')" onclick="return Mlib.x('tEv', '5139', 'clk', '')" style="width:1.5%;height:4.2%;left:35.5%;top:53.2%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5125', 'out')" onmouseover="Mlib.x('tEv', '5125', 'over')" style="display:none;left:32.8% ;top:50.2%;" id="termo_mapimage_5125_imgtip" class="mapatooltip">   Mãe D'Água
                                            <span id="termo_mapimage_5125_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5125_imgtip_inner1">TEIXEIRA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5125.gif); width:70px; height:50px; left:32.8% ; top:50.2%;" class="mapitem_img" id="termo_mapimage_5125_imagem">
                                            <div onclick="Mapa._hideMenu('5125')" style="display:none;" id="info_menu_5125" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5125', 'out', '')" onmouseover="Mlib.x('tEv', '5125', 'over', '')" onclick="return Mlib.x('tEv', '5125', 'clk', '')" style="width:2.0%;height:4.8%;left:33.8%;top:51%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5081', 'out')" onmouseover="Mlib.x('tEv', '5081', 'over')" style="display:none;left:15.3% ;top:62%;" id="termo_mapimage_5081_imgtip" class="mapatooltip">   Curral Velho
                                            <span id="termo_mapimage_5081_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5081_imgtip_inner1">ITAPORANGA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5081.gif); width:70px; height:50px; left:15.3% ; top:62%;" class="mapitem_img" id="termo_mapimage_5081_imagem">
                                            <div onclick="Mapa._hideMenu('5081')" style="display:none;" id="info_menu_5081" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5081', 'out', '')" onmouseover="Mlib.x('tEv', '5081', 'over', '')" onclick="return Mlib.x('tEv', '5081', 'clk', '')" style="width:3%;height:4.5%;left:15.5%;top:62.8%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5153', 'out')" onmouseover="Mlib.x('tEv', '5153', 'over')" style="display:none;left:19.5% ;top:59%;" id="termo_mapimage_5153_imgtip" class="mapatooltip">   Nova Olinda
                                            <span id="termo_mapimage_5153_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5153_imgtip_inner1">SANTANA DOS GARROTES</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5153.gif); width:70px; height:50px; left:19.5% ; top:59%;" class="mapitem_img" id="termo_mapimage_5153_imagem">
                                            <div onclick="Mapa._hideMenu('5153')" style="display:none;" id="info_menu_5153" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5153', 'out', '')" onmouseover="Mlib.x('tEv', '5153', 'over', '')" onclick="return Mlib.x('tEv', '5153', 'clk', '')" style="width:1.5%;height:4.5%;left:20.4%;top:60.2%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5164', 'out')" onmouseover="Mlib.x('tEv', '5164', 'over')" style="display:none;left:17.7% ;top:58%;" id="termo_mapimage_5164_imgtip" class="mapatooltip">   Pedra Branca
                                            <span id="termo_mapimage_5164_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5164_imgtip_inner1">ITAPORANGA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5164.gif); width:70px; height:50px; left:17.7% ; top:58%;" class="mapitem_img" id="termo_mapimage_5164_imagem">
                                            <div onclick="Mapa._hideMenu('5164')" style="display:none;" id="info_menu_5164" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5164', 'out', '')" onmouseover="Mlib.x('tEv', '5164', 'over', '')" onclick="return Mlib.x('tEv', '5164', 'clk', '')" style="width:2.3%;height:5.7%;left:18%;top:59.6%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5030', 'out')" onmouseover="Mlib.x('tEv', '5030', 'over')" style="display:none;left:15.2%;top:58.2%;" id="termo_mapimage_5030_imgtip" class="mapatooltip">   Boa Ventura
                                            <span id="termo_mapimage_5030_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5030_imgtip_inner1">ITAPORANGA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5030.gif); width:70px; height:50px; left:15.2%; top:58.2%;" class="mapitem_img" id="termo_mapimage_5030_imagem">
                                            <div onclick="Mapa._hideMenu('5030')" style="display:none;" id="info_menu_5030" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5030', 'out', '')" onmouseover="Mlib.x('tEv', '5030', 'over', '')" onclick="return Mlib.x('tEv', '5030', 'clk', '')" style="width:2.3%;height:4%;left:15.5%;top:58.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5158', 'out')" onmouseover="Mlib.x('tEv', '5158', 'over')" style="display:none;left:23.4%;top:49.3%;" id="termo_mapimage_5158_imgtip" class="mapatooltip">   Olho D'Água
                                            <span id="termo_mapimage_5158_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5158_imgtip_inner1">PIANCO</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5158.gif); width:70px; height:50px; left:23.4%; top:49.3%;" class="mapitem_img" id="termo_mapimage_5158_imagem">
                                            <div onclick="Mapa._hideMenu('5158')" style="display:none;" id="info_menu_5158" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5158', 'out', '')" onmouseover="Mlib.x('tEv', '5158', 'over', '')" onclick="return Mlib.x('tEv', '5158', 'clk', '')" style="width:3.2%;height:8.8%;left:25.3%;top:50%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5087', 'out')" onmouseover="Mlib.x('tEv', '5087', 'over')" style="display:none;left:25.2% ;top:44.2%;" id="termo_mapimage_5087_imgtip" class="mapatooltip">   Emas
                                            <span id="termo_mapimage_5087_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5087_imgtip_inner1">PIANCO</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5087.gif); width:70px; height:50px; left:25.2% ; top:44.2%;" class="mapitem_img" id="termo_mapimage_5087_imagem">
                                            <div onclick="Mapa._hideMenu('5087')" style="display:none;" id="info_menu_5087" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5087', 'out', '')" onmouseover="Mlib.x('tEv', '5087', 'over', '')" onclick="return Mlib.x('tEv', '5087', 'clk', '')" style="width:3.5%;height:5%;left:25.3%;top:44.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5062', 'out')" onmouseover="Mlib.x('tEv', '5062', 'over')" style="display:none;left:28.5%  ;top:43.8%;" id="termo_mapimage_5062_imgtip" class="mapatooltip">   Catingueira
                                            <span id="termo_mapimage_5062_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5062_imgtip_inner1">PIANCO</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5062.gif); width:70px; height:60px; left:28.5%  ; top:43.8%;" class="mapitem_img" id="termo_mapimage_5062_imagem">
                                            <div onclick="Mapa._hideMenu('5062')" style="display:none;" id="info_menu_5062" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5062', 'out', '')" onmouseover="Mlib.x('tEv', '5062', 'over', '')" onclick="return Mlib.x('tEv', '5062', 'clk', '')" style="width:3.5%;height:9%;left:29%;top:44%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5062', 'out', '')" onmouseover="Mlib.x('tEv', '5062', 'over', '')" onclick="return Mlib.x('tEv', '5062', 'clk', '')" style="width:3%;height:3.5%;left:29.8%;top:52%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5211', 'out')" onmouseover="Mlib.x('tEv', '5211', 'over')" style="display:none;left:32%  ;top:43.5%;" id="termo_mapimage_5211_imgtip" class="mapatooltip">   Santa Terezinha
                                            <span id="termo_mapimage_5211_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5211_imgtip_inner1">PATOS</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5211.gif'); width: 70px; height: 50px; left: 32%; top: 43.5%; display: none;" class="mapitem_img" id="termo_mapimage_5211_imagem">
                                            <div onclick="Mapa._hideMenu('5211')" style="display:none;" id="info_menu_5211" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5211', 'out', '')" onmouseover="Mlib.x('tEv', '5211', 'over', '')" onclick="return Mlib.x('tEv', '5211', 'clk', '')" style="width:4.3%;height:7%;left:32%;top:44%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5233', 'out')" onmouseover="Mlib.x('tEv', '5233', 'over')" style="left: 35.4%; top: 47%; display: none;" id="termo_mapimage_5233_imgtip" class="mapatooltip">   São José do Bonfim
                                            <span id="termo_mapimage_5233_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5233_imgtip_inner1">PATOS</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5233.gif'); width: 70px; height: 50px; left: 35.4%; top: 47%; display: none;" class="mapitem_img" id="termo_mapimage_5233_imagem">
                                            <div onclick="Mapa._hideMenu('5233')" style="display:none;" id="info_menu_5233" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5233', 'out', '')" onmouseover="Mlib.x('tEv', '5233', 'over', '')" onclick="return Mlib.x('tEv', '5233', 'clk', '')" style="width:2.4%;height:4.6%;left:36.3%;top:47.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5190', 'out')" onmouseover="Mlib.x('tEv', '5190', 'over')" style="display:none;left:40% ;top:42.8%;" id="termo_mapimage_5190_imgtip" class="mapatooltip">   Quixabá
                                            <span id="termo_mapimage_5190_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5190_imgtip_inner1">PATOS</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5190.gif'); width: 70px; height: 50px; left: 40%; top: 42.8%; display: none;" class="mapitem_img" id="termo_mapimage_5190_imagem">
                                            <div onclick="Mapa._hideMenu('5190')" style="display:none;" id="info_menu_5190" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5190', 'out', '')" onmouseover="Mlib.x('tEv', '5190', 'over', '')" onclick="return Mlib.x('tEv', '5190', 'clk', '')" style="width:3%;height:2.5%;left:40%;top:44.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5045', 'out')" onmouseover="Mlib.x('tEv', '5045', 'over')" style="display:none;left:38.8% ;top:46%;" id="termo_mapimage_5045_imgtip" class="mapatooltip">   Cacimba de Areia
                                            <span id="termo_mapimage_5045_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5045_imgtip_inner1">PATOS</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5045.gif'); width: 70px; height: 50px; left: 38.8%; top: 46%; display: none;" class="mapitem_img" id="termo_mapimage_5045_imagem">
                                            <div onclick="Mapa._hideMenu('5045')" style="display:none;" id="info_menu_5045" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5045', 'out', '')" onmouseover="Mlib.x('tEv', '5045', 'over', '')" onclick="return Mlib.x('tEv', '5045', 'clk', '')" style="width:3%;height:5.5%;left:39%;top:46.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5083', 'out')" onmouseover="Mlib.x('tEv', '5083', 'over')" style="display:none;left:40.4%  ;top:53%;" id="termo_mapimage_5083_imgtip" class="mapatooltip">   Desterro
                                            <span id="termo_mapimage_5083_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5083_imgtip_inner1">TEIXEIRA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5083.gif); width:70px; height:50px; left:40.4%  ; top:53%;" class="mapitem_img" id="termo_mapimage_5083_imagem">
                                            <div onclick="Mapa._hideMenu('5083')" style="display:none;" id="info_menu_5083" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5083', 'out', '')" onmouseover="Mlib.x('tEv', '5083', 'over', '')" onclick="return Mlib.x('tEv', '5083', 'clk', '')" style="width:3%;height:4%;left:40.8%;top:54%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5162', 'out')" onmouseover="Mlib.x('tEv', '5162', 'over')" style="display:none;left:42.2%  ;top:45.8%;" id="termo_mapimage_5162_imgtip" class="mapatooltip">   Passagem
                                            <span id="termo_mapimage_5162_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5162_imgtip_inner1">PATOS</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5162.gif'); width: 70px; height: 50px; left: 42.2%; top: 45.8%; display: none;" class="mapitem_img" id="termo_mapimage_5162_imagem">
                                            <div onclick="Mapa._hideMenu('5162')" style="display:none;" id="info_menu_5162" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5162', 'out', '')" onmouseover="Mlib.x('tEv', '5162', 'over', '')" onclick="return Mlib.x('tEv', '5162', 'clk', '')" style="width:2.0%;height:4.5%;left:42.4%;top:46%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5047', 'out')" onmouseover="Mlib.x('tEv', '5047', 'over')" style="display:none;left:39.8%   ;top:49.8%;" id="termo_mapimage_5047_imgtip" class="mapatooltip">   Cacimbas
                                            <span id="termo_mapimage_5047_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5047_imgtip_inner1">TEIXEIRA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5047.gif); width:70px; height:50px; left:39.8%   ; top:49.8%;" class="mapitem_img" id="termo_mapimage_5047_imagem">
                                            <div onclick="Mapa._hideMenu('5047')" style="display:none;" id="info_menu_5047" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5047', 'out', '')" onmouseover="Mlib.x('tEv', '5047', 'over', '')" onclick="return Mlib.x('tEv', '5047', 'clk', '')" style="width:3.7%;height:3.2%;left:40.2%;top:50.6%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5047', 'out')" onmouseover="Mlib.x('tEv', '5047', 'over')" style="display:none;left:39.8%   ;top:49.8%;" id="termo_mapimage_5047_imgtip" class="mapatooltip">   Cacimbas
                                            <span id="termo_mapimage_5047_imgtip_title" style="display:none" class="tooltip_subtitle"> <span id="termo_mapimage_5047_imgtip_inner1">Cacimbas (Sede)</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5047.gif); width:70px; height:50px; left:39.8%   ; top:49.8%;" class="mapitem_img" id="termo_mapimage_5047_imagem">
                                            <div onclick="Mapa._hideMenu('5047')" style="display:none;" id="info_menu_5047" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5047', 'out', '')" onmouseover="Mlib.x('tEv', '5047', 'over', '')" onclick="return Mlib.x('tEv', '5047', 'clk', '')" style="width:3.7%;height:3.2%;left:40.2%;top:50.6%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5013', 'out')" onmouseover="Mlib.x('tEv', '5013', 'over')" style="display:none;left:44.25%   ;top:45.5%;" id="termo_mapimage_5013_imgtip" class="mapatooltip">   Areia de Baraúnas
                                            <span id="termo_mapimage_5013_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5013_imgtip_inner1">PATOS</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5013.gif'); width: 70px; height: 50px; left: 44.25%; top: 45.5%; display: none;" class="mapitem_img" id="termo_mapimage_5013_imagem">
                                            <div onclick="Mapa._hideMenu('5013')" style="display:none;" id="info_menu_5013" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5013', 'out', '')" onmouseover="Mlib.x('tEv', '5013', 'over', '')" onclick="return Mlib.x('tEv', '5013', 'clk', '')" style="width:2%;height:4.0%;left:44.3%;top:46%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5122', 'out')" onmouseover="Mlib.x('tEv', '5122', 'over')" style="display:none;left:43.3% ;top:53.3%;" id="termo_mapimage_5122_imgtip" class="mapatooltip">   Livramento
                                            <span id="termo_mapimage_5122_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5122_imgtip_inner1">TAPEROA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5122.gif); width:70px; height:50px; left:43.3% ; top:53.3%;" class="mapitem_img" id="termo_mapimage_5122_imagem">
                                            <div onclick="Mapa._hideMenu('5122')" style="display:none;" id="info_menu_5122" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5122', 'out', '')" onmouseover="Mlib.x('tEv', '5122', 'over', '')" onclick="return Mlib.x('tEv', '5122', 'clk', '')" style="width:6.3%;height:3.0%;left:43.5%;top:55.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5236', 'out')" onmouseover="Mlib.x('tEv', '5236', 'over')" style="left: 43.9%; top: 55.5%; display: none;" id="termo_mapimage_5236_imgtip" class="mapatooltip">   São José dos Cordeiros
                                            <span id="termo_mapimage_5236_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5236_imgtip_inner1">SERRA BRANCA</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T1/termo_5236.gif'); width: 70px; height: 50px; left: 43.9%; top: 55.5%; display: none;" class="mapitem_img" id="termo_mapimage_5236_imagem">
                                            <div onclick="Mapa._hideMenu('5236')" style="display:none;" id="info_menu_5236" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5236', 'out', '')" onmouseover="Mlib.x('tEv', '5236', 'over', '')" onclick="return Mlib.x('tEv', '5236', 'clk', '')" style="width:7%;height:4.3%;left:44%;top:58.3%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5052', 'out')" onmouseover="Mlib.x('tEv', '5052', 'over')" style="display:none;left:45.3% ;top:74.5%;" id="termo_mapimage_5052_imgtip" class="mapatooltip">   Camalaú
                                            <span id="termo_mapimage_5052_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5052_imgtip_inner1">MONTEIRO</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5052.gif); width:70px; height:50px; left:45.3% ; top:74.5%;" class="mapitem_img" id="termo_mapimage_5052_imagem">
                                            <div onclick="Mapa._hideMenu('5052')" style="display:none;" id="info_menu_5052" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5052', 'out', '')" onmouseover="Mlib.x('tEv', '5052', 'over', '')" onclick="return Mlib.x('tEv', '5052', 'clk', '')" style="width:7%;height:6%;left:46%;top:76%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5160', 'out')" onmouseover="Mlib.x('tEv', '5160', 'over')" style="left: 40%; top: 64%; display: none;" id="termo_mapimage_5160_imgtip" class="mapatooltip">   Ouro Velho
                                            <span id="termo_mapimage_5160_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5160_imgtip_inner1">PRATA</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T1/termo_5160.gif'); width: 70px; height: 50px; left: 40%; top: 64%; display: none;" class="mapitem_img" id="termo_mapimage_5160_imagem">
                                            <div onclick="Mapa._hideMenu('5160')" style="display:none;" id="info_menu_5160" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5160', 'out', '')" onmouseover="Mlib.x('tEv', '5160', 'over', '')" onclick="return Mlib.x('tEv', '5160', 'clk', '')" style="width:2%;height:5%;left:40%;top:65%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5007', 'out')" onmouseover="Mlib.x('tEv', '5007', 'over')" style="display:none;left:42.4% ;top:63.3%;" id="termo_mapimage_5007_imgtip" class="mapatooltip">   Amparo
                                            <span id="termo_mapimage_5007_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5007_imgtip_inner1">SUME</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5007.gif); width:70px; height:50px; left:42.4% ; top:63.3%;" class="mapitem_img" id="termo_mapimage_5007_imagem">
                                            <div onclick="Mapa._hideMenu('5007')" style="display:none;" id="info_menu_5007" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5007', 'out', '2')" onmouseover="Mlib.x('tEv', '5007', 'over', '2')" onclick="return Mlib.x('tEv', '5007', 'clk', '2')" style="width:2.2%;height:4.2%;left:42.5%;top:64%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5200', 'out')" onmouseover="Mlib.x('tEv', '5200', 'over')" style="display:none;left:46% ;top:44.5%;" id="termo_mapimage_5200_imgtip" class="mapatooltip">   Salgadinho
                                            <span id="termo_mapimage_5200_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5200_imgtip_inner1">PATOS</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5200.gif'); width: 70px; height: 50px; left: 46%; top: 44.5%; display: none;" class="mapitem_img" id="termo_mapimage_5200_imagem">
                                            <div onclick="Mapa._hideMenu('5200')" style="display:none;" id="info_menu_5200" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5200', 'out', '')" onmouseover="Mlib.x('tEv', '5200', 'over', '')" onclick="return Mlib.x('tEv', '5200', 'clk', '')" style="width:3.8%;height:3.8%;left:46%;top:45.8%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5018', 'out')" onmouseover="Mlib.x('tEv', '5018', 'over')" style="display:none;left:49.5% ;top:44.0%;" id="termo_mapimage_5018_imgtip" class="mapatooltip">   Assunção
                                            <span id="termo_mapimage_5018_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5018_imgtip_inner1">TAPEROA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5018.gif); width:70px; height:50px; left:49.5% ; top:44.0%;" class="mapitem_img" id="termo_mapimage_5018_imagem">
                                            <div onclick="Mapa._hideMenu('5018')" style="display:none;" id="info_menu_5018" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5018', 'out', '')" onmouseover="Mlib.x('tEv', '5018', 'over', '')" onclick="return Mlib.x('tEv', '5018', 'clk', '')" style="width:2.9%;height:4%;left:52%;top:40.0%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5070', 'out')" onmouseover="Mlib.x('tEv', '5070', 'over')" style="display:none;left:49.9%  ;top:71%;" id="termo_mapimage_5070_imgtip" class="mapatooltip">   Congo
                                            <span id="termo_mapimage_5070_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5070_imgtip_inner1">SUME</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5070.gif); width:70px; height:50px; left:49.9%  ; top:71%;" class="mapitem_img" id="termo_mapimage_5070_imagem">
                                            <div onclick="Mapa._hideMenu('5070')" style="display:none;" id="info_menu_5070" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5070', 'out', '')" onmouseover="Mlib.x('tEv', '5070', 'over', '')" onclick="return Mlib.x('tEv', '5070', 'clk', '')" style="width:2.8%;height:3.8%;left:50.5%;top:71.3%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5070', 'out', '')" onmouseover="Mlib.x('tEv', '5070', 'over', '')" onclick="return Mlib.x('tEv', '5070', 'clk', '')" style="width:2%;height:5.5%;left:52.8%;top:74.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5057', 'out')" onmouseover="Mlib.x('tEv', '5057', 'over')" style="left: 53.2%; top: 70%; display: none;" id="termo_mapimage_5057_imgtip" class="mapatooltip">   Caraúbas
                                            <span id="termo_mapimage_5057_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5057_imgtip_inner1">SAO JOAO DO CARIRI</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5057.gif'); width: 70px; height: 50px; left: 53.2%; top: 70%; display: none;" class="mapitem_img" id="termo_mapimage_5057_imagem">
                                            <div onclick="Mapa._hideMenu('5057')" style="display:none;" id="info_menu_5057" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5057', 'out', '')" onmouseover="Mlib.x('tEv', '5057', 'over', '')" onclick="return Mlib.x('tEv', '5057', 'clk', '')" style="width:3.0%;height:8.8%;left:54.8%;top:70.8%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5073', 'out')" onmouseover="Mlib.x('tEv', '5073', 'over')" style="display:none;left:51.9% ;top:66.6%;" id="termo_mapimage_5073_imgtip" class="mapatooltip">   Coxixola
                                            <span id="termo_mapimage_5073_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5073_imgtip_inner1">SERRA BRANCA</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T1/termo_5073.gif'); width: 70px; height: 50px; left: 51.9%; top: 66.6%; display: none;" class="mapitem_img" id="termo_mapimage_5073_imagem">
                                            <div onclick="Mapa._hideMenu('5073')" style="display:none;" id="info_menu_5073" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5073', 'out', '')" onmouseover="Mlib.x('tEv', '5073', 'over', '')" onclick="return Mlib.x('tEv', '5073', 'clk', '')" style="width:2.0%;height:4.5%;left:52.6%;top:67%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5114', 'out')" onmouseover="Mlib.x('tEv', '5114', 'over')" style="display:none;left:47.4% ;top:40.4%;" id="termo_mapimage_5114_imgtip" class="mapatooltip">   Junco do Seridó
                                            <span id="termo_mapimage_5114_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5114_imgtip_inner1">SANTA LUZIA</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5114.gif'); width: 70px; height: 50px; left: 47.4%; top: 40.4%; display: none;" class="mapitem_img" id="termo_mapimage_5114_imagem">
                                            <div onclick="Mapa._hideMenu('5114')" style="display:none;" id="info_menu_5114" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5114', 'out', '')" onmouseover="Mlib.x('tEv', '5114', 'over', '')" onclick="return Mlib.x('tEv', '5114', 'clk', '')" style="width:3.2%;height:3.4%;left:47.8%;top:41.8%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5215', 'out')" onmouseover="Mlib.x('tEv', '5215', 'over')" style="display:none;left:51.9% ;top:49%;" id="termo_mapimage_5215_imgtip" class="mapatooltip">   Santo André
                                            <span id="termo_mapimage_5215_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5215_imgtip_inner1">JUAZEIRINHO</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5215.gif); width:70px; height:50px; left:51.9% ; top:49%;" class="mapitem_img" id="termo_mapimage_5215_imagem">
                                            <div onclick="Mapa._hideMenu('5215')" style="display:none;" id="info_menu_5215" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5215', 'out', '')" onmouseover="Mlib.x('tEv', '5215', 'over', '')" onclick="return Mlib.x('tEv', '5215', 'clk', '')" style="width:2.0%;height:7.3%;left:52.6%;top:49.3%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5161', 'out')" onmouseover="Mlib.x('tEv', '5161', 'over')" style="display:none;left:50% ;top:53%;" id="termo_mapimage_5161_imgtip" class="mapatooltip">   Parari
                                            <span id="termo_mapimage_5161_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5161_imgtip_inner1">SERRA BRANCA</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T1/termo_5161.gif'); width: 70px; height: 50px; left: 50%; top: 53%; display: none;" class="mapitem_img" id="termo_mapimage_5161_imagem">
                                            <div onclick="Mapa._hideMenu('5161')" style="display:none;" id="info_menu_5161" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5161', 'out', '')" onmouseover="Mlib.x('tEv', '5161', 'over', '')" onclick="return Mlib.x('tEv', '5161', 'clk', '')" style="width:2%;height:4.5%;left:51.3%;top:54%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5264', 'out')" onmouseover="Mlib.x('tEv', '5264', 'over')" style="display:none;left:51.4% ;top:39%;" id="termo_mapimage_5264_imgtip" class="mapatooltip">   Tenório
                                            <span id="termo_mapimage_5264_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5264_imgtip_inner1">JUAZEIRINHO</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5264.gif); width:70px; height:50px; left:51.4% ; top:39%;" class="mapitem_img" id="termo_mapimage_5264_imagem">
                                            <div onclick="Mapa._hideMenu('5264')" style="display:none;" id="info_menu_5264" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5264', 'out', '')" onmouseover="Mlib.x('tEv', '5264', 'over', '')" onclick="return Mlib.x('tEv', '5264', 'clk', '')" style="width:2.5%;height:3.2%;left:52%;top:41%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5244', 'out')" onmouseover="Mlib.x('tEv', '5244', 'over')" style="left: 54.4%; top: 37.2%; display: none;" id="termo_mapimage_5244_imgtip" class="mapatooltip">   Seridó
                                            <span id="termo_mapimage_5244_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5244_imgtip_inner1">SOLEDADE</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T1/termo_5244.gif'); width: 70px; height: 50px; left: 54.4%; top: 37.2%; display: none;" class="mapitem_img" id="termo_mapimage_5244_imagem">
                                            <div onclick="Mapa._hideMenu('5244')" style="display:none;" id="info_menu_5244" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5244', 'out', '')" onmouseover="Mlib.x('tEv', '5244', 'over', '')" onclick="return Mlib.x('tEv', '5244', 'clk', '')" style="width:5%;height:3%;left:54%;top:38%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5100', 'out')" onmouseover="Mlib.x('tEv', '5100', 'over')" style="display:none;left:53.7% ;top:50.6%;" id="termo_mapimage_5100_imgtip" class="mapatooltip">   Gurjão
                                            <span id="termo_mapimage_5100_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5100_imgtip_inner1">SAO JOAO DO CARIRI</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5100.gif'); width: 70px; height: 50px; left: 53.7%; top: 50.6%; display: none;" class="mapitem_img" id="termo_mapimage_5100_imagem">
                                            <div onclick="Mapa._hideMenu('5100')" style="display:none;" id="info_menu_5100" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5100', 'out', '')" onmouseover="Mlib.x('tEv', '5100', 'over', '')" onclick="return Mlib.x('tEv', '5100', 'clk', '')" style="width:5%;height:4.5%;left:54.7%;top:51.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5075', 'out')" onmouseover="Mlib.x('tEv', '5075', 'over')" style="display:none;left:58.7% ;top:35.3%;" id="termo_mapimage_5075_imgtip" class="mapatooltip">   Cubati
                                            <span id="termo_mapimage_5075_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5075_imgtip_inner1">SOLEDADE</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T1/termo_5075.gif'); width: 70px; height: 50px; left: 58.7%; top: 35.3%; display: none;" class="mapitem_img" id="termo_mapimage_5075_imagem">
                                            <div onclick="Mapa._hideMenu('5075')" style="display:none;" id="info_menu_5075" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5075', 'out', '')" onmouseover="Mlib.x('tEv', '5075', 'over', '')" onclick="return Mlib.x('tEv', '5075', 'clk', '')" style="width:2.5%;height:4.5%;left:59%;top:36.3%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5165', 'out')" onmouseover="Mlib.x('tEv', '5165', 'over')" style="display:none;left:55.3% ;top:30.8%;" id="termo_mapimage_5165_imgtip" class="mapatooltip">   Pedra Lavrada
                                            <span id="termo_mapimage_5165_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5165_imgtip_inner1">PICUI</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5165.gif); width:70px; height:50px; left:55.3% ; top:30.8%;" class="mapitem_img" id="termo_mapimage_5165_imagem">
                                            <div onclick="Mapa._hideMenu('5165')" style="display:none;" id="info_menu_5165" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5165', 'out', '')" onmouseover="Mlib.x('tEv', '5165', 'over', '')" onclick="return Mlib.x('tEv', '5165', 'clk', '')" style="width:5.8%;height:3.5%;left:56%;top:33%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5154', 'out')" onmouseover="Mlib.x('tEv', '5154', 'over')" style="display:none;left:54.8% ;top:27.6%;" id="termo_mapimage_5154_imgtip" class="mapatooltip">   Nova Palmeira
                                            <span id="termo_mapimage_5154_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5154_imgtip_inner1">PICUI</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5154.gif); width:70px; height:50px; left:54.8% ; top:27.6%;" class="mapitem_img" id="termo_mapimage_5154_imagem">
                                            <div onclick="Mapa._hideMenu('5154')" style="display:none;" id="info_menu_5154" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5154', 'out', '')" onmouseover="Mlib.x('tEv', '5154', 'over', '')" onclick="return Mlib.x('tEv', '5154', 'clk', '')" style="width:6.8%;height:3.5%;left:55%;top:29%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5022', 'out')" onmouseover="Mlib.x('tEv', '5022', 'over')" style="display:none;left:60.7% ;top:26%;" id="termo_mapimage_5022_imgtip" class="mapatooltip">   Baraúna
                                            <span id="termo_mapimage_5022_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5022_imgtip_inner1">PICUI</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5022.gif); width:70px; height:50px; left:60.7% ; top:26%;" class="mapitem_img" id="termo_mapimage_5022_imagem">
                                            <div onclick="Mapa._hideMenu('5022')" style="display:none;" id="info_menu_5022" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5022', 'out', '')" onmouseover="Mlib.x('tEv', '5022', 'over', '')" onclick="return Mlib.x('tEv', '5022', 'clk', '')" style="width:1.5%;height:3.5%;left:60.5%;top:27%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5025', 'out')" onmouseover="Mlib.x('tEv', '5025', 'over')" style="display:none;left:57.3% ;top:64.8%;" id="termo_mapimage_5025_imgtip" class="mapatooltip">   Barra de São Miguel
                                            <span id="termo_mapimage_5025_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5025_imgtip_inner1">CABACEIRAS</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T1/termo_5025.gif'); width: 70px; height: 70px; left: 57.3%; top: 64.8%; display: none;" class="mapitem_img" id="termo_mapimage_5025_imagem">
                                            <div onclick="Mapa._hideMenu('5025')" style="display:none;" id="info_menu_5025" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5025', 'out', '')" onmouseover="Mlib.x('tEv', '5025', 'over', '')" onclick="return Mlib.x('tEv', '5025', 'clk', '')" style="width:6%;height:5%;left:58%;top:70.8%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5025', 'out', '')" onmouseover="Mlib.x('tEv', '5025', 'over', '')" onclick="return Mlib.x('tEv', '5025', 'clk', '')" style="width:3%;height:8%;left:60%;top:66%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5219', 'out')" onmouseover="Mlib.x('tEv', '5219', 'over')" style="display:none;left:56.4% ;top:63%;" id="termo_mapimage_5219_imgtip" class="mapatooltip">   São Domingos do Cariri
                                            <span id="termo_mapimage_5219_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5219_imgtip_inner1">CABACEIRAS</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T1/termo_5219.gif'); width: 70px; height: 50px; left: 56.4%; top: 63%; display: none;" class="mapitem_img" id="termo_mapimage_5219_imagem">
                                            <div onclick="Mapa._hideMenu('5219')" style="display:none;" id="info_menu_5219" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5219', 'out', '')" onmouseover="Mlib.x('tEv', '5219', 'over', '')" onclick="return Mlib.x('tEv', '5219', 'clk', '')" style="width:3%;height:6%;left:57%;top:64%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5065', 'out')" onmouseover="Mlib.x('tEv', '5065', 'over')" style="left: 64.8%; top: 58%; display: none;" id="termo_mapimage_5065_imgtip" class="mapatooltip">   Caturité
                                            <span id="termo_mapimage_5065_imgtip_title" style="" class="tooltip_subtitle"><span id="termo_mapimage_5065_imgtip_inner1">BOQUEIRÃO</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T1/termo_5065.gif'); width: 23px; height: 23px; left: 64.8%; top: 58%; display: none;" class="mapitem_img" id="termo_mapimage_5065_imagem">
                                            <div onclick="Mapa._hideMenu('5065')" style="display:none;" id="info_menu_5065" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5065', 'out', '')" onmouseover="Mlib.x('tEv', '5065', 'over', '')" onclick="return Mlib.x('tEv', '5065', 'clk', '')" style="width:2%;height:4.5%;left:65.5%;top:58%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5255', 'out')" onmouseover="Mlib.x('tEv', '5255', 'over')" style="display:none;left:61.6%  ;top:29.8%;" id="termo_mapimage_5255_imgtip" class="mapatooltip">   Sossego
                                            <span id="termo_mapimage_5255_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5255_imgtip_inner1">BARRA DE SANTA ROSA</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T1/termo_5255.gif'); width: 70px; height: 50px; left: 61.6%; top: 29.8%; display: none;" class="mapitem_img" id="termo_mapimage_5255_imagem">
                                            <div onclick="Mapa._hideMenu('5255')" style="display:none;" id="info_menu_5255" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5255', 'out', '')" onmouseover="Mlib.x('tEv', '5255', 'over', '')" onclick="return Mlib.x('tEv', '5255', 'clk', '')" style="width:2.5%;height:5.5%;left:61.8%;top:30%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5004', 'out')" onmouseover="Mlib.x('tEv', '5004', 'over')" style="left: 64.6%; top: 66.8%; display: none;" id="termo_mapimage_5004_imgtip" class="mapatooltip">   Alcantil
                                            <span id="termo_mapimage_5004_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5004_imgtip_inner1">BOQUEIRAO</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T1/termo_5004.gif'); width: 70px; height: 50px; left: 64.6%; top: 66.8%; display: none;" class="mapitem_img" id="termo_mapimage_5004_imagem">
                                            <div onclick="Mapa._hideMenu('5004')" style="display:none;" id="info_menu_5004" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5004', 'out', '')" onmouseover="Mlib.x('tEv', '5004', 'over', '')" onclick="return Mlib.x('tEv', '5004', 'clk', '')" style="width:3%;height:6.5%;left:65.2%;top:68%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5115', 'out')" onmouseover="Mlib.x('tEv', '5115', 'over')" style="display:none;left:84.2%;top:55.7%;" id="termo_mapimage_5115_imgtip" class="mapatooltip">   Juripiranga
                                            <span id="termo_mapimage_5115_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5115_imgtip_inner1">ITABAIANA</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5115.gif'); width: 70px; height: 50px; left: 84.2%; top: 55.7%; display: none;" class="mapitem_img" id="termo_mapimage_5115_imagem">
                                            <div onclick="Mapa._hideMenu('5115')" style="display:none;" id="info_menu_5115" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5115', 'out', '9')" onmouseover="Mlib.x('tEv', '5115', 'over', '9')" onclick="return Mlib.x('tEv', '5115', 'clk', '9')" style="width:2.4%;height:3%;left:84.8%;top:56.0%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5159', 'out')" onmouseover="Mlib.x('tEv', '5159', 'over')" style="display:none;left:59.5%;top:37.5%;" id="termo_mapimage_5159_imgtip" class="mapatooltip">   Olivedos
                                            <span id="termo_mapimage_5159_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5159_imgtip_inner1">SOLEDADE</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T1/termo_5159.gif'); width: 70px; height: 50px; left: 59.5%; top: 37.5%; display: none;" class="mapitem_img" id="termo_mapimage_5159_imagem">
                                            <div onclick="Mapa._hideMenu('5159')" style="display:none;" id="info_menu_5159" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5159', 'out', '')" onmouseover="Mlib.x('tEv', '5159', 'over', '')" onclick="return Mlib.x('tEv', '5159', 'clk', '')" style="width:3.0%;height:8%;left:60.4%;top:39%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5239', 'out')" onmouseover="Mlib.x('tEv', '5239', 'over')" style="display:none;left:85.3% ;top:51.2%;" id="termo_mapimage_5239_imgtip" class="mapatooltip">   São Miguel de Taipu
                                            <span id="termo_mapimage_5239_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5239_imgtip_inner1">PILAR</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5239.gif); width:17px; height:25px; left:85.3% ; top:51.2%;" class="mapitem_img" id="termo_mapimage_5239_imagem">
                                            <div onclick="Mapa._hideMenu('5239')" style="display:none;" id="info_menu_5239" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5239', 'out', '9')" onmouseover="Mlib.x('tEv', '5239', 'over', '9')" onclick="return Mlib.x('tEv', '5239', 'clk', '9')" style="width:1.5%;height:4.8%;left:85.5%;top:51%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5237', 'out')" onmouseover="Mlib.x('tEv', '5237', 'over')" style="display:none;left:80.7% ;top:51%;" id="termo_mapimage_5237_imgtip" class="mapatooltip">   São José dos Ramos
                                            <span id="termo_mapimage_5237_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5237_imgtip_inner1">PILAR</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5237.gif); width:30px; height:22px; left:80.7% ; top:51%;" class="mapitem_img" id="termo_mapimage_5237_imagem">
                                            <div onclick="Mapa._hideMenu('5237')" style="display:none;" id="info_menu_5237" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5237', 'out', '9')" onmouseover="Mlib.x('tEv', '5237', 'over', '9')" onclick="return Mlib.x('tEv', '5237', 'clk', '9')" style="width:3%;height:2.5%;left:81.0%;top:52%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5167', 'out')" onmouseover="Mlib.x('tEv', '5167', 'over')" style="display:none;left:82.8% ;top:28.6%;" id="termo_mapimage_5167_imgtip" class="mapatooltip">   Pedro Régis
                                            <span id="termo_mapimage_5167_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5167_imgtip_inner1">JACARAU</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5167.gif'); width: 19px; height: 18px; left: 82.8%; top: 28.6%; display: none;" class="mapitem_img" id="termo_mapimage_5167_imagem">
                                            <div onclick="Mapa._hideMenu('5167')" style="display:none;" id="info_menu_5167" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5167', 'out', '7')" onmouseover="Mlib.x('tEv', '5167', 'over', '7')" onclick="return Mlib.x('tEv', '5167', 'clk', '7')" style="width:1.6%;height:3.2%;left:83.3%;top:28.8%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5080', 'out')" onmouseover="Mlib.x('tEv', '5080', 'over')" style="left: 82.6%; top: 31.6%; display: none;" id="termo_mapimage_5080_imgtip" class="mapatooltip">   Curral de Cima
                                            <span id="termo_mapimage_5080_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5080_imgtip_inner1">JACARAU</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5080.gif'); width: 29px; height: 18px; left: 82.6%; top: 31.6%; display: none;" class="mapitem_img" id="termo_mapimage_5080_imagem">
                                            <div onclick="Mapa._hideMenu('5080')" style="display:none;" id="info_menu_5080" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5080', 'out', '7')" onmouseover="Mlib.x('tEv', '5080', 'over', '7')" onclick="return Mlib.x('tEv', '5080', 'clk', '7')" style="width:3%;height:2.2%;left:83.0%;top:32%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5108', 'out')" onmouseover="Mlib.x('tEv', '5108', 'over')" style="display:none;left:83% ;top:34%;" id="termo_mapimage_5108_imgtip" class="mapatooltip">   Itapororoca
                                            <span id="termo_mapimage_5108_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5108_imgtip_inner1">MAMANGUAPE</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5108.gif'); width: 34px; height: 24px; left: 83%; top: 34%; display: none;" class="mapitem_img" id="termo_mapimage_5108_imagem">
                                            <div onclick="Mapa._hideMenu('5108')" style="display:none;" id="info_menu_5108" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5108', 'out', '7')" onmouseover="Mlib.x('tEv', '5108', 'over', '7')" onclick="return Mlib.x('tEv', '5108', 'clk', '7')" style="width:3%;height:2.8%;left:83.8%;top:35%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5077', 'out')" onmouseover="Mlib.x('tEv', '5077', 'over')" style="display:none;left:83.4% ;top:37.8%;" id="termo_mapimage_5077_imgtip" class="mapatooltip">   Cuité de Mamanguape
                                            <span id="termo_mapimage_5077_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5077_imgtip_inner1">MAMANGUAPE</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5077.gif'); width: 27px; height: 21px; left: 83.4%; top: 37.8%; display: none;" class="mapitem_img" id="termo_mapimage_5077_imagem">
                                            <div onclick="Mapa._hideMenu('5077')" style="display:none;" id="info_menu_5077" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5077', 'out', '7')" onmouseover="Mlib.x('tEv', '5077', 'over', '7')" onclick="return Mlib.x('tEv', '5077', 'clk', '7')" style="width:2%;height:3.6%;left:83.9%;top:38%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5056', 'out')" onmouseover="Mlib.x('tEv', '5056', 'over')" style="display:none;left:85.5%  ;top:37.8%;" id="termo_mapimage_5056_imgtip" class="mapatooltip">   Capim
                                            <span id="termo_mapimage_5056_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5056_imgtip_inner1">MAMANGUAPE</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5056.gif'); width: 24px; height: 21px; left: 85.5%; top: 37.8%; display: none;" class="mapitem_img" id="termo_mapimage_5056_imagem">
                                            <div onclick="Mapa._hideMenu('5056')" style="display:none;" id="info_menu_5056" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5056', 'out', '7')" onmouseover="Mlib.x('tEv', '5056', 'over', '7')" onclick="return Mlib.x('tEv', '5056', 'clk', '7')" style="width:2%;height:3.2%;left:86%;top:38.2%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5051', 'out')" onmouseover="Mlib.x('tEv', '5051', 'over')" style="display:none;left:82.2% ;top:45.6%;" id="termo_mapimage_5051_imgtip" class="mapatooltip">   Caldas Brandão
                                            <span id="termo_mapimage_5051_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5051_imgtip_inner1">GURINHEM</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5051.gif); width:16px; height:31px; left:82.2% ; top:45.6%;" class="mapitem_img" id="termo_mapimage_5051_imagem">
                                            <div onclick="Mapa._hideMenu('5051')" style="display:none;" id="info_menu_5051" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5051', 'out', '')" onmouseover="Mlib.x('tEv', '5051', 'over', '')" onclick="return Mlib.x('tEv', '5051', 'clk', '')" style="width:1.2%;height:3.4%;left:82.5%;top:47.8%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5193', 'out')" onmouseover="Mlib.x('tEv', '5193', 'over')" style="display:none;left:83.2% ;top:48.4%;" id="termo_mapimage_5193_imgtip" class="mapatooltip">   Riachão do Poço
                                            <span id="termo_mapimage_5193_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5193_imgtip_inner1">SAPE</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5193.gif); width:15px; height:16px; left:83.2% ; top:48.4%;" class="mapitem_img" id="termo_mapimage_5193_imagem">
                                            <div onclick="Mapa._hideMenu('5193')" style="display:none;" id="info_menu_5193" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5193', 'out', '9')" onmouseover="Mlib.x('tEv', '5193', 'over', '9')" onclick="return Mlib.x('tEv', '5193', 'clk', '9')" style="width:2.6%;height:1.6%;left:83.6%;top:50.3%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5252', 'out')" onmouseover="Mlib.x('tEv', '5252', 'over')" style="display:none;left:83.3% ;top:48.8%;" id="termo_mapimage_5252_imgtip" class="mapatooltip">   Sobrado
                                            <span id="termo_mapimage_5252_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5252_imgtip_inner1">SAPE</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T2/termo_5252.gif); width:27px; height:18px; left:83.3% ; top:48.8%;" class="mapitem_img" id="termo_mapimage_5252_imagem">
                                            <div onclick="Mapa._hideMenu('5252')" style="display:none;" id="info_menu_5252" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5252', 'out', '9')" onmouseover="Mlib.x('tEv', '5252', 'over', '9')" onclick="return Mlib.x('tEv', '5252', 'clk', '9')" style="width:2.6%;height:1.4%;left:83.8%;top:51%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5252', 'out', '9')" onmouseover="Mlib.x('tEv', '5252', 'over', '9')" onclick="return Mlib.x('tEv', '5252', 'clk', '9')" style="width:1.3%;height:3%;left:84.8%;top:49%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5194', 'out')" onmouseover="Mlib.x('tEv', '5194', 'over')" style="display:none;left:63%;top:67.4%;" id="termo_mapimage_5194_imgtip" class="mapatooltip">   Riacho de Santo Antônio
                                            <span id="termo_mapimage_5194_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5194_imgtip_inner1">BOQUEIRAO</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T1/termo_5194.gif'); width: 24px; height: 33px; left: 63%; top: 67.4%; display: none;" class="mapitem_img" id="termo_mapimage_5194_imagem">
                                            <div onclick="Mapa._hideMenu('5194')" style="display:none;" id="info_menu_5194" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5194', 'out', '')" onmouseover="Mlib.x('tEv', '5194', 'over', '')" onclick="return Mlib.x('tEv', '5194', 'clk', '')" style="width:1.5%;height:6.5%;left:63.4%;top:68%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5024', 'out')" onmouseover="Mlib.x('tEv', '5024', 'over')" style="left: 65%; top: 61.8%; display: none;" id="termo_mapimage_5024_imgtip" class="mapatooltip">   Barra de Santana
                                            <span id="termo_mapimage_5024_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5024_imgtip_inner1">BOQUEIRAO</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T1/termo_5024.gif'); width: 55px; height: 42px; left: 65%; top: 61.8%; display: none;" class="mapitem_img" id="termo_mapimage_5024_imagem">
                                            <div onclick="Mapa._hideMenu('5024')" style="display:none;" id="info_menu_5024" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5024', 'out', '')" onmouseover="Mlib.x('tEv', '5024', 'over', '')" onclick="return Mlib.x('tEv', '5024', 'clk', '')" style="width:5.5%;height:4%;left:65.2%;top:64%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5024', 'out', '')" onmouseover="Mlib.x('tEv', '5024', 'over', '')" onclick="return Mlib.x('tEv', '5024', 'clk', '')" style="width:2.8%;height:6%;left:68%;top:64%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5031', 'out')" onmouseover="Mlib.x('tEv', '5031', 'over')" style="left: 59.6%; top: 49.8%; display: none;" id="termo_mapimage_5031_imgtip" class="mapatooltip">   Boa Vista
                                            <span id="termo_mapimage_5031_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5031_imgtip_inner1">CAMPINA GRANDE</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T3/termo_5031.gif'); width: 48px; height: 41px; left: 59.6%; top: 49.8%; display: none;" class="mapitem_img" id="termo_mapimage_5031_imagem">
                                            <div onclick="Mapa._hideMenu('5031')" style="display:none;" id="info_menu_5031" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5031', 'out', '1')" onmouseover="Mlib.x('tEv', '5031', 'over', '1')" onclick="return Mlib.x('tEv', '5031', 'clk', '1')" style="width:5%;height:6.6%;left:60%;top:51.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5082', 'out')" onmouseover="Mlib.x('tEv', '5082', 'over')" style="display:none;left:68.3% ;top:26.6%;" id="termo_mapimage_5082_imgtip" class="mapatooltip">   Damião
                                            <span id="termo_mapimage_5082_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5082_imgtip_inner1">BARRA DE SANTA ROSA</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T1/termo_5082.gif'); width: 18px; height: 29px; left: 68.3%; top: 26.6%; display: none;" class="mapitem_img" id="termo_mapimage_5082_imagem">
                                            <div onclick="Mapa._hideMenu('5082')" style="display:none;" id="info_menu_5082" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5082', 'out', '')" onmouseover="Mlib.x('tEv', '5082', 'over', '')" onclick="return Mlib.x('tEv', '5082', 'clk', '')" style="width:2.3%;height:5%;left:68.5%;top:27.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5061', 'out')" onmouseover="Mlib.x('tEv', '5061', 'over')" style="left: 69.4%; top: 30.8%; display: none;" id="termo_mapimage_5061_imgtip" class="mapatooltip">   Casserengue
                                            <span id="termo_mapimage_5061_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5061_imgtip_inner1">SOLANEA</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5061.gif'); width: 28px; height: 35px; left: 69.4%; top: 30.8%; display: none;" class="mapitem_img" id="termo_mapimage_5061_imagem">
                                            <div onclick="Mapa._hideMenu('5061')" style="display:none;" id="info_menu_5061" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5061', 'out', '')" onmouseover="Mlib.x('tEv', '5061', 'over', '')" onclick="return Mlib.x('tEv', '5061', 'clk', '')" style="width:2.7%;height:5.5%;left:69.8%;top:31.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5005', 'out')" onmouseover="Mlib.x('tEv', '5005', 'over')" style="left: 65.2%; top: 35.6%; display: none;" id="termo_mapimage_5005_imgtip" class="mapatooltip">   Algodão de Jandaíra
                                            <span id="termo_mapimage_5005_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5005_imgtip_inner1">REMIGIO</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T1/termo_5005.gif'); width: 51px; height: 35px; left: 65.2%; top: 35.6%; display: none;" class="mapitem_img" id="termo_mapimage_5005_imagem">
                                            <div onclick="Mapa._hideMenu('5005')" style="display:none;" id="info_menu_5005" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5005', 'out', '')" onmouseover="Mlib.x('tEv', '5005', 'over', '')" onclick="return Mlib.x('tEv', '5005', 'clk', '')" style="width:3.2%;height:2%;left:65%;top:40.3%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5005', 'out', '')" onmouseover="Mlib.x('tEv', '5005', 'over', '')" onclick="return Mlib.x('tEv', '5005', 'clk', '')" style="width:2.8%;height:2%;left:66%;top:39%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5005', 'out', '')" onmouseover="Mlib.x('tEv', '5005', 'over', '')" onclick="return Mlib.x('tEv', '5005', 'clk', '')" style="width:3%;height:2.2%;left:68%;top:37%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5192', 'out')" onmouseover="Mlib.x('tEv', '5192', 'over')" style="display:none;left:74%;top:23.9%;" id="termo_mapimage_5192_imgtip" class="mapatooltip">   Riachão
                                            <span id="termo_mapimage_5192_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5192_imgtip_inner1">ARARUNA</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5192.gif'); width: 31px; height: 19px; left: 74%; top: 23.9%; display: none;" class="mapitem_img" id="termo_mapimage_5192_imagem">
                                            <div onclick="Mapa._hideMenu('5192')" style="display:none;" id="info_menu_5192" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5192', 'out', '')" onmouseover="Mlib.x('tEv', '5192', 'over', '')" onclick="return Mlib.x('tEv', '5192', 'clk', '')" style="width:3.2%;height:2.5%;left:74.4%;top:24.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5085', 'out')" onmouseover="Mlib.x('tEv', '5085', 'over')" style="display:none;left:74.4% ;top:26.2%;" id="termo_mapimage_5085_imgtip" class="mapatooltip">   Dona Inês
                                            <span id="termo_mapimage_5085_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5085_imgtip_inner1">BELEM</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5085.gif); width:34px; height:49px; left:74.4% ; top:26.2%;" class="mapitem_img" id="termo_mapimage_5085_imagem">
                                            <div onclick="Mapa._hideMenu('5085')" style="display:none;" id="info_menu_5085" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5085', 'out', '')" onmouseover="Mlib.x('tEv', '5085', 'over', '')" onclick="return Mlib.x('tEv', '5085', 'clk', '')" style="width:3.8%;height:3.2%;left:74.4%;top:26.8%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '9737', 'out')" onmouseover="Mlib.x('tEv', '9737', 'over')" style="display:none;left:75.8%;top:22.2%;" id="termo_mapimage_9737_imgtip" class="mapatooltip">   Campo de Santana
                                            <span id="termo_mapimage_9737_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_9737_imgtip_inner1">ARARUNA</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_9737.gif'); width: 42px; height: 37px; left: 75.8%; top: 22.2%; display: none;" class="mapitem_img" id="termo_mapimage_9737_imagem">
                                            <div onclick="Mapa._hideMenu('9737')" style="display:none;" id="info_menu_9737" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '9737', 'out', '')" onmouseover="Mlib.x('tEv', '9737', 'over', '')" onclick="return Mlib.x('tEv', '9737', 'clk', '')" style="width:5%;height:1.6%;left:75.8%;top:23.0%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '9737', 'out', '')" onmouseover="Mlib.x('tEv', '9737', 'over', '')" onclick="return Mlib.x('tEv', '9737', 'clk', '')" style="width:3%;height:4.5%;left:77.8%;top:23.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5202', 'out')" onmouseover="Mlib.x('tEv', '5202', 'over')" style="left: 66.8%; top: 69.5%; display: none;" id="termo_mapimage_5202_imgtip" class="mapatooltip">   Santa Cecília
                                            <span id="termo_mapimage_5202_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5202_imgtip_inner1">UMBUZEIRO</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5202.gif'); width: 40px; height: 31px; left: 66.8%; top: 69.5%; display: none;" class="mapitem_img" id="termo_mapimage_5202_imagem">
                                            <div onclick="Mapa._hideMenu('5202')" style="display:none;" id="info_menu_5202" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5202', 'out', '')" onmouseover="Mlib.x('tEv', '5202', 'over', '')" onclick="return Mlib.x('tEv', '5202', 'clk', '')" style="width:3.7%;height:5%;left:68%;top:70%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5095', 'out')" onmouseover="Mlib.x('tEv', '5095', 'over')" style="left: 70.4%; top: 62.8%; display: none;" id="termo_mapimage_5095_imgtip" class="mapatooltip">   Gado Bravo
                                            <span id="termo_mapimage_5095_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5095_imgtip_inner1">AROEIRAS</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T1/termo_5095.gif'); width: 30px; height: 35px; left: 70.4%; top: 62.8%; display: none;" class="mapitem_img" id="termo_mapimage_5095_imagem">
                                            <div onclick="Mapa._hideMenu('5095')" style="display:none;" id="info_menu_5095" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5095', 'out', '')" onmouseover="Mlib.x('tEv', '5095', 'over', '')" onclick="return Mlib.x('tEv', '5095', 'clk', '')" style="width:3.2%;height:4.6%;left:70.5%;top:64.8%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5148', 'out')" onmouseover="Mlib.x('tEv', '5148', 'over')" style="display:none;left:75.8% ;top:61.2%;" id="termo_mapimage_5148_imgtip" class="mapatooltip">   Natuba
                                            <span id="termo_mapimage_5148_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5148_imgtip_inner1">UMBUZEIRO</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5148.gif'); width: 28px; height: 42px; left: 75.8%; top: 61.2%; display: none;" class="mapitem_img" id="termo_mapimage_5148_imagem">
                                            <div onclick="Mapa._hideMenu('5148')" style="display:none;" id="info_menu_5148" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5148', 'out', '')" onmouseover="Mlib.x('tEv', '5148', 'over', '')" onclick="return Mlib.x('tEv', '5148', 'clk', '')" style="width:2.0%;height:8%;left:77%;top:61.6%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5090', 'out')" onmouseover="Mlib.x('tEv', '5090', 'over')" style="left: 71.4%; top: 57%; display: none;" id="termo_mapimage_5090_imgtip" class="mapatooltip">   Fagundes
                                            <span id="termo_mapimage_5090_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5090_imgtip_inner1">QUEIMADAS</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5090.gif'); width: 26px; height: 28px; left: 71.4%; top: 57%; display: none;" class="mapitem_img" id="termo_mapimage_5090_imagem">
                                            <div onclick="Mapa._hideMenu('5090')" style="display:none;" id="info_menu_5090" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5090', 'out', '')" onmouseover="Mlib.x('tEv', '5090', 'over', '')" onclick="return Mlib.x('tEv', '5090', 'clk', '')" style="width:2.5%;height:4.5%;left:71.5%;top:57.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5109', 'out')" onmouseover="Mlib.x('tEv', '5109', 'over')" style="left: 73.3%; top: 57%; display: none;" id="termo_mapimage_5109_imgtip" class="mapatooltip">   Itatuba
                                            <span id="termo_mapimage_5109_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5109_imgtip_inner1">INGA</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5109.gif'); width: 43px; height: 27px; left: 73.3%; top: 57%; display: none;" class="mapitem_img" id="termo_mapimage_5109_imagem">
                                            <div onclick="Mapa._hideMenu('5109')" style="display:none;" id="info_menu_5109" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5109', 'out', '')" onmouseover="Mlib.x('tEv', '5109', 'over', '')" onclick="return Mlib.x('tEv', '5109', 'clk', '')" style="width:4%;height:4.5%;left:74%;top:57.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5201', 'out')" onmouseover="Mlib.x('tEv', '5201', 'over')" style="display:none;left:78.2%;top:56%;" id="termo_mapimage_5201_imgtip" class="mapatooltip">   Salgado de São Felix
                                            <span id="termo_mapimage_5201_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5201_imgtip_inner1">ITABAIANA</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5201.gif'); width: 43px; height: 35px; left: 78.2%; top: 56%; display: none;" class="mapitem_img" id="termo_mapimage_5201_imagem">
                                            <div onclick="Mapa._hideMenu('5201')" style="display:none;" id="info_menu_5201" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5201', 'out', '')" onmouseover="Mlib.x('tEv', '5201', 'over', '')" onclick="return Mlib.x('tEv', '5201', 'clk', '')" style="width:3.4%;height:4.8%;left:78.2%;top:58%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5141', 'out')" onmouseover="Mlib.x('tEv', '5141', 'over')" style="left: 77.8%; top: 50.8%; display: none;" id="termo_mapimage_5141_imgtip" class="mapatooltip">   Mogeiro
                                            <span id="termo_mapimage_5141_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5141_imgtip_inner1">ITABAIANA</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5141.gif'); width: 31px; height: 41px; left: 77.8%; top: 50.8%; display: none;" class="mapitem_img" id="termo_mapimage_5141_imagem">
                                            <div onclick="Mapa._hideMenu('5141')" style="display:none;" id="info_menu_5141" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5141', 'out', '')" onmouseover="Mlib.x('tEv', '5141', 'over', '')" onclick="return Mlib.x('tEv', '5141', 'clk', '')" style="width:3.0%;height:6%;left:78.2%;top:52%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5014', 'out')" onmouseover="Mlib.x('tEv', '5014', 'over')" style="display:none;left:68.3%;top:44.3%;" id="termo_mapimage_5014_imgtip" class="mapatooltip">   Areial
                                            <span id="termo_mapimage_5014_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5014_imgtip_inner1">ESPERANCA</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5014.gif'); width: 13px; height: 13px; left: 68.3%; top: 44.3%; display: none;" class="mapitem_img" id="termo_mapimage_5014_imagem">
                                            <div onclick="Mapa._hideMenu('5014')" style="display:none;" id="info_menu_5014" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5014', 'out', '')" onmouseover="Mlib.x('tEv', '5014', 'over', '')" onclick="return Mlib.x('tEv', '5014', 'clk', '')" style="width:1.3%;height:2.5%;left:68.5%;top:44.5%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5142', 'out')" onmouseover="Mlib.x('tEv', '5142', 'over')" style="left: 68.2%; top: 46.8%; display: none;" id="termo_mapimage_5142_imgtip" class="mapatooltip">   Montadas
                                            <span id="termo_mapimage_5142_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5142_imgtip_inner1">ESPERANCA</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5142.gif'); width: 13px; height: 13px; left: 68.2%; top: 46.8%; display: none;" class="mapitem_img" id="termo_mapimage_5142_imagem">
                                            <div onclick="Mapa._hideMenu('5142')" style="display:none;" id="info_menu_5142" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5142', 'out', '')" onmouseover="Mlib.x('tEv', '5142', 'over', '')" onclick="return Mlib.x('tEv', '5142', 'clk', '')" style="width:1.3%;height:1.8%;left:68.4%;top:46.8%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5188', 'out')" onmouseover="Mlib.x('tEv', '5188', 'over')" style="display:none;left:67%;top:47.8%;" id="termo_mapimage_5188_imgtip" class="mapatooltip">   Puxinanã
                                            <span id="termo_mapimage_5188_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5188_imgtip_inner1">POCINHOS</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5188.gif); width:24px; height:18px; left:67%; top:47.8%;" class="mapitem_img" id="termo_mapimage_5188_imagem">
                                            <div onclick="Mapa._hideMenu('5188')" style="display:none;" id="info_menu_5188" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5188', 'out', '')" onmouseover="Mlib.x('tEv', '5188', 'over', '')" onclick="return Mlib.x('tEv', '5188', 'clk', '')" style="width:1.8%;height:2.5%;left:67.5%;top:48.2%;" class="mapitem_link" href="javascript:;"></a>



                                        <span onmouseout="Mlib.x('tEv', '5241', 'out')" onmouseover="Mlib.x('tEv', '5241', 'over')" style="left: 70%; top: 45.6%; display: none;" id="termo_mapimage_5241_imgtip" class="mapatooltip">   São Sebastião de Lagoa de Roça
                                            <span id="termo_mapimage_5241_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5241_imgtip_inner1">ALAGOA NOVA</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T1/termo_5241.gif'); width: 27px; height: 24px; left: 70%; top: 45.6%; display: none;" class="mapitem_img" id="termo_mapimage_5241_imagem">
                                            <div onclick="Mapa._hideMenu('5241')" style="display:none;" id="info_menu_5241" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5241', 'out', '')" onmouseover="Mlib.x('tEv', '5241', 'over', '')" onclick="return Mlib.x('tEv', '5241', 'clk', '')" style="width:1.8%;height:2.5%;left:70.2%;top:46.2%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5133', 'out')" onmouseover="Mlib.x('tEv', '5133', 'over')" style="left: 71.4%; top: 48%; display: none;" id="termo_mapimage_5133_imgtip" class="mapatooltip">   Massaranduba
                                            <span id="termo_mapimage_5133_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5133_imgtip_inner1">CAMPINA GRANDE</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T3/termo_5133.gif'); width: 30px; height: 34px; left: 71.4%; top: 48%; display: none;" class="mapitem_img" id="termo_mapimage_5133_imagem">
                                            <div onclick="Mapa._hideMenu('5133')" style="display:none;" id="info_menu_5133" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5133', 'out', '')" onmouseover="Mlib.x('tEv', '5133', 'over', '')" onclick="return Mlib.x('tEv', '5133', 'clk', '')" style="width:3%;height:4.8%;left:71.5%;top:49.3%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5146', 'out')" onmouseover="Mlib.x('tEv', '5146', 'over')" style="display:none;left:78% ;top:40.8%;" id="termo_mapimage_5146_imgtip" class="mapatooltip">   Mulungu
                                            <span id="termo_mapimage_5146_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5146_imgtip_inner1">ALAGOINHA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5146.gif); width:44px; height:28px; left:78% ; top:40.8%;" class="mapitem_img" id="termo_mapimage_5146_imagem">
                                            <div onclick="Mapa._hideMenu('5146')" style="display:none;" id="info_menu_5146" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5146', 'out', '')" onmouseover="Mlib.x('tEv', '5146', 'over', '')" onclick="return Mlib.x('tEv', '5146', 'clk', '')" style="width:3.5%;height:2.8%;left:78.8%;top:43%;" class="mapitem_link" href="javascript:;"></a>
                                        <a onmouseout="Mlib.x('tEv', '5146', 'out', '')" onmouseover="Mlib.x('tEv', '5146', 'over', '')" onclick="return Mlib.x('tEv', '5146', 'clk', '')" style="width:2.5%;height:3%;left:80.5%;top:41.4%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5078', 'out')" onmouseover="Mlib.x('tEv', '5078', 'over')" style="left: 77.8%; top: 39%; display: none;" id="termo_mapimage_5078_imgtip" class="mapatooltip">   Cuitegi
                                            <span id="termo_mapimage_5078_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5078_imgtip_inner1">GUARABIRA</span></span>
                                        </span>

                                        <div style="background-image: url('${pageContext.request.contextPath}/img/mapa/front/T2/termo_5078.gif'); width: 19px; height: 11px; left: 77.8%; top: 39%; display: none;" class="mapitem_img" id="termo_mapimage_5078_imagem">
                                            <div onclick="Mapa._hideMenu('5078')" style="display:none;" id="info_menu_5078" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5078', 'out', '')" onmouseover="Mlib.x('tEv', '5078', 'over', '')" onclick="return Mlib.x('tEv', '5078', 'clk', '')" style="width:2.1%;height:2.2%;left:77.8%;top:39.1%;" class="mapitem_link" href="javascript:;"></a>








                                        <span onmouseout="Mlib.x('tEv', '5251', 'out')" onmouseover="Mlib.x('tEv', '5251', 'over')" style="display:none;left:80.2% ;top:31.6%;" id="termo_mapimage_5251_imgtip" class="mapatooltip">   Sertãozinho
                                            <span id="termo_mapimage_5251_imgtip_title" style="" class="tooltip_subtitle"> <span id="termo_mapimage_5251_imgtip_inner1">PIRPIRITUBA</span></span>
                                        </span>

                                        <div style="display: none; background-image:url(./img/mapa/front/T1/termo_5251.gif); width:200px; height:45px; left:80.2% ; top:31.6%;" class="mapitem_img" id="termo_mapimage_5251_imagem">
                                            <div onclick="Mapa._hideMenu('5251')" style="display:none;" id="info_menu_5251" class="comarca_menu">

                                            </div>
                                        </div>
                                        <a onmouseout="Mlib.x('tEv', '5251', 'out', '')" onmouseover="Mlib.x('tEv', '5251', 'over', '')" onclick="return Mlib.x('tEv', '5251', 'clk', '')" style="width:2%;height:1.5%;left:80%;top:33%;" class="mapitem_link" href="javascript:;"></a>







                                    </div>


                                </div>
                                <!-- fim do mapa da paraiba -->


                                <div id="pormunicipio" style="min-width: 310px; height: 600px; margin: 0 auto"></div>

                            </div>




                        </div>
                        <div id="tabs-b">
                            <div id="populacao" style="min-width: 310px; height: 650px; margin: 0 auto"></div>
                        </div>
                        <div id="tabs-c">
                            <div id="populacao2" style="min-width: 310px; height: 650px; margin: 0 auto"></div>
                        </div>
                        <div id="tabs-d">
                            <div class="row">
                                <!-- NEW WIDGET START -->
                                <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <!-- Widget ID (each widget will need unique ID)-->
                                    <div class="jarviswidget jarviswidget-color-darken" id="wid-id-0" data-widget-editbutton="false">
                                        <!-- widget options:
                                                                            usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">
            
                                                                            data-widget-colorbutton="false"
                                                                            data-widget-editbutton="false"
                                                                            data-widget-togglebutton="false"
                                                                            data-widget-deletebutton="false"
                                                                            data-widget-fullscreenbutton="false"
                                                                            data-widget-custombutton="false"
                                                                            data-widget-collapsed="true"
                                                                            data-widget-sortable="false"
            
                                        -->
                                        <!-- widget div-->
                                        <div>
                                            <!-- widget edit box -->
                                            <div class="jarviswidget-editbox">
                                                <!-- This area used as dropdown edit box -->
                                            </div>
                                            <!-- end widget edit box -->
                                            <!-- widget content -->
                                            <div class="widget-body no-padding">
                                                <table id="dt_basic" class="table table-striped table-bordered table-hover" width="100%">
                                                    <thead>
                                                        <tr>
                                                            <th data-hide="expand">ESTABELECIMENTO</th>
                                                            <th data-class="phone,tablet">MUNICÍPIO</th>
                                                            <th data-class="phone,tablet">LOGRADOURO</th>
                                                            <th data-class="phone,tablet">DIRETOR(A)</th>
                                                            <th data-class="phone,tablet">POPULAÇÃO ATUAL <P>
                                                                    <span style="color: rgb(102, 0, 0);">REGIME PROVISÓRIO</span></th>
                                                            <th data-class="phone,tablet">POPULAÇÃO ATUAL <P>
                                                                    <span style="color: rgb(102, 0, 0);">REGIME FECHADO</span></th>
                                                            <th data-class="phone,tablet">POPULAÇÃO ATUAL <P>
                                                                    <span style="color: rgb(102, 0, 0);">REGIME SEMIABERTO</span></th>
                                                            <th data-class="phone,tablet">POPULAÇÃO ATUAL <P>
                                                                    <span style="color: rgb(102, 0, 0);">REGIME ABERTO</span></th>
                                                            <th data-class="phone,tablet">TOTAL REGIME</th>
                                                            <th data-class="phone,tablet">CAPACIDADE</th>
                                                            <th data-class="phone,tablet">PERCENTUAL DE POPULAÇÃO</th>
                                                            <th data-class="phone,tablet">ATIVO?</th>
                                                            <th data-class="phone,tablet">SITUAÇÃO</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${retornoArray}" var="retorno" varStatus="stat">
                                                            <tr>
                                                                <td><b>${retorno.nome}</b></td>
                                                                <td><b>${retorno.municipio.ds}</b></td>
                                                                <td>${retorno.logradouro}</td>
                                                                <td>${retorno.diretor}</td>
                                                                <td title="REGIME PROVISÓRIO">${retorno.qtRegimeProvisorio}</td>
                                                                <td title="REGIME FECHADO">${retorno.qtRegimeFechado}</td>
                                                                <td title="REGIME SEMIABERTO">${retorno.qtRegimeSemiAberto}</td>
                                                                <td title="REGIME ABERTO">${retorno.qtRegimeAberto}</td>
                                                                <td title="TOTAL DO ESTABELECIMENTO"><b>${retorno.qtTotalRegime}</b></td>
                                                                <td title="CAPACIDADE TOTAL DO ESTABELECIMENTO"><b>${retorno.qtCapacidadeTotal}</b></td>
                                                                <td><b><fmt:formatNumber maxIntegerDigits = "4" maxFractionDigits="2" value = "${retorno.vlPercentualOcupacao}" />%</b></td>
                                                                <c:choose>
                                                                    <c:when test="${retorno.ativo eq 'S'}">
                                                                        <td><b>SIM</b></td>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <td><b>NÃO</b></td>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                                <c:choose>
                                                                    <c:when test="${retorno.situacao eq 'GRAVÍSSIMA'}">
                                                                        <td style="background-color: rgb(204, 0, 0);"><b>${retorno.situacao}</b></td>
                                                                            </c:when>
                                                                            <c:when test="${retorno.situacao eq 'REGULAR'}">
                                                                        <td style="background-color: rgb(255, 255, 0);"><b>${retorno.situacao}</b></td>
                                                                            </c:when>
                                                                            <c:when test="${retorno.situacao eq 'BOA'}">
                                                                        <td style="background-color: rgb(51, 204, 0);"><b>${retorno.situacao}</b></td>
                                                                            </c:when>
                                                                            <c:when test="${retorno.situacao eq 'ACIMA DA CAPACIDADE'}">
                                                                        <td style="background-color: rgb(204, 102, 204);"><b>${retorno.situacao}</b></td>
                                                                            </c:when>
                                                                            <c:otherwise>
                                                                        <td><b>${retorno.situacao}</b></td>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <!-- end widget content -->
                                        </div>
                                        <!-- end widget div -->
                                    </div>
                                    <!-- end widget -->
                                </article>
                                <!-- WIDGET END -->
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- end widget grid -->
        </div>

                                            
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h4 class="modal-title" id="myModalLabel"><b>Atenção</b></h4>
                        </div>
                        <div class="modal-body">

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        Não existe estabelecimento prisional nesta cidade.
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">
                                Cancel
                            </button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->                                            
                                            
        <form name="mudaMunicipio" method="POST" action="${pageContext.request.contextPath}/ComportamentoCarcerarioListar">
            <input name="municipio" style="text-transform:uppercase;" type="hidden" size="1"/>
            <input name="id" style="text-transform:uppercase;" type="hidden" size="1"/>
        </form>
        <form name="frmVoltar" method="POST" action="${pageContext.request.contextPath}/OpcaoListar">
            <input name="sistema" style="text-transform:uppercase;" type="hidden" size="1" value="${opcao.modulo.sistema.id}"/>
        </form>

        <SCRIPT>
            $(function () {
            $('#populacao').highcharts({
            chart: {
            type: 'pie',
                    options3d: {
                    enabled: true,
                            alpha: 45
                    }
            },
                    title: {
                    text: 'População Carcerária do Estado da Paraíba'
                    },
                    subtitle: {
                    text: '3D donut in Highcharts'
                    },
                    plotOptions: {
                    pie: {
                    innerSize: 100,
                            depth: 45
                    }
                    },
                    series: [{
                    name: 'Quantidade',
                            data: [


                            ['REGIME PROVISÓRIO', ${pcep.qtdprovisorio}],
                            ['REGIME FECHADO', ${pcep.qtdfechado}],
                            ['REGIME SEMIABERTO', ${pcep.qtdsemiaberto}],
                            ['REGIME ABERTO', ${pcep.qtdaberto}],
                            ]
                    }]
            });
            });
            $(function () {
            $('#populacao2').highcharts({
            chart: {
            type: 'column'
            },
                    title: {
                    text: 'População Carcerária por Município'
                    },
                    subtitle: {
                    text: 'Mova o Cursor em cima da coluna para detalhar a quantidade'
                    },
                    xAxis: {
                    type: 'category',
                            labels: {
                            rotation: - 45,
                                    style: {
                                    fontSize: '10px',
                                            fontFamily: 'Verdana, sans-serif'
                                    }
                            }
                    },
                    yAxis: {
                    min: 0,
                            title: {
                            text: 'População Carcerária'
                            }
                    },
                    legend: {
                    enabled: false
                    },
                    tooltip: {
                    pointFormat: 'População Atual: <b>{point.y:.0f} </b>'
                    },
                    series: [{
                    name: 'População Carcerária',
                            data: [
            <c:forEach items="${objetoArrayPopulacaoMunicipio}" var="pcmun" varStatus="stat">
                            ['${pcmun.nmcidade}', ${pcmun.quantidade}],
            </c:forEach>
                            ],
                            dataLabels: {
                            enabled: false,
                                    rotation: - 90,
                                    color: '#FFFFFF',
                                    align: 'right',
                                    format: '{point.y:.0f}', // one decimal
                                    y: 10, // 10 pixels down from the top
                                    style: {
                                    fontSize: '10px',
                                            fontFamily: 'Verdana, sans-serif'
                                    }
                            }
                    }]
            });
            });
            $(function () {
            // Create the chart
            $('#container').highcharts({
            chart: {
            type: 'column'
            },
                    title: {
                    text: 'POPULAÇÃO CARCERÁRIA DO ESTADO DA PARAÍBA'
                    },
                    subtitle: {
                    text: 'Click na coluna para detalhar o tipo de regime.'
                    },
                    xAxis: {
                    type: 'category'
                    },
                    yAxis: {
                    title: {
                    text: 'Total'
                    }

                    },
                    legend: {
                    enabled: false
                    },
                    plotOptions: {
                    series: {
                    borderWidth: 0,
                            dataLabels: {
                            enabled: true

                            }
                    }
                    },
                    tooltip: {
                    headerFormat: '<span style="font-size:14px">{series.name}</span><br>',
                            pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.0f}</b> do total<br/>'
                    },
                    series: [{
                    name: 'Tipo de Regime',
                            colorByPoint: true,
                            data: [


                            {
                            name: 'PROVISÓRIO',
                                    y: ${pcep.qtdprovisorio},
                                    drilldown: 'PROVISÓRIO'
                            },
                            {
                            name: 'FECHADO',
                                    y: ${pcep.qtdfechado},
                                    drilldown: 'FECHADO'
                            },
                            {
                            name: 'SEMIABERTO',
                                    y: ${pcep.qtdsemiaberto},
                                    drilldown: 'SEMIABERTO'
                            },
                            {
                            name: 'ABERTO',
                                    y: ${pcep.qtdaberto},
                                    drilldown: 'ABERTO'
                            },
                            ]
                    }],
                    drilldown: {
                    series: [
            <c:forEach items="${objetoArrayTipoMunicipio}" var="tipoc" varStatus="stat">
                    {
                    name: '${tipoc.tipo}',
                            id: '${tipoc.tipo}',
                            data: [
                <c:forEach items="${objetoArrayTipoMunicipio}" var="tipocc" varStatus="stat">
                    <c:if test="${tipocc.tipo eq tipoc.tipo}">
                            [
                                    '${tipocc.nmcidade}',
                        ${tipocc.quantidade}
                            ],
                    </c:if>
                </c:forEach>
                            ]
                    },
            </c:forEach>


                    ]
                    }

            });
            });
            $(function () {
            $('#grave').highcharts({
            chart: {
            type: 'bar'
            },
                    title: {
                    text: 'Estabelecimentos com Situação de População Carcerária GRAVÍSSIMA'
                    },
                    subtitle: {
                    text: ''
                    },
                    xAxis: {
                    categories: [
            <c:forEach items="${objetoArrayPopulacaoGrave}" var="grave" varStatus="stat">
                    '${grave.nome}',
            </c:forEach>


                    ],
                            title: {
                            text: null
                            }
                    },
                    yAxis: {
                    min: 0,
                            title: {
                            text: 'População em percentual',
                                    align: 'high'
                            },
                            labels: {
                            overflow: 'justify'
                            }
                    },
                    tooltip: {
                    valueSuffix: ' %'
                    },
                    plotOptions: {
                    bar: {
                    dataLabels: {
                    enabled: true
                    }
                    }
                    },
                    legend: {
                    layout: 'vertical',
                            align: 'right',
                            verticalAlign: 'top',
                            x: - 40,
                            y: 80,
                            floating: true,
                            borderWidth: 1,
                            backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
                            shadow: true
                    },
                    credits: {
                    enabled: false
                    },
                    tooltip: {
                    pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.1f}</b> %<br/>'
                    },
                    series:
            [

            {
            name: 'Muito Acima da Capacidade Total',
                    data: [
            <c:forEach items="${objetoArrayPopulacaoGrave}" var="grave" varStatus="stat">
                ${grave.percentual},
            </c:forEach>
                    ]
            }
            ]
            });
            });
            $(function () {
            $('#acima').highcharts({
            chart: {
            type: 'bar'
            },
                    title: {
                    text: 'Estabelecimentos com Situação de População Carcerária ACIMA DA CAPACIDADE'
                    },
                    subtitle: {
                    text: ''
                    },
                    xAxis: {
                    categories: [
            <c:forEach items="${objetoArrayPopulacaoAcima}" var="acima" varStatus="stat">
                    '${acima.nome}',
            </c:forEach>


                    ],
                            title: {
                            text: null
                            }
                    },
                    yAxis: {
                    min: 0,
                            title: {
                            text: 'População em percentual',
                                    align: 'high'
                            },
                            labels: {
                            overflow: 'justify'
                            }
                    },
                    tooltip: {
                    valueSuffix: ' %'
                    },
                    plotOptions: {
                    bar: {
                    dataLabels: {
                    enabled: true
                    }
                    }
                    },
                    legend: {
                    layout: 'vertical',
                            align: 'right',
                            verticalAlign: 'top',
                            x: - 40,
                            y: 80,
                            floating: true,
                            borderWidth: 1,
                            backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
                            shadow: false
                    },
                    credits: {
                    enabled: false
                    },
                    tooltip: {
                    pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.1f}</b> %<br/>'
                    },
                    series:
            [

            {
            name: 'Acima da Capacidade Total',
                    data: [
            <c:forEach items="${objetoArrayPopulacaoAcima}" var="acima" varStatus="stat">
                ${acima.percentual},
            </c:forEach>
                    ]
            }
            ]
            });
            });
            $(function () {
            $('#regular').highcharts({
            chart: {
            type: 'bar'
            },
                    title: {
                    text: 'Estabelecimentos com Situação de População Carcerária REGULAR'
                    },
                    subtitle: {
                    text: ''
                    },
                    xAxis: {
                    categories: [
            <c:forEach items="${objetoArrayPopulacaoRegular}" var="regular" varStatus="stat">
                    '${regular.nome}',
            </c:forEach>


                    ],
                            title: {
                            text: null
                            }
                    },
                    yAxis: {
                    min: 0,
                            title: {
                            text: 'População em percentual',
                                    align: 'high'
                            },
                            labels: {
                            overflow: 'justify'
                            }
                    },
                    tooltip: {
                    valueSuffix: ' %'
                    },
                    plotOptions: {
                    bar: {
                    dataLabels: {
                    enabled: true
                    }
                    }
                    },
                    legend: {
                    layout: 'vertical',
                            align: 'right',
                            verticalAlign: 'top',
                            x: - 40,
                            y: 80,
                            floating: true,
                            borderWidth: 1,
                            backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
                            shadow: false
                    },
                    credits: {
                    enabled: false
                    },
                    tooltip: {
                    pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.1f}</b> %<br/>'
                    },
                    series:
            [

            {
            name: 'Próximo da Capacidade Total',
                    data: [
            <c:forEach items="${objetoArrayPopulacaoRegular}" var="regular" varStatus="stat">
                ${regular.percentual},
            </c:forEach>
                    ]
            }
            ]
            });
            });
            $(function () {
            $('#boa').highcharts({
            chart: {
            type: 'bar'
            },
                    title: {
                    text: 'Estabelecimentos com Situação de População Carcerária BOA'
                    },
                    subtitle: {
                    text: ''
                    },
                    xAxis: {
                    categories: [
            <c:forEach items="${objetoArrayPopulacaoBoa}" var="boa" varStatus="stat">
                    '${boa.nome}',
            </c:forEach>
                    ],
                            title: {
                            text: null
                            }
                    },
                    yAxis: {
                    min: 0,
                            title: {
                            text: 'População em percentual',
                                    align: 'high'
                            },
                            labels: {
                            overflow: 'justify'
                            }
                    },
                    tooltip: {
                    valueSuffix: ' %'
                    },
                    plotOptions: {
                    bar: {
                    dataLabels: {
                    enabled: true
                    }
                    }
                    },
                    legend: {
                    layout: 'vertical',
                            align: 'right',
                            verticalAlign: 'top',
                            x: - 40,
                            y: 80,
                            floating: true,
                            borderWidth: 1,
                            backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
                            shadow: false
                    },
                    credits: {
                    enabled: false
                    },
                    tooltip: {
                    pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.1f}</b> %<br/>'
                    },
                    series:
            [

            {
            name: 'Abaixo da Capacidade Total',
                    data: [
            <c:forEach items="${objetoArrayPopulacaoBoa}" var="boa" varStatus="stat">
                ${boa.percentual},
            </c:forEach>
                    ]
            }
            ]
            });
            });
            <c:set var="tp" value="0"></c:set>
            <c:set var="tf" value="0"></c:set>
            <c:set var="ts" value="0"></c:set>
            <c:set var="ta" value="0"></c:set>
            <c:set var="tc" value="0"></c:set>



            $(function () {
            $('#pormunicipio').highcharts({
            title: {
            text: 'Visão Geral por Município'
            },
                    xAxis: {
                    categories: [
            <c:forEach items="${objetoArrayPopulacaoGraficoMunicipio}" var="opcao" varStatus="stat">
                    '${opcao.nome}',
            </c:forEach>
                    ]
                    },
                    labels: {
                    items: [{
                    html: 'Total regime',
                            style: {
                            left: '50px',
                                    top: '18px',
                                    color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
                            }
                    }]
                    },
                    series: [
                    {
                    type: 'column',
                            name: 'Regime Provisório',
                            data: [
            <c:forEach items="${objetoArrayPopulacaoGraficoMunicipio}" var="prov" varStatus="stat">
                <c:set var="tp" value="${tp+prov.qtdprovisorio}"></c:set>
                ${prov.qtdprovisorio},
            </c:forEach>
                            ]
                    },
                    {
                    type: 'column',
                            name: 'Regime Fechado',
                            data: [
            <c:forEach items="${objetoArrayPopulacaoGraficoMunicipio}" var="fechad" varStatus="stat">
                <c:set var="tf" value="${tf+fechad.qtdfechado}"></c:set>
                ${fechad.qtdfechado},
            </c:forEach>
                            ]
                    },
                    {
                    type: 'column',
                            name: 'Regime SemiAberto',
                            data: [
            <c:forEach items="${objetoArrayPopulacaoGraficoMunicipio}" var="semi" varStatus="stat">
                <c:set var="ts" value="${ts+semi.qtdsemiaberto}"></c:set>
                ${semi.qtdsemiaberto},
            </c:forEach>
                            ]
                    },
                    {
                    type: 'column',
                            name: 'Regime Aberto',
                            data: [
            <c:forEach items="${objetoArrayPopulacaoGraficoMunicipio}" var="aberto" varStatus="stat">
                <c:set var="ta" value="${ta+aberto.qtdaberto}"></c:set>
                ${aberto.qtdaberto},
            </c:forEach>
                            ]
                    }, {
                    type: 'spline',
                            name: 'Capacidade do Estabelecimento',
                            data: [
            <c:forEach items="${objetoArrayPopulacaoGraficoMunicipio}" var="capacidade" varStatus="stat">
                <c:set var="tc" value="${tc+1}"></c:set>
                ${capacidade.qtdcapacidade},
            </c:forEach>
                            ],
                            marker: {
                            lineWidth: 2,
                                    lineColor: Highcharts.getOptions().colors[${tc}],
                                    fillColor: 'white'
                            } },
                    {
                    type: 'pie',
                            name: 'Total da opção',
                            data: [{
                            name: 'Regime Provisório',
                                    y: ${tp},
                                    color: Highcharts.getOptions().colors[0] // Provisorio
                            }, {
                            name: 'Regime Fechado',
                                    y: ${tf},
                                    color: Highcharts.getOptions().colors[1] // Fechado
                            }, {
                            name: 'Regime SemiAberto',
                                    y: ${ts},
                                    color: Highcharts.getOptions().colors[2] // Semi aberto
                            }, {
                            name: 'Regime Aberto',
                                    y: ${ta},
                                    color: Highcharts.getOptions().colors[3] // Aberto
                            }
                            ],
                            center: [100, 80],
                            size: 100,
                            showInLegend: false,
                            dataLabels: {
                            enabled: false
                            }
                    }]
            });
            });
            function cliqueMapa(tipo, opcao, comarca){
            //alert('tipo:'+tipo +'opcao:'+opcao+'comarca:'+comarca);
            var combo = jQuery("option[mapa='" + opcao + "']");
            if (!combo || !combo.val()) {
//            alert('Não existe estabelecimento prisional nesta cidade.');
            document.getElementById('idmensagem').click()
             return false;
            }
            document.getElementById('idMunicipio').value =
                    combo.val();
            mudaMunicipios();
            }

            if (document.getElementById('idMunicipio').value != ''){
            var codigo = document.getElementById('idMunicipio').value.split(',')[1];
            if (codigo > 1000){
            Mlib.x('tEv', codigo, 'over', '6');
            } else {
            Mlib.x('cEv', codigo, 'over', '6');
            }


            }

            function mudaMunicipios() {
            document.getElementById('carregando').style.display = '';
            document.mudaMunicipio.municipio.value = document.getElementById('idMunicipio').value.split(',')[ 0];
            document.mudaMunicipio.submit();
            }

            function voltar()
            {
            document.frmVoltar.submit();
            }
        </SCRIPT>
    </template:put>
</template:insert>