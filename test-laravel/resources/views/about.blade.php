@extends('layouts.main')

@section('container')
<h3>{{ $name }}</h3>
<p>{{ $email }}</p>
<img src="img/{{ $image }}" alt="{{ $name }}" width="100" class="img-thumbnail rounded-circle">
@endsection