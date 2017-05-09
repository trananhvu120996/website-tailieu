<?php

namespace App\Http\Controllers\User;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\News;
use App\Models\Cate;
use DB;
class MainController extends Controller
{
    public function getIndex () {
    	$data = News::with('cate')->orderBy(DB::raw('RAND()'))->limit(10)->get()->toArray();
    	return view('user.pages.index',['data' => $data]);
    }

    public function getCate ($id) {
        $cate = Cate::select('name')->where('id',$id)->first()->toArray();
        $news = News::where('category_id',$id)->orderBy('id','DESC')->get()->toArray();
    	return view('user.pages.cate',['cate' => $cate , 'news' => $news]);
    }

    public function getDetail ($id) {
        $data = News::with('cate')->where('id',$id)->first()->toArray();
    	return view('user.pages.detail',['data' => $data]);
    }
}
