@extends('layouts.backend.app')

@section('title','Category')

@push('css')

    @endpush

@section('content')
    <div class="container-fluid">
        <!-- Vertical Layout -->
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            ADD NEW CATEGORY
                        </h2>
                    </div>
                    <div class="body">
                        {{ Form::open(['route'=>'admin.category.store','files'=>true]) }}
                        @include('admin.category.form')
                            <br>
                        <a class="btn btn-danger m-t-15 waves-effect" href="{{ route('admin.category.index') }}">Back</a>
                        {{ Form::submit('Save Category',['class'=>'btn btn-primary m-t-15 waves-effect']) }}
                        {{ Form::close() }}
                    </div>
                </div>
            </div>
        </div>
    @endsection

@push('js')

    @endpush