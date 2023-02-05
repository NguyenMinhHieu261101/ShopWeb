@extends('admin::layouts.master')
@section('content')
<div class="page-header">
  <ol class="breadcrumb">
    <li><a href="#">Trang chủ</a></li>
    <li><a href="#">Danh mục</a></li>
    <li class="active">Danh sách</li>
  </ol>
</div>
<div class="table-responsive">
  <h2>Quản lý danh mục <a href="{{ route('admin.get.create.category')}}" class="pull-right"><i class="fa-solid fa-circle-plus"></i></a></h2>
  <table class="table table-striped">
    <thead>
      <tr>
        <th>#</th>
        <th>Tên danh mục</th>
        <th>Title Seo</th>
        <th>Trạng thái</th>
        <th>Thao tác</th>
      </tr>
    </thead>
    <tbody>
      @if(isset($category)){
      @foreach($category as $category)
      <tr>
        <td>{{$category->id}}</td>
        <td>{{$category->c_name}}</td>
        <td>{{$category->c_title_seo}}</td>
        <td>
          <a href="{{ route('admin.get.action.category',['active', $category->id])}}" class="label {{$category->getStatus($category->c_active)['class']}}">{{$category->getStatus($category->c_active)['name']}}</a>

        </td>
        <td>
          <a style ="padding:5px 10px; border: 1px solid #999; font-size: 12px" href="{{route('admin.get.edit.category', $category-> id)}}"><i class="fa-solid fa-pen-to-square"></i>Cập nhật</a>
          <a style ="padding:5px 10px; border: 1px solid #999; font-size: 12px" href="{{route('admin.get.action.category', ['delete',$category->id])}}"><i class="fa-solid fa-trash"></i>Xoá</a>
        </td>
      </tr>
      @endforeach
      @endif
      }

    </tbody>
  </table>
</div>
@stop