
{{ Form::label('title','Post Title') }}
<div class="form-group form-float">
    <div class="form-line">
        {{ Form::text('name',null,['class'=>'form-control','placeholder'=>'Enter Post Title Name']) }}
    </div>
</div>

    {{ Form::label('image','Featured Image') }}
    <div class="form-group">
            {{ Form::file('image') }}
    </div>

{{ Form::label('status','Publish') }}
    <div class="form-group">
        {{ Form::checkbox('name', 'value', true,['class'=>'filled-in'])}}
    </div>