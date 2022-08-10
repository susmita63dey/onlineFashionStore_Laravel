@extends('layouts.admin')

@section('content')
	<div class="card">
		<div class="card-header">
			<h4>Product Page</h4>
		</div>
		<div class="card-body">
			<table class="table table-responsive table-bordered table-striped">
				<thead>
					<tr>
						<th>Category</th>
				        <th>name</th>
				        <th>small_description</th>
				        <th>description</th>
				        <th>original_price</th>
				        <th>selling_price</th>
				        <th>image</th>
				        <th>qty</th>
				        <th>tax</th>
				        <th>status</th>
				        <th>trending</th>
				        <th>meta_title</th>
				        <th>meta_keywords</th>
				        <th>meta_description</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					@foreach($products as $item)
						<tr>
							<td>{{ $item->category->name }}</td>
							<td>{{ $item->name }}</td>
							<td>{{ $item->slug }}</td>
							<td>{{ $item->description }}</td>
							<td>{{ $item->original_price }}</td>
							<td>{{ $item->selling_price }}</td>
							<td><img src="{{ asset('assets/uploads/products/'.$item->image) }}" class="cate-image" alt="Image"></td>
							<td>{{ $item->qty }}</td>
							<td>{{ $item->tax }}</td>
							<td>{{ $item->status }}</td>
							<td>{{ $item->trending }}</td>
							<td>{{ $item->meta_title }}</td>
							<td>{{ $item->meta_description }}</td>
							<td>{{ $item->meta_keywords }}</td>
							<td>
								<a href="{{ url('edit-product/'.$item->id) }}" class="btn btn-warning btn-sm">Edit</a>
								<a href="{{ url('delete-product/'.$item->id) }}" class="btn btn-danger btn-sm">Delete</a>
							</td>
						</tr>
					@endforeach
				</tbody>
			</table>
		</div>
	</div>
@endsection