@extends('layouts.backend.app')

@section('title','Tag')

@push('css')

    @endpush

@section('content')
    <div class="container-fluid">
        <!-- Vertical Layout -->
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            ADD NEW TAG
                        </h2>
                    </div>
                    <div class="body">
                        {{ Form::open(['route'=>'admin.tag.store']) }}
                        @include('admin.tags.form')
                            <br>
                        <a class="btn btn-danger m-t-15 waves-effect" href="{{ route('admin.tag.index') }}">Back</a>
                        {{ Form::submit('Save Tag',['class'=>'btn btn-primary m-t-15 waves-effect']) }}
                            {{--<button type="button" class="btn btn-primary m-t-15 waves-effect">SUBMIT</button>--}}
                        {{ Form::close() }}
                    </div>
                </div>
            </div>
        </div>
    @endsection

@push('js')

    @endpush