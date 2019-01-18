<?php

namespace App\Http\Controllers;
use App\Catg;
use App\Tag;

use Illuminate\Http\Request;

class CatgController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['tags'] =Tag::latest()->get();
        return view('admin.catg.index',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.catg.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'name'=>'required'
        ]);
        $tag = new Catg();
        $tag->name = $request->name;
        $tag->slug = str_slug($request->name);
        $tag->save();
        session()->flash('success','Catg insert successfully');
        return redirect()->route('admin.catg.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data['tag'] = Catg::findOrFail($id);
        return view('admin.catg.edit',$data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,[
            'name'=>'required'
        ]);
        $tag = Catg::findOrFail($id);
        $tag->name = $request->name;
        $tag->slug = str_slug($request->name);
        $tag->save();
        session()->flash('success','catg update successfully');
        return redirect()->route('admin.catg.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Catg::findOrFail($id)->delete();
        session()->flash('success','catg Deleted successfully');
        return redirect()->route('admin.catg.index');
    }
}
