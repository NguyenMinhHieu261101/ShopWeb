@extends('admin::layouts.master')
@section('content')
<div class="page-header">
  <ol class="breadcrumb">
    <li><a href="#">Trang chủ</a></li>
    <li><a href="#">Sản phẩm</a></li>
    <li class="active">Danh sách</li>
  </ol>
</div>
<div class="row">
    <div class="col-sm-12">
    <form class="form-inline" action="" style="margin-bottom: 20px;">
    <div class="form-group">
      <input type="text" class="form-control" id="email" placeholder="Tên sản phẩm..."  name="name" value="{{\Request::get('name')}}">
    </div>
    <div class="form-group">
      <select name="cate" id="" class="form-control">
        <option value="">Danh mục</option>
        @if (isset($categories))
        @foreach($categories as $category)
        <option value="{{$category->id}}" {{ \Request::get('cate') == $category->id ? "selected = 'selected'":"" }} > {{ $category->c_name }} </option>
        @endforeach
        @endif
      </select>
    </div>
    <button type="submit" class="btn btn-default"><i class="fa-solid fa-magnifying-glass"></i></button>
  </form>
    </div>
</div>
<div class="table-responsive">
  <h2>Quản lý sản phẩm <a href="{{ route('admin.get.create.product')}}" class="pull-right"><i class="fa-solid fa-circle-plus"></i></a></h2>
  <table class="table table-striped">
    <thead>
      <tr>
        <th>#</th>
        <th>Tên sản phẩm</th>
        <th>Loại sản phẩm</th>
        <th>Hình ảnh</th>
        <th>Trạng thái</th>
        <th>Nổi bật</th>
        <th>Thao tác</th>
      </tr>
    </thead>
    <tbody>
    @if(isset($products))
      @foreach($products as $product)
      <tr>
        <td>{{$product->id}}</td>
        <td>
          {{$product->pro_name}}
          <ul style="padding-left: 15px">
            <li><span><i class="fa-solid fa-sack-dollar"></i></span><span>12.000</span></li>
            <li><span><i class="fa-solid fa-sack-dollar"></i></span><span>0%</span></li>
          </ul>
        </td>
        <td>{{ isset($product->category->c_name) ? $product->category->c_name:'[N\A]'}}</td>
        <td>
          <img src="{{url('/uploads')}}/{{$product->pro_avatar}}" class="img img-responsive" style ="width: 80px; height: 80px";>
        </td>
        <td>
          <a href="{{ route('admin.get.action.product',['active', $product->id])}}" class="label {{$product->getStatus($product->pro_active)['class']}}">{{$product->getStatus($product->pro_active)['name']}}</a>
        </td>
        <td>
          <a href="{{ route('admin.get.action.product',['hot', $product->id])}}" class="label {{$product->getHot($product->pro_hot)['class']}}">{{$product->getHot($product->pro_hot)['name']}}</a>
        </td>
        <td>
          <a style ="padding:5px 10px; border: 1px solid #999; font-size: 12px" href="{{route('admin.get.edit.product', $product-> id)}}"><i class="fa-solid fa-pen-to-square"></i>Cập nhật</a>
          <a style ="padding:5px 10px; border: 1px solid #999; font-size: 12px" href="{{route('admin.get.action.product', ['delete',$product->id])}}"><i class="fa-solid fa-trash"></i>Xoá</a>
        </td>
      </tr>
      @endforeach
      @endif
      
    </tbody>
  </table>
</div>
@stop