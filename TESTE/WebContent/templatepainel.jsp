<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://jakarta.apache.org/struts/tags-template" prefix="template"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="utf-8"/>
    <!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->

    <!-- Basic Styles -->
    <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/font-awesome.min.css"/>
    
 <!--   <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/highcharts.css"/> -->
    

    <!-- SmartAdmin Styles : Caution! DO NOT change the order -->
    <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/smartadmin-production-plugins.min.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/smartadmin-production.min.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/smartadmin-skins.min.css"/>

    <!-- SmartAdmin RTL Support  -->
    <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/smartadmin-rtl.min.css"/>

    <link rel="stylesheet" type="text/css" media="screen" href="css/your_style.css">

    <!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
    <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/demo.min.css"/>

    <!-- GOOGLE FONT -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fonts/family/fontesgoogle.css"/>

    <!-- Specifying a Webpage Icon for Web Clip
                         Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->
    <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/img/splash/sptouch-icon-iphone.png"/>
    <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/img/splash/touch-icon-ipad.png"/>
    <link rel="apple-touch-icon" sizes="120x120" href="${pageContext.request.contextPath}/img/splash/touch-icon-iphone-retina.png"/>
    <link rel="apple-touch-icon" sizes="152x152" href="${pageContext.request.contextPath}/img/splash/touch-icon-ipad-retina.png"/>

    <!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black"/>

    <!-- Startup image for web apps -->
    <link rel="apple-touch-startup-image" href="${pageContext.request.contextPath}/img/splash/ipad-landscape.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)"/>
    <link rel="apple-touch-startup-image" href="${pageContext.request.contextPath}/img/splash/ipad-portrait.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)"/>
    <link rel="apple-touch-startup-image" href="${pageContext.request.contextPath}/img/splash/iphone.png" media="screen and (max-device-width: 320px)"/>

    <style>

        #demo-setting{display:none}

    </style>

    <script data-pace-options='{ "restartOnRequestAfter": true }' src="${pageContext.request.contextPath}/js/plugin/pace/pace.min.js"></script>

    <!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script>
        if (!window.jQuery) {
            document.write('<script src="${pageContext.request.contextPath}js/libs/jquery-2.1.1.min.js"><\/script>');
        }
    </script>

    <script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
    <script>
        if (!window.jQuery.ui) {
            document.write('<script src="${pageContext.request.contextPath}/js/libs/jquery-ui-1.10.3.min.js"><\/script>');
        }
    </script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.plugin.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.countdown.min.js"></script>

    <!-- IMPORTANT: APP CONFIG -->
    <script src="${pageContext.request.contextPath}/js/app.config.js"></script>

    <!-- JS TOUCH : include this plugin for mobile drag / drop touch events-->
    <script src="${pageContext.request.contextPath}/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script>

    <!-- BOOTSTRAP JS -->
    <script src="${pageContext.request.contextPath}/js/bootstrap/bootstrap.min.js"></script>

    <!-- CUSTOM NOTIFICATION -->
    <script src="${pageContext.request.contextPath}/js/notification/SmartNotification.min.js"></script>

    <!-- JARVIS WIDGETS -->
    <script src="${pageContext.request.contextPath}/js/smartwidgets/jarvis.widget.min.js"></script>

    <!-- EASY PIE CHARTS -->
    <script src="${pageContext.request.contextPath}/js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>

    <!-- SPARKLINES -->
    <script src="${pageContext.request.contextPath}/js/plugin/sparkline/jquery.sparkline.min.js"></script>

    <!-- JQUERY VALIDATE -->
    <script src="${pageContext.request.contextPath}/js/plugin/jquery-validate/jquery.validate.min.js"></script>

    <!-- JQUERY MASKED INPUT -->
    <script src="${pageContext.request.contextPath}/js/plugin/masked-input/jquery.maskedinput.min.js"></script>

    <!-- JQUERY SELECT2 INPUT -->
    <script src="${pageContext.request.contextPath}/js/plugin/select2/select2.min.js"></script>

    <!-- JQUERY UI + Bootstrap Slider -->
    <script src="${pageContext.request.contextPath}/js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

    <!-- browser msie issue fix -->
    <script src="${pageContext.request.contextPath}/js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

    <!-- FastClick: For mobile devices -->
    <script src="${pageContext.request.contextPath}/js/plugin/fastclick/fastclick.min.js"></script>

    <!--[if IE 8]>

            <h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>

            <![endif]-->

    <!-- Demo purpose only -->
    <script src="${pageContext.request.contextPath}/js/demo.min.js"></script>

    <!-- MAIN APP JS FILE -->
    <script src="${pageContext.request.contextPath}/js/app.min.js"></script>

    <!-- ENHANCEMENT PLUGINS : NOT A REQUIREMENT -->
    <!-- Voice command : plugin -->
    <script src="${pageContext.request.contextPath}/js/speech/voicecommand.min.js"></script>

    <!-- SmartChat UI : plugin -->
    <script src="${pageContext.request.contextPath}/js/smart-chat-ui/smart.chat.ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/smart-chat-ui/smart.chat.manager.min.js"></script>

    <!-- PAGE RELATED PLUGIN(S) -->
    <script src="${pageContext.request.contextPath}/js/plugin/datatables/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugin/datatables/dataTables.colVis.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugin/datatables/dataTables.tableTools.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugin/datatables/dataTables.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugin/datatable-responsive/datatables.responsive.min.js"></script>

    
    <script src="${pageContext.request.contextPath}/js/highcharts/highcharts.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/highcharts/highcharts-3d.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/highcharts/highcharts-more.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/highcharts/funnel.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/highcharts/funnel3d.js" type="text/javascript"></script>
  <!--  <script src="${pageContext.request.contextPath}/js/highcharts/export-data.js" type="text/javascript"></script>  -->
    <script src="${pageContext.request.contextPath}/js/highcharts/cylinder.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/highcharts/data.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/highcharts/drilldown.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/highcharts/modules/export-data.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/highcharts/modules/exporting.js" type="text/javascript"></script>
    
