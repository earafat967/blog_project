<?php

namespace App\Http\Controllers;

use App\Subscriber;
use Illuminate\Http\Request;

class SubscriberController extends Controller
{
    public function store(Request $request)
    {
        $this->validate($request,[
            'email' => 'required|email|unique:subscribers'
        ]);
        $subscriber = new Subscriber();
        $subscriber->email = $request->email;
        $subscriber->save();
        session()->flash('success','You successfully added our subscriber list');
        return redirect()->back();
    }
}
