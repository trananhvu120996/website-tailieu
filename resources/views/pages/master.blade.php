<!doctype html>
<!--[if IE]><![endif]-->
<!--[if lt IE 7 ]> <html lang="en" class="ie6">    <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="ie7">    <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="ie8">    <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="ie9">    <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html lang="en"><!--<![endif]-->
    
<!-- Mirrored from hastech.company/html/bstore-preview/bstore/index-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 06 Sep 2016 08:15:43 GMT -->
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>@yield('title')</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- Favicon
		============================================ -->
		<link rel="shortcut icon" type="image/x-icon" href="{!! asset('public/template/img/favicon.png') !!}">
		
		<!-- FONTS
		============================================ -->	
		<link href='http://fonts.googleapis.com/css?family=Oswald:400,700' rel='stylesheet' type='text/css'> 
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Bitter:400,700,400italic&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
		
		<!-- animate CSS
		============================================ -->
        <link rel="stylesheet" href="{!! asset('public/template/css/animate.css') !!}">			
		
		<!-- FANCYBOX CSS
		============================================ -->			
        <link rel="stylesheet" href="{!! asset('public/template/css/jquery.fancybox.css') !!}">	
		
		<!-- BXSLIDER CSS
		============================================ -->			
        <link rel="stylesheet" href="{!! asset('public/template/css/jquery.bxslider.css') !!}">			
				
		<!-- MEANMENU CSS
		============================================ -->			
        <link rel="stylesheet" href="{!! asset('public/template/css/meanmenu.min.css') !!}">	
		
		<!-- JQUERY-UI-SLIDER CSS
		============================================ -->			
        <link rel="stylesheet" href="{!! asset('public/template/css/jquery-ui-slider.css') !!}">		
		
		<!-- NIVO SLIDER CSS
		============================================ -->			
        <link rel="stylesheet" href="{!! asset('public/template/css/nivo-slider.css') !!}">
		
		<!-- OWL CAROUSEL CSS 	
		============================================ -->	
        <link rel="stylesheet" href="{!! asset('public/template/css/owl.carousel.css') !!}">
		
		<!-- OWL CAROUSEL THEME CSS 	
		============================================ -->	
         <link rel="stylesheet" href="{!! asset('public/template/css/owl.theme.css') !!}">
		
		<!-- BOOTSTRAP CSS 
		============================================ -->	
        <link rel="stylesheet" href="{!! asset('public/template/css/bootstrap.min.css') !!}">
		
		<!-- FONT AWESOME CSS 
		============================================ -->
        <link rel="stylesheet" href="{!! asset('public/template/css/font-awesome.min.css') !!}">
		
		<!-- NORMALIZE CSS 
		============================================ -->
        <link rel="stylesheet" href="{!! asset('public/template/css/normalize.css') !!}">
		
		<!-- MAIN CSS 
		============================================ -->
        <link rel="stylesheet" href="{!! asset('public/template/css/main.css') !!}">
		
		<!-- STYLE CSS 
		============================================ -->
        <link rel="stylesheet" href="{!! asset('public/template/css/style.css') !!}">
		
		<!-- RESPONSIVE CSS 
		============================================ -->
        <link rel="stylesheet" href="{!! asset('public/template/css/responsive.css') !!}">
		
		<!-- IE CSS 
		============================================ -->
        <link rel="stylesheet" href="{!! asset('public/template/css/ie.css') !!}">		
		
		<!-- MODERNIZR JS 
		============================================ -->
        <script src="{!! asset('public/template/js/vendor/modernizr-2.6.2.min.js') !!}"></script>
    </head>
	
    <body class="index-2">

	<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.9&appId=1489847264406052";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <!-- Add your site or application content here -->
		
		<!-- HEADER-TOP START -->
		<div class="header-top">
			<div class="container">
				<div class="row">
					<!-- HEADER-LEFT-MENU START -->
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="header-left-menu">
							<div class="welcome-info">
								Xin chào <span>
								@if(Auth::check())
								{!! Auth::user()->email !!}
								@endif
								</span>
							</div>
						</div>
					</div>
					<!-- HEADER-LEFT-MENU END -->
					<!-- HEADER-RIGHT-MENU START -->
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="header-right-menu">
							<nav>
								<ul class="list-inline">
								@if(Auth::check())
								<li><a href="{!! route('getLogout') !!}">Đăng xuất</a></li>
								@else
								<li><a href="{!! route('getLogin') !!}">Đăng nhập</a></li>
								<li><a href="#">Đăng ký</a></li>
								@endif
									
								</ul>									
							</nav>
						</div>
					</div>
					<!-- HEADER-RIGHT-MENU END -->
				</div>
			</div>
		</div>
		<!-- HEADER-TOP END -->
		<!-- HEADER-MIDDLE START -->
		<section class="header-middle">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<!-- LOGO START -->
						<div class="logo">
							<a href="."><img src="{!! asset('public/template/img/logo2.png') !!}" alt="bstore logo" /></a>
						</div>
						<!-- LOGO END -->
						<!-- HEADER-RIGHT-CALLUS START -->
						<div class="header-right-callus">
							<h3 style="text-align:center;">Liên hệ</h3>
							<span>0186-4777-670</span>
						</div>
						<!-- HEADER-RIGHT-CALLUS END -->
						<!-- CATEGORYS-PRODUCT-SEARCH START -->
						<div class="categorys-product-search">
							<form action="{!! route('postSearch') !!}" method="post" class="search-form-cat">
							 <input type="hidden" name="_token" value="{{ csrf_token() }}"/>
								 <div class="search-product form-group">
									
									<input list="browsers" name="browser" id="btnsearch"  placeholder="Nhập từ khóa..."/>
									<datalist id="browsers">
										@foreach($search as $value)
										<option value="{{$value->ten}}">
										@endforeach
									</datalist>
									<button class="search-button" value="Search" name="s" type="submit">
										<i class="fa fa-search"></i>
									</button>

																		
								</div>
							</form>
						</div>
						<!-- CATEGORYS-PRODUCT-SEARCH END -->
					</div>
				</div>
			</div>
		</section>
		<!-- HEADER-MIDDLE END -->
		<!-- MAIN-MENU-AREA START -->
		<header class="main-menu-area">
			<div class="container">
				<div class="row">
					<!-- MAINMENU START -->
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding-right menuarea">
						<div class="mainmenu">
							<nav>
								<ul class="list-inline mega-menu">
									<li class="active"><a href=".">Trang chủ</a>
										<!-- DROPDOWN MENU START -->
										<!--div class="home-var-menu">
											<ul class="home-menu">
												<li><a href="index-2.html">Home variation 1</a></li>
												<li><a href="index-3.html">Home variation 2</a></li>
											</ul>												
										</div -->
										<!-- DROPDOWN MENU END -->
									</li>
									@foreach($menu as $value)
									<li>
										<a href="books-{{ $value->id }}.html">{{$value->ten_loai}}</a>
									</li>
									@endforeach
								</ul>
							</nav>
						</div>
					</div>
					<!-- MAINMENU END -->
				</div>			
			</div>
		</header>
		<!-- MAIN-MENU-AREA END -->

		<!-- CONTENT-->
		
		@yield('content')
		<!-- END CONTENT-->
    </div>
