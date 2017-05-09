@extends('pages.master')
@section('title','Trang chủ')
@section('content')
<!-- HEADER-BOTTOM-AREA START -->
		<section class="header-bottom-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
						<!-- LEFT-CATEGORY-MENU START -->
						<div class="left-category-menu">
							<div class="left-product-cat">
								<div class="category-heading">
									<h2>Danh mục</h2>
								</div>
								<!-- CATEGORY-MENU-LIST START -->
								<div class="category-menu-list">
									<ul>
									@foreach($menu as $value)
										<li><a href="books-{{ $value->id }}.html"><span class="cat-thumb hidden-md hidden-sm hidden-xs"><img src="{!! asset('public/template/img/layout2/5.png') !!}" alt="" /></span>{{$value->ten_loai}}<i class="fa fa-angle-right"></i></a>
											<!-- CAT-LEFT MEGA MENU START -->
											<!--div class="cat-left-drop-menu">
												<div class="cat-left-drop-menu-left">
													<a class="menu-item-heading" href="shop-gird.html">Tops</a>
													<ul>
														<li><a href="shop-gird.html">Blouse</a></li>
														<li><a href="shop-gird.html">T-shirts</a></li>
													</ul>
												</div>
												<div class="cat-left-drop-menu-left">
													<a class="menu-item-heading" href="shop-gird.html">Dresses</a>
													<ul>
														<li><a href="shop-gird.html">Summer Dresses</a></li>
														<li><a href="shop-gird.html">Casual Dresses</a></li>
														<li><a href="shop-gird.html">Enening Dresses</a></li>
													</ul>														
												</div>
											</div-->
											<!-- CAT-LEFT MEGA MENU END -->
										</li>
									@endforeach
									</ul>
								</div>
								<!-- CATEGORY-MENU-LIST END -->
							</div>
						</div>	
						<!-- LEFT-CATEGORY-MENU END -->			
					</div>
					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
						<!-- MAIN-SLIDER-AREA START -->
						<div class="main-slider-area">
							<div class="slider-area">
								<div id="wrapper">
									<div class="slider-wrapper">
										<div id="mainSlider" class="nivoSlider">
											<img src="{!! asset('public/template/img/tailieu/banner2.png') !!}" style="width:870px;height:421px;" alt="main slider" />
											<img src="{!! asset('public/template/img/tailieu/banner1.jpg') !!}" style="width:870px;height:421px;" alt="main slider" />
										</div>									
									</div>
								</div>								
							</div>											
						</div>	
						<!-- MAIN-SLIDER-AREA END -->
					</div>						
				</div>
			</div>
		</section>
		<!-- HEADER-BOTTOM-AREA END -->
		<!-- MAIN-CONTENT-SECTION START -->
		<section class="main-content-section">
			<div class="container">
				<div class="row">
					<!-- LEFT-SIDEBAR START -->
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
						<!-- SIDEBAR-LEFT-ADD START -->
						<div class="single-left-sidebar sidebar-left-add">
							<div class="sidebar-left zoom-img">
								<a href="#"><img src="{!! asset('public/template/img/tailieu/banner5.jpg') !!}" style="width:270px;height:350px;" alt="sidebar left" /></a>
							</div>	
						</div>
						<!-- SIDEBAR-LEFT-ADD END -->
						<!-- LEFT SIDEBAR-BEST-SELLER START -->
						<div class="single-left-sidebar sidebar-best-seller">
							<div class="left-title-area">
								<h2 class="left-title">Top theo dõi</h2>
							</div>
							<div class="row">
								<!-- SIDEBAR-BEST-SELLER-CAROUSEL START -->			
								<div class="sidebar-best-seller-carousel">
									<!-- SIDEBAR-BEST-SELLER SINGLE ITEM START -->
									<div class="item">
										<!-- SINGLE-PRODUCT-ITEM START -->
										@foreach($top_view_1 as $value)
										<div class="single-product-item">
											<div class="sidebar-product-image">
												<a href="single-{{ $value->id }}.html"><img src="{{url('/')}}/public/template/img/tailieu/{{$value->images}}" style="width:80px;height:80px;" alt="product-image" /></a>
											</div>
											<div class="product-info sede-pro-info">
												<a href="single-{{ $value->id }}.html">{{$value->ten}}</a>
												<!--div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
												</div-->
												
											</div>
										</div>
										@endforeach
										<!-- SINGLE-PRODUCT-ITEM END -->								
									</div>
									<!-- SIDEBAR-BEST-SELLER SINGLE ITEM END -->
									<!-- SIDEBAR-BEST-SELLER SINGLE ITEM START -->
									<div class="item">
										<!-- SINGLE-PRODUCT-ITEM START -->
										@foreach($top_view_2 as $value)
										<div class="single-product-item">
											<div class="sidebar-product-image">
												<a href="single-{{ $value->id }}.html"><img src="{{url('/')}}/public/template/img/tailieu/{{$value->images}}" style="width:80px;height:80px;" alt="product-image" /></a>
											</div>
											<div class="product-info sede-pro-info">
												<a href="single-{{ $value->id }}.html">{{$value->ten}}</a>
												<!--div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
												</div-->
												
											</div>
										</div>
										@endforeach
										<!-- SINGLE-PRODUCT-ITEM END -->								
									</div>
									<!-- SIDEBAR-BEST-SELLER SINGLE ITEM END -->
								</div>	
								<!-- SIDEBAR-BEST-SELLER-CAROUSEL END -->	
							</div>
						</div>
						<!-- LEFT SIDEBAR-BEST-SELLER END -->
					</div>	
					<!-- LEFT-SIDEBAR END -->
					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="new-product-area">
									<div class="left-title-area">
										<h2 class="left-title">Tài liệu mới</h2>
									</div>						
									<div class="row">
										<div class="col-xs-12">
											<div class="row">
												<!-- HOME2-NEW-PRO-CAROUSEL START -->
												<div class="home2-new-pro-carousel">

													<!-- NEW-PRODUCT SINGLE ITEM START -->
													@foreach($books_news as $value)
													<div class="item">
														<div class="new-product">
															<div class="single-product-item">
																<div class="product-image">
																	<a href="single-{{ $value->id }}.html"><img src="{{url('/')}}/public/template/img/tailieu/{{$value->images}}" style="height:300px;width:220px;"  alt="product-image" /></a>
																	<a href="#" class="new-mark-box">new</a>
																	<div class="overlay-content">
																		<ul>
																			<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
																		</ul>
																	</div>
																</div>
																<div class="product-info">
																	<div class="customar-comments-box">
																		
																		<div class="review-box">
																			
																		</div>
																	</div>
																	<a href="single-{{ $value->id }}.html">{{$value->ten}}</a>
																	
																</div>
															</div>
														</div>
													</div>
													@endforeach
													<!-- NEW-PRODUCT SINGLE ITEM END -->
												
												</div>
												<!-- HOME2-NEW-PRO-CAROUSEL END -->
											</div>
										</div>
									</div>
								</div>										
							</div>
							
							<div class="col-xs-12">
								<!-- SALE-PODUCT-AREA START -->
								<div class="sale-poduct-area new-product-area">
									<div class="left-title-area">
										<h2 class="left-title">Tài liệu toán</h2>
									</div>
									<div class="row">
										<!-- HOME2-SALE-CAROUSEL START -->
										<div class="home2-sale-carousel">
											<!-- NEW-PRODUCT SINGLE ITEM START -->
											@foreach($toan as $value)
													<div class="item">
														<div class="new-product">
															<div class="single-product-item">
																<div class="product-image">
																	<a href="single-{{ $value->id }}.html"><img src="{{url('/')}}/public/template/img/tailieu/{{$value->images}}" style="height:300px;width:220px;"  alt="product-image" /></a>
																	
																	<div class="overlay-content">
																		<ul>
																			<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
																		</ul>
																	</div>
																</div>
																<div class="product-info">
																	<div class="customar-comments-box">
																		
																		<div class="review-box">
																			
																		</div>
																	</div>
																	<a href="single-{{ $value->id }}.html">{{$value->ten}}</a>
																	
																</div>
															</div>
														</div>
													</div>
													@endforeach
											<!-- NEW-PRODUCT SINGLE ITEM END -->
										
										</div>
										<!-- HOME2-SALE-CAROUSEL END -->
									</div>
								</div>
								<!-- SALE-PODUCT-AREA end -->
							</div>
						</div>	
					</div>	
				</div>
			</div>
		</section>	
		<!-- MAIN-CONTENT-SECTION END -->
		<!-- MAIN-CONTENT-SECTION START -->
		<section class="main-content-section-full-column">
			<div class="container">
				<div class="row">
					<!-- IMAGE-ADD-AREA START -->
					<div class="image-add-area">
						<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
							<!-- SINGLE ADD START -->
							<div class="onehalf-add-shope zoom-img">
								<a href="#"><img src="{!! asset('public/template/img/tailieu/banner6.jpg') !!}" style="width:670px;height:262px;" alt="shope-add" /></a>
							</div>
							<!-- SINGLE ADD END -->
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
							<!-- SINGLE ADD START -->
							<div class="onehalf-add-shope zoom-img">
								<a href="#"><img src="{!! asset('public/template/img/tailieu/banner7.jpg') !!}" style="width:470px;height:262px;" alt="shope-add" /></a>
							</div>
							<!-- SINGLE ADD END -->
						</div>						
					</div>
					<!-- IMAGE-ADD-AREA END -->
				</div>
				<div class="row">
					<div class="col-xs-12">
						<!-- FEATURED-PRODUCTS-AREA START -->
						<div class="featured-products-area">
							<div class="left-title-area">
								<h2 class="left-title">Tài liệu Hóa học</h2>
							</div>	
							<div class="row">
								<!-- FEARTURED-CAROUSEL START -->	
								<div class="feartured-carousel">
									<!-- SINGLE ITEM START -->
									@foreach($hoa as $value)
									<div class="item">
										<!-- SINGLE-PRODUCT-ITEM START -->
										<div class="single-product-item">
											<div class="product-image">
												<a href="single-{{ $value->id }}.html"><img src="{{url('/')}}/public/template/img/tailieu/{{$value->images}}" style="height:300px;width:220px;"  alt="product-image" /></a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product-info">
												<div class="customar-comments-box">											
													<div class="review-box">														
													</div>
												</div>
												<a href="single-{{ $value->id }}.html">{{$value->ten}}</a>											
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->
									</div>
									@endforeach
									<!-- SINGLE ITEM END -->
																
								</div>
								<!-- FEARTURED-CAROUSEL END -->
							</div>
						</div>
						<!-- FEATURED-PRODUCTS-AREA END -->
					</div>						
				</div>
			</div>
		</section>

		<section class="main-content-section-full-column">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<!-- FEATURED-PRODUCTS-AREA START -->
						<div class="featured-products-area">
							<div class="left-title-area">
								<h2 class="left-title">Tài liệu tiếng Anh</h2>
							</div>	
							<div class="row">
								<!-- FEARTURED-CAROUSEL START -->	
								<div class="feartured-carousel">
									<!-- SINGLE ITEM START -->
									@foreach($anh as $value)
									<div class="item">
										<!-- SINGLE-PRODUCT-ITEM START -->
										<div class="single-product-item">
											<div class="product-image">
												<a href="single-{{ $value->id }}.html"><img src="{{url('/')}}/public/template/img/tailieu/{{$value->images}}" style="height:300px;width:220px;"  alt="product-image" /></a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product-info">
												<div class="customar-comments-box">											
													<div class="review-box">														
													</div>
												</div>
												<a href="single-{{ $value->id }}.html">{{$value->ten}}</a>											
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->
									</div>
									@endforeach
									<!-- SINGLE ITEM END -->
																
								</div>
								<!-- FEARTURED-CAROUSEL END -->
							</div>
						</div>
						<!-- FEATURED-PRODUCTS-AREA END -->
					</div>						
				</div>
			</div>
		</section>

		<section class="main-content-section-full-column">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<!-- FEATURED-PRODUCTS-AREA START -->
						<div class="featured-products-area">
							<div class="left-title-area">
								<h2 class="left-title">Các tài liệu thông dụng</h2>
							</div>	
							<div class="row">
								<!-- FEARTURED-CAROUSEL START -->	
								<div class="feartured-carousel">
									<!-- SINGLE ITEM START -->
									@foreach($books_all as $value)
									<div class="item">
										<!-- SINGLE-PRODUCT-ITEM START -->
										<div class="single-product-item">
											<div class="product-image">
												<a href="single-{{ $value->id }}.html"><img src="{{url('/')}}/public/template/img/tailieu/{{$value->images}}" style="height:300px;width:220px;"  alt="product-image" /></a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product-info">
												<div class="customar-comments-box">											
													<div class="review-box">														
													</div>
												</div>
												<a href="single-{{ $value->id }}.html">{{$value->ten}}</a>											
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->
									</div>
									@endforeach
									<!-- SINGLE ITEM END -->
																
								</div>
								<!-- FEARTURED-CAROUSEL END -->
							</div>
						</div>
						<!-- FEATURED-PRODUCTS-AREA END -->
					</div>						
				</div>
			</div>
		</section>

		
		
		<!-- MAIN-CONTENT-SECTION END -->
		
		
@endsection