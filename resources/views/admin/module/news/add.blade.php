@extends('admin.master')
@section('title','Thêm Tin Tức')
@section('content')
<form action="" method="POST" enctype="multipart/form-data" style="width: 650px;">
	<input type="hidden" name="_token" value="{{ csrf_token() }}">
	<fieldset>
		<legend>Thông Tin Bản Tin</legend>
		<span class="form_label">Tên danh mục:</span>
		<span class="form_item">
			<select name="sltCate" class="select">
				<option value="">Chọn danh mục</option>
				<?php menuMulti ($cate,0,$str="---|",old('sltCate')) ?>
			</select>
		</span><br />
		<span class="form_label">Tiêu đề tin:</span>
		<span class="form_item">
			<input type="text" name="txtTitle" class="textbox" value="{!! old('txtTitle') !!}" />
		</span><br />
		<span class="form_label">Tác gỉả:</span>
		<span class="form_item">
			<input type="text" name="txtAuthor" class="textbox" value="{!! old('txtAuthor') !!}" />
		</span><br />
		<span class="form_label">Trích dẫn:</span>
		<span class="form_item">
			<textarea name="txtIntro" rows="5" class="textbox">{!! old('txtIntro') !!}</textarea>
			<script type="text/javascript">
				var editor = CKEDITOR.replace('txtIntro',{
					language:'vi',
					filebrowserImageBrowseUrl : '../../public/qt64_admin/templates/js/plugin/ckfinder/ckfinder.html?Type=Images',
					filebrowserFlashBrowseUrl : '../../public/qt64_admin/templates/js/plugin/ckfinder/ckfinder.html?Type=Flash',
					filebrowserImageUploadUrl : '../../public/qt64_admin/templates/js/plugin/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
					filebrowserFlashUploadUrl : '../../public/qt64_admin/templates/js/plugin/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
				});
			</script>
		</span><br />
		<span class="form_label">Nội dung tin:</span>
		<span class="form_item">
			<textarea name="txtFull" rows="8" class="textbox">{!! old('txtFull') !!}</textarea>
			<script type="text/javascript">
				var editor = CKEDITOR.replace('txtFull',{
					language:'vi',
					filebrowserImageBrowseUrl : '../../public/qt64_admin/templates/js/plugin/ckfinder/ckfinder.html?Type=Images',
					filebrowserFlashBrowseUrl : '../../public/qt64_admin/templates/js/plugin/ckfinder/ckfinder.html?Type=Flash',
					filebrowserImageUploadUrl : '../../public/qt64_admin/templates/js/plugin/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
					filebrowserFlashUploadUrl : '../../public/qt64_admin/templates/js/plugin/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
				});
			</script>
		</span><br />
		<span class="form_label">Hình đại diện:</span>
		<span class="form_item">
			<input type="file" name="newsImg" class="textbox" />
		</span><br />
		<span class="form_label">Công bố tin:</span>
		<span class="form_item">
			<input type="radio" name="rdoPublic" value="1" checked="checked"
			@if (old('rdoPublic') == "1")
				checked
			@endif
			 /> Có 
			<input type="radio" name="rdoPublic" value="0" 
			@if (old('rdoPublic') == "0")
				checked
			@endif
			/> Không
		</span><br />
		<span class="form_label"></span>
		<span class="form_item">
			<input type="submit" name="btnNewsAdd" value="Thêm tin" class="button" />
		</span>
	</fieldset>
</form>
@endsection