</div>
</div>
</div>
</section>
<!-- FOOTER-TOP-AREA END -->
		<!-- COPYRIGHT-AREA START -->
		<footer class="copyright-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="copy-right">
							<address>Copyright © 2017 by <a href="#">Trần Anh Vũ</a></address>
						</div>
						<div class="scroll-to-top">
							<a href="#" class="bstore-scrollertop"><i class="fa fa-angle-double-up"></i></a>
						</div>
					</div>
				</div>
			</div>
		</footer> 
		<!-- COPYRIGHT-AREA END -->
		<!-- JS 
		===============================================-->
		<!-- jquery js -->
		<script src="{!! asset('public/template/js/vendor/jquery-1.11.3.min.js') !!}"></script>
		
		<!-- fancybox js -->
        <script src="{!! asset('public/template/js/jquery.fancybox.js') !!}"></script>
		
		<!-- bxslider js -->
        <script src="{!! asset('public/template/js/jquery.bxslider.min.js') !!}"></script>
		
		<!-- meanmenu js -->
        <script src="{!! asset('public/template/js/jquery.meanmenu.js') !!}"></script>
		
		<!-- owl carousel js -->
        <script src="{!! asset('public/template/js/owl.carousel.min.js') !!}"></script>
		
		<!-- nivo slider js -->
        <script src="{!! asset('public/template/js/jquery.nivo.slider.js') !!}"></script>
		
		<!-- jqueryui js -->
        <script src="{!! asset('public/template/js/jqueryui.js') !!}"></script>
		
		<!-- bootstrap js -->
        <script src="{!! asset('public/template/js/bootstrap.min.js') !!}"></script>
		
		<!-- wow js -->
        <script src="{!! asset('public/template/js/wow.js') !!}"></script>		
		<script>
			new WOW().init();
		</script>

		<!-- Google Map js -->
        <script src="https://maps.googleapis.com/maps/api/js"></script>	
		<script>
			function initialize() {
			  var mapOptions = {
				zoom: 8,
				scrollwheel: false,
				center: new google.maps.LatLng(35.149868, -90.046678)
			  };
			  var map = new google.maps.Map(document.getElementById('googleMap'),
				  mapOptions);
			  var marker = new google.maps.Marker({
				position: map.getCenter(),
				map: map
			  });

			}
			google.maps.event.addDomListener(window, 'load', initialize);				
		</script>
		<!-- main js -->
        <script src="{!! asset('public/template/js/main.js') !!}"></script>
    </body>
</html>