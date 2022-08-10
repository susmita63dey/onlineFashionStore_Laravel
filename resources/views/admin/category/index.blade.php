@extends('layouts.admin')

@section('content')
	<div class="card">
		<div class="card-header">
			<h4>Category Page</h4>
		</div>
		<div class="card-body">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Slug</th>
						<th>Descriptions</th>
						<th>Status</th>
						<th>Popular</th>
						<th>Image</th>
						<th>Meta Title</th>
						<th>Meta Descriptions</th>
						<th>Meta Keywords</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					@foreach($category as $item)
						<tr>
							<td>{{ $item->id }}</td>
							<td>{{ $item->name }}</td>
							<td>{{ $item->slug }}</td>
							<td>{{ $item->descriptions }}</td>
							<td>{{ $item->status }}</td>
							<td>{{ $item->popular }}</td>
							<td><img src="{{ asset('assets/uploads/category/'.$item->image) }}" class="cate-image" alt="Image"></td>
							<td>{{ $item->meta_title }}</td>
							<td>{{ $item->meta_descrip }}</td>
							<td>{{ $item->meta_keywords }}</td>
							<td>
								<a href="{{ url('edit-category/'.$item->id) }}" class="btn btn-warning">Edit</a>
								<a href="{{ url('delete-category/'.$item->id) }}" class="btn btn-danger">Delete</a>
							</td>
						</tr>
					@endforeach
				</tbody>
			</table>
		</div>
	</div>
@endsection