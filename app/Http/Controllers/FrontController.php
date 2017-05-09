<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;

use App\Http\Controllers\Controller;

use App\Http\Requests\LoginRequest;

use Illuminate\Support\Facades\Auth;

use App\User;

use Illuminate\Pagination\Paginator;

class FrontController extends Controller
{

    public function index(){
       $menu = DB::table('loai_tai_lieu')->get();
       $search = DB::table('tai_lieu')->get();
       $top_view_1 = DB::table('tai_lieu')->select('id','ten','images')->where('ma_loai',1)->skip(0)->take(5)->get();
       $top_view_2 = DB::table('tai_lieu')->select('id','ten','images')->where('ma_loai',4)->skip(0)->take(5)->get();
       $books_news = DB::table('tai_lieu')->orderBy('id','desc')->skip(0)->take(12)->get();
       $toan = DB::table('tai_lieu')->where('ma_loai',1)->skip(0)->take(12)->get();
       $hoa = DB::table('tai_lieu')->where('ma_loai',3)->skip(0)->take(12)->get();
       $anh = DB::table('tai_lieu')->where('ma_loai',4)->skip(0)->take(12)->get();
       $books_all = DB::table('tai_lieu')->inRandomOrder()->skip(15)->take(24)->get();
        return view('pages.index',['menu'=>$menu,
                                    'search'=>$search,
                                    'top_view_1'=>$top_view_1,
                                     'top_view_2'=>$top_view_2,
                                     'books_news'=>$books_news,
                                     'toan'=>$toan,
                                     'hoa'=>$hoa,
                                     'anh'=>$anh,
                                     'books_all'=>$books_all,
                                    
                                    ]);
    }
    
    public function single($id){
        $menu = DB::table('loai_tai_lieu')->get();
        $search = DB::table('tai_lieu')->get();
         $description = DB::table('tai_lieu')->where('id',$id)->get();
         $kind = DB::table('tai_lieu')->select('ma_loai')->where('id',$id)->get();
         $same_kind = 0;
         foreach($kind as $value){
             $same_kind = $value->ma_loai;
         }
         $book_same_kind = DB::table('tai_lieu')->where('ma_loai',$same_kind)->get();
         $book_same_kind_new = DB::table('tai_lieu')->where('ma_loai',$same_kind)->orderBy('id','desc')->skip(0)->take(7)->get();
         $tags= DB::table('loai_tai_lieu')->get();
          return view('pages.single.single',['menu'=>$menu,
                                            'search'=>$search,
                                            'description'=>$description,
                                            'book_same_kind'=>$book_same_kind,
                                            'book_same_kind_new'=>$book_same_kind_new,
                                            'tags'=>$tags
                                            ]);
    }



    

    public function getLogin(){
         $menu = DB::table('loai_tai_lieu')->get();
        $search = DB::table('tai_lieu')->get();
        if(!Auth::check())
        {
            return view('pages.login.login',['menu'=>$menu,
                                             'search'=>$search,    
                                            ]);
        }else{
            //  trả trực típ về route : return redirect('admin');
            return redirect()->route('index');
        }
    }

    public function postLogin(LoginRequest $request){
        $login =[
            'email' => $request->email,
            'password' => $request->password
            ];
       if (Auth::attempt($login)) {
            // Authentication passed...
            return redirect()->route('index');
        }else{
            return redirect()->back();
        }
    }

    public function getLogout(){
        Auth::logout();
        return redirect()->route('index');
    }

    public function postSearch(Request $request){
         $menu = DB::table('loai_tai_lieu')->get();
        $search = DB::table('tai_lieu')->get();
        $books_news = DB::table('tai_lieu')->orderBy('id','desc')->skip(0)->take(5)->get();
        $tags= DB::table('loai_tai_lieu')->get();
        $ten=$request->get("browser");

        $book = DB::table("tai_lieu")->where("ten","like","%$ten%")->paginate(8);
        return view('pages.search.search',['menu'=>$menu,
                                            'search'=>$search,
                                            'book'=>$book,
                                            'books_news'=>$books_news,
                                            'tags'=>$tags,
                                            'ten'=>$ten
                                            ]);
    }

     public function books($id){
        $menu = DB::table('loai_tai_lieu')->get();
        $search = DB::table('tai_lieu')->get();
        $books_news = DB::table('tai_lieu')->orderBy('id','desc')->skip(0)->take(5)->get();
        $tags= DB::table('loai_tai_lieu')->get();
        $book = DB::table("tai_lieu")->where("ma_loai",$id)->paginate(8);
        $kind = DB::table('loai_tai_lieu')->where('id',$id)->get();
        return view('pages.search.search_product',['menu'=>$menu,
                                            'search'=>$search,
                                            'book'=>$book,
                                            'books_news'=>$books_news,
                                            'tags'=>$tags,
                                            ]);
    }






}