</head>
<html lang="pt-br">
    <body class="desktop-detected pace-done smart-style-0 fixed-page-footer">
        <div  id="carregando" style="display:none; background-color:white;height:100%; width:100%; z-index:9999;position:fixed; opacity:0.6;">
            <div style=" background-image:url('${pageContext.request.contextPath}/img/aguarde_processando.gif'); height:50px ;width:200px; left:45%;top:4%;z-index:10000;position:fixed; margin: auto 0 ; "></div>
        </div>
        <template:get name="conteudo" />
        <!-- END MAIN PANEL -->
        <!-- header logo: style can be found in header.less -->
        <!--================================================== -->

        <!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->


        <script type="text/javascript">

        // DO NOT REMOVE : GLOBAL FUNCTIONS!

        $(document).ready(function () {

            pageSetUp();

            /* // DOM Position key index //
             
             l - Length changing (dropdown)
             f - Filtering input (search)
             t - The Table! (datatable)
             i - Information (records)
             p - Pagination (paging)
             r - pRocessing
             < and > - div elements
             <"#id" and > - div with an id
             <"class" and > - div with a class
             <"#id.class" and > - div with an id and class
             
             Also see: http://legacy.datatables.net/usage/features
             */

            /* BASIC ;*/
            var responsiveHelper_dt_basic = undefined;
            var responsiveHelper_datatable_fixed_column = undefined;
            var responsiveHelper_datatable_col_reorder = undefined;
            var responsiveHelper_datatable_tabletools = undefined;

            var breakpointDefinition = {
                tablet: 1024,
                phone: 480
            };

            $('#dt_basic').dataTable({
                "sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>" +
                        "t" +
                        "<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>",
                "autoWidth": true,
                "preDrawCallback": function () {
                    // Initialize the responsive datatables helper once.
                    if (!responsiveHelper_dt_basic) {
                        responsiveHelper_dt_basic = new ResponsiveDatatablesHelper($('#dt_basic'), breakpointDefinition);
                    }
                },
                "rowCallback": function (nRow) {
                    responsiveHelper_dt_basic.createExpandIcon(nRow);
                },
                "drawCallback": function (oSettings) {
                    responsiveHelper_dt_basic.respond();
                }
            });

            /* END BASIC */

            /* COLUMN FILTER  */
            var otable = $('#datatable_fixed_column').DataTable({
                //"bFilter": false,
                //"bInfo": false,
                //"bLengthChange": false
                //"bAutoWidth": false,
                //"bPaginate": false,
                //"bStateSave": true // saves sort state using localStorage
                "sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6 hidden-xs'f><'col-sm-6 col-xs-12 hidden-xs'<'toolbar'>>r>" +
                        "t" +
                        "<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>",
                "autoWidth": true,
                "preDrawCallback": function () {
                    // Initialize the responsive datatables helper once.
                    if (!responsiveHelper_datatable_fixed_column) {
                        responsiveHelper_datatable_fixed_column = new ResponsiveDatatablesHelper($('#datatable_fixed_column'), breakpointDefinition);
                    }
                },
                "rowCallback": function (nRow) {
                    responsiveHelper_datatable_fixed_column.createExpandIcon(nRow);
                },
                "drawCallback": function (oSettings) {
                    responsiveHelper_datatable_fixed_column.respond();
                }

            });

            // custom toolbar
            $("div.toolbar").html('<div class="text-right"><img src="${pageContext.request.contextPath}/img/logo.png" alt="SmartAdmin" style="width: 111px; margin-top: 3px; margin-right: 10px;"></div>');

            // Apply the filter
            $("#datatable_fixed_column thead th input[type=text]").on('keyup change', function () {

                otable
                        .column($(this).parent().index() + ':visible')
                        .search(this.value)
                        .draw();

            });
            /* END COLUMN FILTER */

            /* COLUMN SHOW - HIDE */
            $('#datatable_col_reorder').dataTable({
                "sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-6 hidden-xs'C>r>" +
                        "t" +
                        "<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-sm-6 col-xs-12'p>>",
                "autoWidth": true,
                "preDrawCallback": function () {
                    // Initialize the responsive datatables helper once.
                    if (!responsiveHelper_datatable_col_reorder) {
                        responsiveHelper_datatable_col_reorder = new ResponsiveDatatablesHelper($('#datatable_col_reorder'), breakpointDefinition);
                    }
                },
                "rowCallback": function (nRow) {
                    responsiveHelper_datatable_col_reorder.createExpandIcon(nRow);
                },
                "drawCallback": function (oSettings) {
                    responsiveHelper_datatable_col_reorder.respond();
                }
            });

            /* END COLUMN SHOW - HIDE */

            /* TABLETOOLS */
            $('#datatable_tabletools').dataTable({

                // Tabletools options:
                //   https://datatables.net/extensions/tabletools/button_options
                "sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-6 hidden-xs'T>r>" +
                        "t" +
                        "<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-sm-6 col-xs-12'p>>",
                "oTableTools": {
                    "aButtons": [
                        "copy",
                        "csv",
                        "xls",
                        {
                            "sExtends": "pdf",
                            "sTitle": "SmartAdmin_PDF",
                            "sPdfMessage": "SmartAdmin PDF Export",
                            "sPdfSize": "letter"
                        },
                        {
                            "sExtends": "print",
                            "sMessage": "Generated by SmartAdmin <i>(press Esc to close)</i>"
                        }
                    ],
                    "sSwfPath": "${pageContext.request.contextPath}/js/plugin/datatables/swf/copy_csv_xls_pdf.swf"
                },
                "autoWidth": true,
                "preDrawCallback": function () {
                    // Initialize the responsive datatables helper once.
                    if (!responsiveHelper_datatable_tabletools) {
                        responsiveHelper_datatable_tabletools = new ResponsiveDatatablesHelper($('#datatable_tabletools'), breakpointDefinition);
                    }
                },
                "rowCallback": function (nRow) {
                    responsiveHelper_datatable_tabletools.createExpandIcon(nRow);
                },
                "drawCallback": function (oSettings) {
                    responsiveHelper_datatable_tabletools.respond();
                }
            });

            /* END TABLETOOLS */





        })
        $('#tabs').tabs();
        </script>

    </body>
</html>
