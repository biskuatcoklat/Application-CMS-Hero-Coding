@extends('dashboard.layouts.main')

@section('container')
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <div class="container">
            <div class="row my-3">
                <div class="col-lg-8">
                    <h1 class="mb-3">{{ $post->title }}</h1>
                    <a href="/dashboard/posts" class="btn btn-success"><span data-feather="arrow-left"></span> Back to Page Post</a>
                    <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning"><span data-feather="edit"></span> Edit</a>
                    <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
                        @method('delete')
                        @csrf
                        <button class="btn btn-danger" onclick="return confirm('Are you sure want Delete this')"><span data-feather="x-circle"></span> Delete</button>
                      </form>
                    
                    @if ($post->image)
                    {{-- <div style="max-height: 350px">
                        <img src ="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid mt-3">    
                    </div> --}}
                    <img src ="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid mt-3">    
                    @else
                    <img src ="https://source.unsplash.com/1200x400?{{ $post->category->name }}" alt="{{ $post->category->name }}" class="img-fluid mt-3">
                    @endif
                    
                    <article class="my-3 fs-5">
                        {!! $post->body !!}
                    </article> 
                </div>
            </div>
        </div>
    </div>
</main> 
@endsection