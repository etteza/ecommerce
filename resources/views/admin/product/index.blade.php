@extends('admin.layout.app')
@section('title','Product List')
@section('admin_content')
  <!-- ########## START: MAIN PANEL ########## -->
    <div class="sl-mainpanel">
      <nav class="breadcrumb sl-breadcrumb">
        <a class="breadcrumb-item" href="{{ url('admin/home') }}">Dashboard</a>
        <span class="breadcrumb-item active">Product List</span>
      </nav>
      <div class="sl-pagebody">
        <div class="sl-page-title">
          <h5>Product List </h5>
        </div><!-- sl-page-title -->

        <div class="card pd-20">
          <div class="table-responsive">
            <table id="datatable1" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>SN</th>
                  <th>Product Name</th>
                  <th>Product Code</th>
                  <th>Image</th>
                  <th>Price</th>
                  <th>Quantity</th>
                  <th>Customer Point</th>
                  <th>Category </th>
                  <th>Brand</th>
                  <th>Status</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                @php
                  $i = 1;
                @endphp
                @foreach($product as $row)
                <tr>
                  <td>{{ $i++ }}</td>
                  <td>{{ $row->product_name }}</td>
                  <td>{{ $row->product_code }}</td>
                  <td><img src="{{ URL::to($row->image_one) }}" height="50px;" width="50px;"></td>
                  <td><del>{{ $row->regular_price }}</del> <br/>{{ $row->selling_price }}</td>
                  <td>{{ $row->product_quantity }}</td>
                  <td>{{ $row->customer_poin }}</td>
                  <td>{{ $row->category_name }} ><br/>{{ $row->subcategory_name }}</td>
                  <td>{{ $row->brand_name }}</td>
                  <td>
                  	@if($row->status == 1)
                  	 <span class="badge badge-success">Active</span>
                  	@else
                  	<span class="badge badge-danger">Inactive</span>
                  	@endif
                  </td>
                  <td>
                  	<a href="{{ URL::to('edit/product/'.$row->id) }}" class="btn btn-sm btn-info"><i class="fa fa-edit"></i></a>
                  	<a href="{{ URL::to('delete/product/'.$row->id) }}" class="btn btn-sm btn-danger" id="delete"><i class="fa fa-trash"></i></a>
                  	<a href="{{ URL::to('view/product/'.$row->id) }}" class="btn btn-sm btn-warning" title="view"><i class="fa fa-eye"></i></a>

                  	@if($row->status == 1)
                  		<a href="{{ URL::to('inactive/product/'.$row->id) }}" class="btn btn-sm btn-danger" title="Inactive"><i class="fa fa-thumbs-down"></i></a>
                  	@else
                  		<a href="{{ URL::to('active/product/'.$row->id) }}" class="btn btn-sm btn-success" title="Active"><i class="fa fa-thumbs-up"></i></a>
                  	@endif

                  </td>

                </tr>
                @endforeach
              </tbody>
            </table>
          </div>
        </div><!-- card -->
      </div><!-- sl-pagebody -->
  </div>



@endsection
