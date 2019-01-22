@extends('layouts.backend.app')

@section('title','Post')

@push('css')
    <link href="{{ asset('assets/backend/plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css') }}" rel="stylesheet">
@endpush

@section('content')
    <div class="container-fluid">
        <div class="block-header">
            <a class="btn btn-primary waves-effect" href="{{ route('author.post.create') }}">
                <i class="material-icons">add</i>
                <span>Add Post</span>
            </a>
        </div>
        <!-- Exportable Table -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            All Posts
                            <span class="badge bg-info">{{ $posts->count() }}</span>
                        </h2>
                    </div>
                    <div class="body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Title</th>
                                    <th>Author</th>
                                    <th><i class="material-icons">visibility</i></th>
                                    <th>Is Approved</th>
                                    <th>Status</th>
                                    <th>Created At</th>
                                    <th>Action</th>
                                </tr>
                                </thead>

                                <tbody>
                                <tr>
                                    @foreach($posts as $key=>$post)
                                        <td>{{ $key +1 }}</td>
                                        <td>{{ str_limit($post->title,'15') }}</td>
                                        <td>{{ $post->user->name }}</td>
                                        <td>{{ $post->view_count}}</td>
                                        <td>
                                            @if($post->is_approved == true)
                                                <span class="badge bg-blue">Approved</span>
                                                @else
                                                <span class="badge bg-pink">Pending</span>
                                                @endif
                                        </td>
                                        <td>
                                            @if($post->status == true)
                                                <span class="badge bg-blue">Published</span>
                                            @else
                                                <span class="badge bg-pink">Pending</span>
                                            @endif
                                        </td>
                                        <td>{{ $post->created_at }}</td>
                                        <td class="text-center">
                                            <a href="{{ route('author.post.show',$post->id) }}"
                                               class="btn btn-info waves-effect">
                                                <i class="material-icons">visibility</i>
                                            </a>
                                            <a href="{{ route('author.post.edit',$post->id) }}"
                                               class="btn btn-info waves-effect">
                                                <i class="material-icons">edit</i>
                                            </a>
                                            {{--<button class="btn btn-danger waves-effect" type="button" onclick="return (confirm('Are you sure to Delete ?'){{ $post->id }})">
                                                <i class="material-icons">delete</i>
                                            </button>
                                            <form id="delete-form-{{ $post->id }}" action="{{ route('admin.post.destroy',$post->id) }}" method="POST" style="display: none;">
                                                @csrf
                                                @method('DELETE')
                                            </form>--}}
                                            {{ Form::open(['route'=>['author.post.destroy',$post->id],'method'=>'DELETE']) }}
                                            {{ Form::submit('Delete',['class'=>'btn btn-danger waves-effect','onclick'=>"return confirm('Are you confirm to Delete?')"]) }}
                                            {{ Form::close() }}

                                        </td>
                                </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- #END# Exportable Table -->
    </div>
@endsection

@push('js')
    <script src="{{ asset('assets/backend/plugins/jquery-datatable/jquery.dataTables.js') }}"></script>
    <script src="{{ asset('assets/backend/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js') }}"></script>
    <script src="{{ asset('assets/backend/plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js') }}"></script>
    <script src="{{ asset('assets/backend/plugins/jquery-datatable/extensions/export/buttons.flash.min.js') }}"></script>
    <script src="{{ asset('assets/backend/plugins/jquery-datatable/extensions/export/jszip.min.js') }}"></script>
    <script src="{{ asset('assets/backend/plugins/jquery-datatable/extensions/export/pdfmake.min.js') }}"></script>
    <script src="{{ asset('assets/backend/plugins/jquery-datatable/extensions/export/vfs_fonts.js') }}"></script>
    <script src="{{ asset('assets/backend/plugins/jquery-datatable/extensions/export/buttons.html5.min.js') }}"></script>
    <script src="{{ asset('assets/backend/plugins/jquery-datatable/extensions/export/buttons.print.min.js') }}"></script>
    <script src="{{ asset('assets/backend/js/pages/tables/jquery-datatable.js') }}"></script>

@endpush