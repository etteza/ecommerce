@extends('admin.layout.app')
@section('admin_content')
    <div class="sl-mainpanel">
      <div class="sl-pagebody">
        <div class="sl-page-title">
          <h5> Orders Details</h5>
        </div><!-- sl-page-title -->

        <div class="card pd-20 pd-sm-40">
          <h6 class="card-body-title">Orders List </h6>
          <br>
          <div class="table-responsive">
            <table id="datatable1" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th class="wd-15p">Payment Type</th>
                  <th class="wd-15p">Transection ID</th>
                  <th class="wd-15p">Subtotal</th>
                  <th class="wd-20p">Shipping</th>
                  <th class="wd-20p">Total</th>
                   <th class="wd-20p">Date</th>
                   <th class="wd-20p">Return</th>
                   <th class="wd-20p">Action</th>
                </tr>
              </thead>
              <tbody>
                @foreach($order as $row)
                <tr>
                  <td>{{ $row->payment_type }}</td>
                  <td>{{ $row->blnc_transection }}</td>
                  <td>{{ $row->subtotal }} TK</td>
                  <td>{{ $row->shipping }} TK</td>
                  <td>{{ $row->total }} TK</td>
                  <td>{{ $row->date }} </td>
                  <td>
                    @if($row->return_order == 1)
                     <span class="badge badge-warning">Pending</span>
                    @elseif($row->status == 2)
                    <span class="badge badge-success">Success</span>
                     @endif

                  <td>

                  	<a href="{{ URL::to('admin/approve/return/'.$row->id) }}" class="btn btn-sm btn-info">Approve</a>
                  </td>
                </tr>
                @endforeach
              </tbody>
            </table>
          </div><!-- table-wrapper -->
        </div><!-- card -->
      </div><!-- sl-pagebody -->



@endsection
