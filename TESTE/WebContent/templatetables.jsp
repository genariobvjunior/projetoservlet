<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page contentType="text/html;charset=iso-8859-1"%>
<%@taglib uri="http://jakarta.apache.org/struts/tags-template" prefix="template"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="pt-br">
    <template:get name="cabecalho" />
    <body class="desktop-detected pace-done smart-style-0 fixed-page-footer">
         <div  id="carregando" style="display:none; background-color:white;height:100%; width:100%; z-index:9999;position:fixed; opacity:0.6;">
            <div style=" background-image:url('${pageContext.request.contextPath}/img/aguarde_processando.gif'); height:50px ;width:200px; left:45%;top:4%;z-index:10000;position:fixed; margin: auto 0 ; "></div>
        </div>
        <template:get name="cabecalho2" />
        <template:get name="menu" />
        <div id="main" role="main">
            <!-- RIBBON -->
            <template:get name="ribbon" />
            <!-- END RIBBON -->

            <!-- MAIN CONTENT -->
            <template:get name="conteudo" />
        </div>
        <!-- END MAIN PANEL -->
        <!-- header logo: style can be found in header.less -->
        <template:get name="footer" />

        
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/smartadmin-production.min.css">

        <!--================================================== -->

        <!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
        <script data-pace-options='{ "restartOnRequestAfter": true }' src="${pageContext.request.contextPath}/js/plugin/pace/pace.min.js"></script>

        <!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
        <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
        <script>
            if (!window.jQuery) {
                document.write('<script src="${pageContext.request.contextPath}/js/libs/jquery-2.1.1.min.js"><\/script>');
            }
        </script>

       <script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
        <script>
            if (!window.jQuery.ui) {
                document.write('<script src="${pageContext.request.contextPath}/js/libs/jquery-ui-1.10.3.min.js"><\/script>');
            }
        </script>

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

        

        <script type="text/javascript">

            // DO NOT REMOVE : GLOBAL FUNCTIONS!

            $(document).ready(function() {

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
                var responsiveHelper_datatable_col_reorder2 = undefined;
                var responsiveHelper_datatable_tabletools = undefined;

                var breakpointDefinition = {
                    tablet : 1024,
                    phone : 480
                };

                $('#dt_basic').dataTable({
                    "sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>"+
                        "t"+
                        "<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>",
                    "autoWidth" : true,
                    "preDrawCallback" : function() {
                        // Initialize the responsive datatables helper once.
                        if (!responsiveHelper_dt_basic) {
                            responsiveHelper_dt_basic = new ResponsiveDatatablesHelper($('#dt_basic'), breakpointDefinition);
                        }
                    },
                    "rowCallback" : function(nRow) {
                        responsiveHelper_dt_basic.createExpandIcon(nRow);
                    },
                    "drawCallback" : function(oSettings) {
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
                    "sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6 hidden-xs'f><'col-sm-6 col-xs-12 hidden-xs'<'toolbar'>>r>"+
                        "t"+
                        "<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>",
                    "autoWidth" : true,
                    "preDrawCallback" : function() {
                        // Initialize the responsive datatables helper once.
                        if (!responsiveHelper_datatable_fixed_column) {
                            responsiveHelper_datatable_fixed_column = new ResponsiveDatatablesHelper($('#datatable_fixed_column'), breakpointDefinition);
                        }
                    },
                    "rowCallback" : function(nRow) {
                        responsiveHelper_datatable_fixed_column.createExpandIcon(nRow);
                    },
                    "drawCallback" : function(oSettings) {
                        responsiveHelper_datatable_fixed_column.respond();
                    }

                });

                // custom toolbar
                $("div.toolbar").html('<div class="text-right"><img src="${pageContext.request.contextPath}/img/logo.png" alt="SmartAdmin" style="width: 111px; margin-top: 3px; margin-right: 10px;"></div>');

                // Apply the filter
                $("#datatable_fixed_column thead th input[type=text]").on( 'keyup change', function () {

                    otable
                    .column( $(this).parent().index()+':visible' )
                    .search( this.value )
                    .draw();

                } );
                /* END COLUMN FILTER */

                /* COLUMN SHOW - HIDE */
                $('#datatable_col_reorder').dataTable({
                    "sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-6 hidden-xs'C>r>"+
                        "t"+
                        "<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-sm-6 col-xs-12'p>>",
                    "autoWidth" : true,
                    "preDrawCallback" : function() {
                        // Initialize the responsive datatables helper once.
                        if (!responsiveHelper_datatable_col_reorder) {
                            responsiveHelper_datatable_col_reorder = new ResponsiveDatatablesHelper($('#datatable_col_reorder'), breakpointDefinition);
                        }
                    },
                    "rowCallback" : function(nRow) {
                        responsiveHelper_datatable_col_reorder.createExpandIcon(nRow);
                    },
                    "drawCallback" : function(oSettings) {
                        responsiveHelper_datatable_col_reorder.respond();
                    }
                });
                
                
               
                
                

                /* END COLUMN SHOW - HIDE */

                /* TABLETOOLS */
                $('#datatable_tabletools').dataTable({

                    // Tabletools options:
                    //   https://datatables.net/extensions/tabletools/button_options
                    "sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-6 hidden-xs'T>r>"+
                        "t"+
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
                    "autoWidth" : true,
                    "preDrawCallback" : function() {
                        // Initialize the responsive datatables helper once.
                        if (!responsiveHelper_datatable_tabletools) {
                            responsiveHelper_datatable_tabletools = new ResponsiveDatatablesHelper($('#datatable_tabletools'), breakpointDefinition);
                        }
                    },
                    "rowCallback" : function(nRow) {
                        responsiveHelper_datatable_tabletools.createExpandIcon(nRow);
                    },
                    "drawCallback" : function(oSettings) {
                        responsiveHelper_datatable_tabletools.respond();
                    }
                });

                /* END TABLETOOLS */


               		


            })

        </script>

 <script type="text/javascript">

            var skin = '${SKIN}';
            if (skin != '' && skin != undefined) {
                $('#' + skin).click();
            }

            var fixedHeader = ${SMARTFIXEDHEADER};
            if (fixedHeader) {
                $('#smart-fixed-header').click();
            }

            var fixedNavigation = ${SMARTFIXEDNAVIGATION};
            if (fixedNavigation) {
                $('#smart-fixed-navigation').click();
            }

            var fixedRibbon = ${SMARTFIXEDRIBBON};
            if (fixedRibbon) {
                $('#smart-fixed-ribbon').click();
            }

            var fixedFooter = ${SMARTFIXEDFOOTER};
            if (fixedFooter) {
                $('#smart-fixed-footer').click();
            }


            function atualizaServletFixed(elementId, valor) {

                $.ajax({type: "POST",
                    url: "S01?H=" + document.getElementById('smart-fixed-header').checked + "&N=" + document.getElementById('smart-fixed-navigation').checked + "&R=" + document.getElementById('smart-fixed-ribbon').checked + "&F=" + document.getElementById('smart-fixed-footer').checked + "&SKIN=" + $('#skin-checked').parent().attr('id'),
                    data: {

                    },
                    success: function (result) {
                        
                        // $("sharelink").html(result);
                    }});

            }

        </script>                    
                    
                    
        <!-- Your GOOGLE ANALYTICS CODE Below -->
        <script type="text/javascript">
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-XXXXXXXX-X']);
            _gaq.push(['_trackPageview']);

            (function() {
                var ga = document.createElement('script');
                ga.type = 'text/javascript';
                ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(ga, s);
            })();

           
           
                      
        </script>

    </body>
</html>
