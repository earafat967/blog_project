
{{ Form::label('name','Category Name') }}
<div class="form-group form-float">
    <div class="form-line">
        {{ Form::text('name',null,['class'=>'form-control','placeholder'=>'Enter Category Name']) }}
    </div>
</div>
<div class="form-group">
    {{ Form::file('image') }}
    {{--{{ Form::file('image',null,[$image_repuired]) }}--}}
</div>