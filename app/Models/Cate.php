<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Cate extends Model
{
    protected $table = 'qt64_category';
    protected $guarded = [];

    public function news () {
    	return $this->hasMany('App\Models\News');
    }
}
