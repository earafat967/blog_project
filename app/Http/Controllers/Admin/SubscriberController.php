<?php

namespace App\Http\Controllers\Admin;

use App\Subscriber;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SubscriberController extends Controller
{
    public function index()
    {
        $data['subscribers'] = Subscriber::latest()->get();
        return view('admin.subscriber',$data);
    }
    public function destroy($id)
    {
         Subscriber::findOrFail($id)->delete();
        session()->flash('success','Subscriber deleted successfully');
        return redirect()->back();
    }
}
