@if (Session::has('flash_message'))
	<div class="{!! Session::get('flash_level') !!}">
		{!! Session::get('flash_message') !!}
	</div>
@endif