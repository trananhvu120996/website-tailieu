@extends('admin.master')
@section('title','Tranh Chính')
@section('content')
<table class="function_table" style="margin: 0px auto;">
	<tr>
		<td class="function_item user_add"><a href="{!! route('getUserAdd') !!}">Thêm user</a></td>
		<td class="function_item user_list"><a href="{!! route('getUserList') !!}">Quản lý user</a></td>
		<td rowspan="3" class="statistics_panel">
			<h3>Thống kê:</h3>
			<ul>
				<li>Tổng số user: {!! $stas_user !!}</li>
				<li>Tổng số danh mục: {!! $stas_cate !!}</li>
				<li>Tổng số tin: {!! $stas_news !!}</li>
			</ul>
		</td>
	</tr>
	<tr>
		<td class="function_item cate_add"><a href="{!! route('getCateAdd') !!}">Thêm danh mục</a></td>
		<td class="function_item cate_list"><a href="{!! route('getCateList') !!}">Quản lý danh mục</a></td>
	</tr>
	<tr>
		<td class="function_item news_add"><a href="{!! route('getNewsAdd') !!}">Thêm tin</a></td>
		<td class="function_item news_list"><a href="{!! route('getNewsList') !!}">Quản lý tin</a></td>
	</tr>
</table>
@endsection