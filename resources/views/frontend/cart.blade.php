@extends('layouts.front')

@section('title')
	My Cart
@endsection

@section('content')

	<div class="py-3 mb-4 shadow-sm bg-warning border-top">
		<div class="container">
			<h6 class="mb-0">
				<a href="{{ url('/')}}">
					Home
				</a> /
				<a href="{{ url('cart') }}">
					Cart
				</a> 
			</h6>
		</div>
	</div>

	<div class="container my-5">
		<div class="card shadow">
			<div class="card-body">
				@php $total = 0; @endphp
				@foreach($cartitems as $item)
					<div class="row product_data">
						<div class="col-md-2">
							<img src="{{ asset('assets/uploads/products/'.$item->products->image) }}" height="70px" width="70px" alt="Image Here">
						</div>
						<div class="col-md-3">
							<h6>{{ $item->products->name }}</h6>
						</div>
						<div class="col-md-2">
							<h6>Rs {{ $item->products->selling_price }}</h6>
						</div>
						<div class="col-md-3">
							<input type="hidden" class="prod_id" value="{{ $item->prod_id }}">
							<label for="Quantity">Quantity</label>
							<div class="input-group text-center mb-3">
								<button class="input-group-text changeQuantity decrement-btn">-</button>
								<input type="text" name="quantity" value="{{ $item->prod_qty }}" class="form-control text-center qty-input">
								<button class="input-group-text changeQuantity increment-btn">+</button>
							</div>
						</div>
						<div class="col-md-2 mt-4">
							<button class="btn btn-danger delete-cart-item"> <i class="fa fa-trash"></i> Remove</button>
						</div>
					</div>
					@php $total += $item->products->selling_price * $item->prod_qty; @endphp
				@endforeach
			</div>
			<div class="card-footer">
				<h6>Total Price : Rs {{ $total }}</h6>
			</div>
		</div>
	</div>
@endsection