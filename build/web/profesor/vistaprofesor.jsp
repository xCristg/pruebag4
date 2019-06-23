<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
	<meta charset="utf-8">	
	<title>Control de Disponibilidad Docente</title>
	<!-- Tell the browser to be responsive to screen width -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="google" value="notranslate">

        <!-- Bootstrap -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/public/css/bootstrap.min.css">
        <!-- JQuery -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/public/css/plugins/jQueryUI/jquery-ui.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/public/font-awesome/css/font-awesome.min.css">
        <!-- Toastr style -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/public/css/plugins/toastr/toastr.min.css">
<!-- Gritter-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/public/js/plugins/gritter/jquery.gritter.css">

        <link href="${pageContext.request.contextPath}/resources/public/css/plugins/iCheck/custom.css" rel="stylesheet">
        <!-- Inspinia Theme -->
        <link href="${pageContext.request.contextPath}/resources/public/css/animate.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/public/css/style.css" rel="stylesheet">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <!-- DataTables -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/public/css/plugins/dataTables/datatables.min.css">  
        <!-- sweete alet -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/public/css/plugins/sweetalert/sweetalert.css">
        <!-- bootstrap datepicker -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/public/css/plugins/datapicker/datepicker3.css">
        <!-- bootstrap Range datepicker -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/public/css/plugins/daterangepicker/daterangepicker-bs3.css">

        <link href="${pageContext.request.contextPath}/resources/public/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
        <!-- dropzone-->
        <link href="${pageContext.request.contextPath}/resources/public/css/plugins/dropzone/basic.css" rel="stylesheet">
    	<link href="${pageContext.request.contextPath}/resources/public/css/plugins/dropzone/dropzone.css" rel="stylesheet">

    </head>
    <body>
        <div id="wrapper">
            <jsp:include page="/WEB-INF/pages/commons/sidebar.jsp"/>				
            <div id="page-wrapper" class="gray-bg dashbard-1">
                <jsp:include page="/WEB-INF/pages/commons/navbar.jsp"/>	
                <%--nota   <jsp:include page="/WEB-INF/jsp/disponibilidad_horaria.jsp"/>--%>
                <jsp:include page="/profesor/disponibilidad_horaria.jsp"/>
                
                <jsp:include page="/WEB-INF/pages/commons/footer.jsp"/>	
            </div>
			

	</div>	
	    
	<!-- Mainly scripts -->
        <!-- jQuery 2.1.1 -->
        <script src="${pageContext.request.contextPath}/resources/public/js/jquery-2.1.1.js"></script>
        <!-- jQuery UI -->
        <script src="${pageContext.request.contextPath}/resources/public/js/plugins/jquery-ui/jquery-ui.min.js"></script>
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/resources/public/js/bootstrap.js"></script>
        <script src="${pageContext.request.contextPath}/resources/public/js/plugins/metisMenu/jquery.metisMenu.js"></script>
        <script src="${pageContext.request.contextPath}/resources/public/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/public/js/plugins/jeditable/jquery.jeditable.js"></script>
        <!-- page script -->
        <script type="text/javascript">
          $(".flash-msg").fadeTo(2000, 500).slideUp(500, function(){
            $(".flash-msg").slideUp(500);
        });
        </script>
        <!-- Flot -->
        <script src="${pageContext.request.contextPath}/resources/public/js/plugins/flot/jquery.flot.js"></script>
        <script src="${pageContext.request.contextPath}/resources/public/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/public/js/plugins/flot/jquery.flot.spline.js"></script>
        <script src="${pageContext.request.contextPath}/resources/public/js/plugins/flot/jquery.flot.resize.js"></script>
        <script src="${pageContext.request.contextPath}/resources/public/js/plugins/flot/jquery.flot.pie.js"></script>

        <!-- Peity -->
        <script src="${pageContext.request.contextPath}/resources/public/js/plugins/peity/jquery.peity.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/public/js/demo/peity-demo.js"></script>

        <!-- Custom and plugin javascript -->
        <script src="${pageContext.request.contextPath}/resources/public/js/inspinia.js"></script>
        <script src="${pageContext.request.contextPath}/resources/public/js/plugins/pace/pace.min.js"></script>
            <!-- GITTER -->
        <script src="${pageContext.request.contextPath}/resources/public/js/plugins/gritter/jquery.gritter.min.js"></script>

        <!-- Sparkline -->
        <script src="${pageContext.request.contextPath}/resources/public/js/plugins/sparkline/jquery.sparkline.min.js"></script>

        <!-- Sparkline demo data  -->
        <script src="${pageContext.request.contextPath}/resources/public/js/demo/sparkline-demo.js"></script>

        <!-- ChartJS-->
        <!-- <script src="<?= base_url() ?>public/js/plugins/chartJs/Chart.min.js"></script> -->

        <!-- Toastr -->
        <script src="${pageContext.request.contextPath}/resources/public/js/plugins/toastr/toastr.min.js"></script>

        <!-- DataTables -->
        <script src="${pageContext.request.contextPath}/resources/public/js/plugins/dataTables/datatables.min.js"></script>
        <!-- sweete alet -->
        <script src="${pageContext.request.contextPath}/resources/public/js/plugins/sweetalert/sweetalert.min.js"></script>
        <!-- bootstrap datepicker -->
        <script src="${pageContext.request.contextPath}/resources/public/js/plugins/datapicker/bootstrap-datepicker.js"></script>
        <!-- Date range picker -->
        <script src="${pageContext.request.contextPath}/resources/public/js/plugins/daterangepicker/daterangepicker.js"></script>
        <script src="${pageContext.request.contextPath}/resources/public/js/plugins/iCheck/icheck.min.js"></script>

        <!-- Highchart  -->
        <script src="${pageContext.request.contextPath}/resources/public/plugins/highcharts/code/highcharts.js"></script>
        <script src="${pageContext.request.contextPath}/resources/public/plugins/highcharts/code/modules/exporting.js"></script>
        <script src="${pageContext.request.contextPath}/resources/public/plugins/highcharts/code/modules/export-data.js"></script>

        <!-- dropzone -->
    	<script src="${pageContext.request.contextPath}/resources/public/js/plugins/dropzone/dropzone.js"></script>

        <script>
            $(document).ready(function () {
                $('.i-checks').iCheck({
                    checkboxClass: 'icheckbox_square-green',
                    radioClass: 'iradio_square-green',
                });
                $('.i-checks2').iCheck({
                    checkboxClass: 'icheckbox_square-green',
                    radioClass: 'iradio_square-green',
                });
            });
        </script>

        <script >
                //Date picker
            $('#datepicker').datepicker({
                format: "dd/mm/yyyy",
                language: "es",
                autoclose: true
            });

            $('#data_5 .input-daterange').datepicker({
                format: "dd/mm/yyyy",
                language: "es",
                keyboardNavigation: false,
                forceParse: false,
                autoclose: true
            });
        </script>
    </body>
</html>
