@extends('admin.master')
@section('title','Tin Tức')
@section('content')
<table class="list_table">
	<tr class="list_heading">
		<td class="id_col">STT</td>
		<td>Tiêu Đề</td>
		<td>Tác Giả</td>
		<td>Thời Gian</td>
		<td class="action_col">Quản lý?</td>
	</tr>
    <?php $stt = 0; ?>
    @foreach($news as $item)
    <?php $stt++; ?>
	<tr class="list_data">
        <td class="aligncenter">{!! $stt !!}</td>
        <td class="list_td aligncenter">{!! $item["title"] !!}</td>
        <td class="list_td aligncenter">{!! $item["author"] !!}</td>
		<td class="list_td aligncenter">
		{{-- http://www.tisuchi.com/php-date-time-customization-carbon/ --}}
		<?php \Carbon\Carbon::setLocale('vi') ?>
		{!! \Carbon\Carbon::createFromTimeStamp(strtotime($item["created_at"]))->diffForHumans() !!}
		</td>
        <td class="list_td aligncenter">
            <a href="{!! route('getNewsEdit',['id'=>$item["id"]]) !!}"><img src="{!! asset('public/qt64_admin/templates/images/edit.png') !!}" /></a>&nbsp;&nbsp;&nbsp;
            <a href="{!! route('getNewsDel',['id'=>$item["id"]]) !!}" onclick="return xacnhanxoa('Bạn Có Chắc Muốn Xóa Tin Tức Này')"><img src="{!! asset('public/qt64_admin/templates/images/delete.png') !!}" /></a>
        </td>
    </tr>
	@endforeach
</table>
@endsection
	