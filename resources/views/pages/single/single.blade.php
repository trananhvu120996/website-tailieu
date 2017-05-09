@extends('pages.master')
@section('title','Trang chủ')
@section('content')
<?php
$name = $_SERVER['HTTP_HOST']; //-- ví dụ: Bạn vào http://sinhvienit.net/forum/showthread.php?t=2053 thì kết quả là sinhvienit.net
$url = $_SERVER['REQUEST_URI'];;
$tong = $name.$url;
?>
		<!-- MAIN-CONTENT-SECTION START -->
		<section class="main-content-section">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<!-- BSTORE-BREADCRUMB START -->
						<div class="bstore-breadcrumb">
							<a href="{!! url('/') !!}">Trang chủ<span><i class="fa fa-caret-right"></i> </span> </a>
							@foreach($description as $value)
							<span style="font-size:14px;">{!! $value->ten !!}  </span>
							@endforeach
						</div>
						<!-- BSTORE-BREADCRUMB END -->
					</div>
				</div>				
				<div class="row">
					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
						<!-- SINGLE-PRODUCT-DESCRIPTION START -->
						@foreach($description as $value)
						<div class="row">
							<div class="col-lg-5 col-md-5 col-sm-4 col-xs-12">
								<div class="single-product-view">
									  <!-- Tab panes -->
									<div class="tab-content">
										<div class="tab-pane active" id="thumbnail_1">
											<div class="single-product-image">
												<img src="{{url('/')}}/public/template/img/tailieu/{!! $value->images !!}" style="width:226;height:320;" alt="single-product-image" />
											</div>	
										</div>									
									</div>										
								</div>								
							</div>
							<div class="col-lg-7 col-md-7 col-sm-8 col-xs-12">
								<div class="single-product-descirption">
									<h3 style="font-weight:bold;font-size:20px;">{!! $value->ten !!}</h3>
									<div class="single-product-social-share">
										<ul>
											<div class="fb-like" data-href="<?php echo 'http://'.$tong?>" data-layout="standard" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
										</ul>
									</div>
									
									<div class="single-product-condition">
										<p>Tác giả: <span>{!! $value->tac_gia !!}</span></p>
										<p>Nội dung chính: <span>{!! $value->noi_dung_chinh !!}</span></p>
										<p>Năm phát hành: <span>{!! $value->nam_phat_hanh !!}</span></p>
										<p>Số trang: <span>{!! $value->so_trang !!}</span></p>
										<p>Giới thiệu sơ lược: @if($value->gioi_thieu=='')<span>Đang cập nhật</span>@elseif($value->gioi_thieu!='')<span>{!! $value->gioi_thieu !!}</span>@endif</p>
									</div>
								</div>
							</div>
						</div>
						@endforeach
						<!-- SINGLE-PRODUCT-DESCRIPTION END -->
						<!-- SINGLE-PRODUCT INFO TAB START -->
						<div class="row">
							<div class="col-sm-12">
								<div class="product-more-info-tab">
									<!-- Nav tabs -->
									<ul class="nav nav-tabs more-info-tab">
										<li class="active"><a href="#moreinfo" data-toggle="tab">Bình luận</a></li>
										<li><a href="#datasheet" data-toggle="tab">Đọc thử</a></li>
										<li><a href="#review" data-toggle="tab">Tải về</a></li>
									</ul>
									  <!-- Tab panes -->
									<div class="tab-content">
										<div class="tab-pane active" id="moreinfo">
												<div id="comment">
												<div class="fb-comments" data-href="<?php echo 'http://'.$tong?>" data-colorscheme="light" 
												data-numposts="5" data-width="100%"></div>
												</div>
												</div>
											@foreach($description as $value)
										<div class="tab-pane" id="datasheet">
										
											<iframe src="https://drive.google.com/file/d/{!! $value->link !!}/preview" width="100%" height="600"></iframe>
										
										</div>
										<div class="tab-pane" id="review">
											<a target="_blank" href="https://drive.google.com/file/d/{!! $value->link !!}/view">Nhấp vào đây để tải về</a>
										</div>
										@endforeach
									</div>									
								</div>
							</div>
						</div>
						<!-- SINGLE-PRODUCT INFO TAB END -->
						<!-- RELATED-PRODUCTS-AREA START -->
						<div class="row">
							<div class="col-sm-12">
								<div class="left-title-area">
									<h2 class="left-title">Các sách cùng loại</h2>
								</div>	
							</div>
							<div class="related-product-area featured-products-area">
								<div class="col-sm-12">
									<div class=" row">
										<!-- RELATED-CAROUSEL START -->
										<div class="related-product">

											<!-- SINGLE-PRODUCT-ITEM START -->
											@foreach($book_same_kind as $value)
											<div class="item">
												<div class="single-product-item">
													<div class="product-image">
														<a href="single-{{ $value->id }}.html"><img src="{{url('/')}}/public/template/img/tailieu/{{$value->images}}" style="height:300px;width:220px;"  alt="product-image" /></a>
													</div>
													<div class="product-info">
														<div class="customar-comments-box">
															<div class="review-box">	
															</div>
														</div>
														<a href="single-{{ $value->id }}.html">{{$value->ten}}</a>
														<div class="price-box">														
														</div>
													</div>
												</div>							
											</div>
											@endforeach
											<!-- SINGLE-PRODUCT-ITEM END -->
																	
										</div>
										<!-- RELATED-CAROUSEL END -->
									</div>	
								</div>
							</div>	
						</div>
						<!-- RELATED-PRODUCTS-AREA END -->
					</div>
					<!-- RIGHT SIDE BAR START -->
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
						<!-- SINGLE SIDE BAR START -->
						<div class="single-product-right-sidebar">
							<h2 class="left-title">Sách cùng loại mới nhất</h2>
							<ul>
							@foreach($book_same_kind_new as $value)
								<li>
									<a href="single-{!! $value->id !!}.html"><img src="{{url('/')}}/public/template/img/tailieu/{!!$value->images!!}" style="width:80px;height:80px;" alt="product-image" /></a>
									<div class="r-sidebar-pro-content">
										<a href="single-{!! $value->id !!}.html">{!!$value->ten!!}</a>
									</div>
								</li>
							@endforeach
							</ul>
						</div>	
						<!-- SINGLE SIDE BAR END -->
						<!-- SINGLE SIDE BAR START -->
						<div class="single-product-right-sidebar clearfix">
							<h2 class="left-title">Tags </h2>
							<div class="category-tag">
							@foreach($tags as $value)
								<a href="books-{{ $value->id }}.html">{!! $value->ten_loai !!}</a>
							@endforeach
							</div>							
						</div>	
						<!-- SINGLE SIDE BAR END -->
						<!-- SINGLE SIDE BAR START -->						
						<div class="single-product-right-sidebar">
							<div class="slider-right zoom-img">
								
							</div>							
						</div>
					</div>
					<!-- SINGLE SIDE BAR END -->				
				</div>
			</div>
		</section>
		<br/><br/>
		<!-- MAIN-CONTENT-SECTION END -->
	
				
@endsection