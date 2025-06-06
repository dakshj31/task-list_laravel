@extends('layouts.app')

 {{-- @section('title', 'Edit Task')
    
@section('styles')
<style>
    .error-message{
        color: red;
        font-size: 0.8rem;
    }
</style> 
@endsection --}}

@section('content')
 {{-- <form method="POST" action="{{route('tasks.update', ['task' => $task->id])}}">
    @csrf
    @method('PUT')
    <div>
        <label for="title">
            Title
        </label>
        <input type="text" name="title" id="title" value="{{$task->title}}">
        @error('title')
            <p class="error-message">{{$message}}</p>
        @enderror
    </div>

    <div>
        <label for="description">Description</label>
        <textarea name="description" id="description" cols="30" rows="10">{{$task->description}}</textarea>
        @error('description')
            <p class="error-message">{{$message}}</p>
        @enderror
    </div>

    <div>
        <label for="long_description">Long Description</label>
        <textarea name="long_description" id="long_description" cols="30" rows="20">{{$task->long_description}}</textarea>
        @error('long_description')
            <p class="error-message">{{$message}}</p>
        @enderror
    </div>

    <div>
        <button type="submit">Edit Task</button>
    </div>
</form>  --}}

@include('form', ['task' => $task])

@endsection