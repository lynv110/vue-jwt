<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>SPA DEMO</title>
    <!-- Bootstrap -->
    <link href="{{ asset('vendors/bootstrap/dist/css/bootstrap.min.css') }}" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="{{ asset('vendors/font-awesome/css/font-awesome.min.css') }}" rel="stylesheet">
    <!-- NProgress -->
    <link href="{{ asset('vendors/nprogress/nprogress.css') }}" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="{{ asset('vendors/bootstrap-daterangepicker/daterangepicker.css') }}" rel="stylesheet">
    <link href="{{ asset('vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css') }}" rel="stylesheet">
    <!-- iCheck -->
    <link href="{{ asset('vendors/iCheck/skins/flat/green.css') }}" rel="stylesheet">
    <!-- Select2 -->
    <link href="{{ asset('vendors/select2/dist/css/select2.min.css') }}" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="{{ asset('build/css/custom.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
</head>
<body class="nav-md">
<div class="container body">
    <div class="main_container">
        test
        <div id="app"></div>
    </div>
</div>
<!-- jQuery -->
<script src="{{ asset('vendors/jquery/dist/jquery.min.js') }}"></script>
<script src="{{ asset('vendors/bootstrap/dist/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('vendors/fastclick/lib/fastclick.js') }}"></script>
<script src="{{ asset('vendors/nprogress/nprogress.js') }}"></script>
<script src="{{ asset('vendors/Chart.js/dist/Chart.min.js') }}"></script>
<script src="{{ asset('vendors/jquery-sparkline/dist/jquery.sparkline.min.js') }}"></script>
<script src="{{ asset('vendors/Flot/jquery.flot.js') }}"></script>
<script src="{{ asset('vendors/Flot/jquery.flot.pie.js') }}"></script>
<script src="{{ asset('vendors/Flot/jquery.flot.time.js') }}"></script>
<script src="{{ asset('vendors/Flot/jquery.flot.stack.js') }}"></script>
<script src="{{ asset('vendors/Flot/jquery.flot.resize.js') }}"></script>
<script src="{{ asset('vendors/flot.orderbars/js/jquery.flot.orderBars.js') }}"></script>
<script src="{{ asset('vendors/flot-spline/js/jquery.flot.spline.min.js') }}"></script>
<script src="{{ asset('vendors/flot.curvedlines/curvedLines.js') }}"></script>
<script src="{{ asset('vendors/DateJS/build/date.js') }}"></script>
<script src="{{ asset('vendors/moment/min/moment.min.js') }}"></script>
<script src="{{ asset('vendors/bootstrap-daterangepicker/daterangepicker.js') }}"></script>
<script src="{{ asset('vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js') }}"></script>
<script src="{{ asset('vendors/select2/dist/js/select2.full.min.js') }}"></script>
<script src="{{ asset('vendors/iCheck/icheck.min.js') }}"></script>
<script src="{{ asset('build/js/custom.min.js') }}"></script>
<script src="{{ asset('js/app.js') }}"></script>
</body>
</html>