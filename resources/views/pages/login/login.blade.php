@extends('pages.master')
@section('title','Đăng nhập')
@section('content')

<!-- MAIN-CONTENT-SECTION START -->
		<section class="main-content-section">
			<div class="container">
				<div class="row">
               
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<!-- BSTORE-BREADCRUMB START -->
						<div class="bstore-breadcrumb">
							<a href="index-2.html">Trang chủ</a>
							<span><i class="fa fa-caret-right"></i></span>
							<span>Đăng nhập / Đăng ký</span>
						</div>
						<!-- BSTORE-BREADCRUMB END -->
					</div>
				</div>
				<div class="row">
					
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<!-- CREATE-NEW-ACCOUNT START -->
						<div class="create-new-account">
							<form class="new-account-box primari-box" id="create-new-account" method="post" action="#">
								<h3 class="box-subheading">Đăng ký tài khoản</h3>
								<div class="form-content">
									
									<div class="submit-button">
										<a href="checkout-registration.html" id="SubmitCreate" class="btn main-btn">
											<span>
												<i class="fa fa-user submit-icon"></i>
												Đăng ký tài khoản
											</span>											
										</a>
									</div>
								</div>
							</form>							
						</div>
						<!-- CREATE-NEW-ACCOUNT END -->
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<!-- REGISTERED-ACCOUNT START -->
						<div class="primari-box registered-account">
							<form class="new-account-box" id="accountLogin" method="post" action="{!! route('postLogin') !!}">
                            <input type="hidden" name="_token" value="{{ csrf_token() }}"/>
								<h3 class="box-subheading">Đã có tài khoản?</h3>
                                 @include('pages.blocks.error')
								<div class="form-content">
									<div class="form-group primary-form-group">
										<label for="loginemail">Email address</label>
										<input type="text" value="" name="email" id="loginemail" class="form-control input-feild" placeholder="Nhập email">
									</div>
									<div class="form-group primary-form-group">
										<label for="password">Password</label>
										<input type="password" value="" name="password" id="password" class="form-control input-feild" placeholder="Nhập password">
									</div>
									<div class="forget-password">
										<p><a href="#">Quên tài khoản?</a></p>
									</div>
									<input type="submit" class="btn btn-primary" value="Đăng nhập"/>
								</div>
							</form>							
						</div>
						<!-- REGISTERED-ACCOUNT END -->
					</div>
				</div>
			</div>
		</section>
		<!-- MAIN-CONTENT-SECTION END -->








@endsection