@if(session()->has('success'))
    <div class="alert alert-success" role="alert">
        {{ session('success') }}
    </div>
@endif

@if(session()->has('error'))
    <div class="alert alert-danger" role="alert">
        <b style="color: red">{{ session('error') }}</b>
    </div>
@endif