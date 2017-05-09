<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    protected $table = 'qt64_news';
    protected $guarded = [];

    public function cate () {
    	return $this->belongsTo('App\Models\Cate','category_id');
    }

    public function user () {
    	return $this->belongsTo('App\Models\User');
    }
}
