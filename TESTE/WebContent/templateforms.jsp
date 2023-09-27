<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page contentType="text/html;charset=iso-8859-1"%>
<%@taglib uri="http://jakarta.apache.org/struts/tags-template" prefix="template"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="pt-br">
    <template:get name="cabecalho" />
    <body class="">
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

        <!-- ATRIBUIDO POR GENARIO EM 31012019 - MASCARA DE VALOR -->
        <script src="${pageContext.request.contextPath}/js/jquery.mask.min.js"></script>

        
      
        
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
        <script src="${pageContext.request.contextPath}/js/plugin/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>



        <script type="text/javascript">

            // DO NOT REMOVE : GLOBAL FUNCTIONS!

            $(document).ready(function() {

                pageSetUp();

                /*
                 * Autostart Carousel
                 */
                $('.carousel.slide').carousel({
                    interval : 3000,
                    cycle : true
                });
                $('.carousel.fade').carousel({
                    interval : 3000,
                    cycle : true
                });

                // Fill all progress bars with animation

                $('.progress-bar').progressbar({
                    display_text : 'fill'
                });


                /*
                 * Smart Notifications
                 */
                $('#eg1').click(function(e) {

                    $.bigBox({
                        title : "Big Information box",
                        content : "This message will dissapear in 6 seconds!",
                        color : "#C46A69",
                        //timeout: 6000,
                        icon : "fa fa-warning shake animated",
                        number : "1",
                        timeout : 6000
                    });

                    e.preventDefault();

                })

                $('#eg2').click(function(e) {

                    $.bigBox({
                        title : "Big Information box",
                        content : "Lorem ipsum dolor sit amet, test consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                        color : "#3276B1",
                        //timeout: 8000,
                        icon : "fa fa-bell swing animated",
                        number : "2"
                    });

                    e.preventDefault();
                })

                $('#eg3').click(function(e) {

                    $.bigBox({
                        title : "Shield is up and running!",
                        content : "Lorem ipsum dolor sit amet, test consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                        color : "#C79121",
                        //timeout: 8000,
                        icon : "fa fa-shield fadeInLeft animated",
                        number : "3"
                    });

                    e.preventDefault();

                })

                $('#eg4').click(function(e) {

                    $.bigBox({
                        title : "Success Message Example",
                        content : "Lorem ipsum dolor sit amet, test consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                        color : "#739E73",
                        //timeout: 8000,
                        icon : "fa fa-check",
                        number : "4"
                    }, function() {
                        closedthis();
                    });

                    e.preventDefault();

                })



                $('#eg5').click(function() {

                    $.smallBox({
                        title : "Ding Dong!",
                        content : "Someone's at the door...shall one get it sir? <p class='text-align-right'><a href='javascript:void(0);' class='btn btn-primary btn-sm'>Yes</a> <a href='javascript:void(0);' class='btn btn-danger btn-sm'>No</a></p>",
                        color : "#296191",
                        //timeout: 8000,
                        icon : "fa fa-bell swing animated"
                    });

                });



                $('#eg6').click(function() {

                    $.smallBox({
                        title : "Big Information box",
                        content : "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                        color : "#5384AF",
                        //timeout: 8000,
                        icon : "fa fa-bell"
                    });

                })

                $('#eg7').click(function() {

                    $.smallBox({
                        title : "James Simmons liked your comment",
                        content : "<i class='fa fa-clock-o'></i> <i>2 seconds ago...</i>",
                        color : "#296191",
                        iconSmall : "fa fa-thumbs-up bounce animated",
                        timeout : 4000
                    });

                })

                function closedthis() {
                    $.smallBox({
                        title : "Great! You just closed that last alert!",
                        content : "This message will be gone in 5 seconds!",
                        color : "#739E73",
                        iconSmall : "fa fa-cloud",
                        timeout : 5000
                    });
                }

                /*
                 * SmartAlerts
                 */
                // With Callback
                $("#smart-mod-eg1").click(function(e) {
                    $.SmartMessageBox({
                        title : "Smart Alert!",
                        content : "This is a confirmation box. Can be programmed for button callback",
                        buttons : '[No][Yes]'
                    }, function(ButtonPressed) {
                        if (ButtonPressed === "Yes") {

                            $.smallBox({
                                title : "Callback function",
                                content : "<i class='fa fa-clock-o'></i> <i>You pressed Yes...</i>",
                                color : "#659265",
                                iconSmall : "fa fa-check fa-2x fadeInRight animated",
                                timeout : 4000
                            });
                        }
                        if (ButtonPressed === "No") {
                            $.smallBox({
                                title : "Callback function",
                                content : "<i class='fa fa-clock-o'></i> <i>You pressed No...</i>",
                                color : "#C46A69",
                                iconSmall : "fa fa-times fa-2x fadeInRight animated",
                                timeout : 4000
                            });
                        }

                    });
                    e.preventDefault();
                })
                // With Input
                $("#smart-mod-eg2").click(function(e) {

                    $.SmartMessageBox({
                        title : "Smart Alert: Input",
                        content : "Please enter your user name",
                        buttons : "[Accept]",
                        input : "text",
                        placeholder : "Enter your user name"
                    }, function(ButtonPress, Value) {
                        alert(ButtonPress + " " + Value);
                    });

                    e.preventDefault();
                })
                // With Buttons
                $("#smart-mod-eg3").click(function(e) {

                    $.SmartMessageBox({
                        title : "Smart Notification: Buttons",
                        content : "Lots of buttons to go...",
                        buttons : '[Need?][You][Do][Buttons][Many][How]'
                    });

                    e.preventDefault();
                })
                // With Select
                $("#smart-mod-eg4").click(function(e) {

                    $.SmartMessageBox({
                        title : "Smart Alert: Select",
                        content : "You can even create a group of options.",
                        buttons : "[Done]",
                        input : "select",
                        options : "[Costa Rica][United States][Autralia][Spain]"
                    }, function(ButtonPress, Value) {
                        alert(ButtonPress + " " + Value);
                    });

                    e.preventDefault();
                });

                // With Login
                $("#smart-mod-eg5").click(function(e) {

                    $.SmartMessageBox({
                        title : "Login form",
                        content : "Please enter your user name",
                        buttons : "[Cancel][Accept]",
                        input : "text",
                        placeholder : "Enter your user name"
                    }, function(ButtonPress, Value) {
                        if (ButtonPress == "Cancel") {
                            alert("Why did you cancel that? :(");
                            return 0;
                        }

                        Value1 = Value.toUpperCase();
                        ValueOriginal = Value;
                        $.SmartMessageBox({
                            title : "Hey! <strong>" + Value1 + ",</strong>",
                            content : "And now please provide your password:",
                            buttons : "[Login]",
                            input : "password",
                            placeholder : "Password"
                        }, function(ButtonPress, Value) {
                            alert("Username: " + ValueOriginal + " and your password is: " + Value);
                        });
                    });

                    e.preventDefault();
                });












            })



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
