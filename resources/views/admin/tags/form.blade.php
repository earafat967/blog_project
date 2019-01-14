
{{--<label for="email_address">Name</label>--}}
{{ Form::label('name','Tag Name') }}
<div class="form-group">
    <div class="form-line">
        {{ Form::text('name',null,['class'=>'form-control','placeholder'=>'Enter Tag Name']) }}
        {{--<input type="text" id="email_address" class="form-control" placeholder="Enter your email address">--}}
    </div>
</div>