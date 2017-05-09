@extends('admin.master')
@section('title','Thêm Thành Viên')
@section('content')
<form action="" method="POST" style="width: 650px;">
	<input type="hidden" name="_token" value="{{ csrf_token() }}">
	<fieldset>
		<legend>Thông Tin User</legend>
		<span class="form_label">Username:</span>
		<span class="form_item">
			<input type="text" name="txtUser" class="textbox" value="{!! old('txtUser') !!}" />
		</span><br />
		<span class="form_label">Password:</span>
		<span class="form_item">
			<input type="password" name="txtPass" class="textbox" />
		</span><br />
		<span class="form_label">Confirm password:</span>
		<span class="form_item">
			<input type="password" name="txtRepass" class="textbox" />
		</span><br />
		<span class="form_label">Level:</span>
		<span class="form_item">
			<input type="radio" name="rdoLevel" value="1" checked="checked"
			@if (old('rdoLevel') == 1)
				checked
			@endif
			 /> Admin 
			<input type="radio" name="rdoLevel" value="2" 
			@if (old('rdoLevel') == 2)
				checked
			@endif
			/> Member
		</span><br />
		<span class="form_label"></span>
		<span class="form_item">
			<input type="submit" name="btnUserAdd" value="Thêm User" class="button" />
		</span>
	</fieldset>
</form>    
@endsection