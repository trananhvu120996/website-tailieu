@extends('admin.master')
@section('title','Sửa Danh Mục')
@section('content')
<form action="" method="POST" style="width: 650px;">
	<input type="hidden" name="_token" value="{{ csrf_token() }}">
	<fieldset>
		<legend>Thông Tin Danh Mục</legend>
		<span class="form_label">Danh mục cha:</span>
		<span class="form_item">
			<select name="sltCate" class="select">
				<option value="0">--- ROOT ---</option>
				<?php menuMulti ($parent,0,$str="---|",$data["parent_id"]) ?>
			</select>
		</span><br />
		<span class="form_label">Tên danh mục:</span>
		<span class="form_item">
			<input type="text" name="txtCateName" class="textbox" value="{!! old('txtCateName',isset($data["name"]) ? $data["name"] : null) !!}" />
		</span><br />
		<span class="form_label"></span>
		<span class="form_item">
			<input type="submit" name="btnCateEdit" value="Sửa danh mục" class="button" />
		</span>
	</fieldset>
</form>
@endsection