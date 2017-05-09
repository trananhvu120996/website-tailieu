@extends('admin.master')
@section('title','Danh Mục')
@section('content')
<table class="list_table">
    <tr class="list_heading">
        <td>Danh Mục</td>
        <td class="action_col">Quản lý?</td>
    </tr>
    <?php listCate ($data) ?>
</table>
@endsection