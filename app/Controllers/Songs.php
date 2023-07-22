<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Songs extends BaseController
{
    // show users list
    public function index(){
        return view('songs_view');
    }
    
    // show single song
    public function singleSong($id = null){
    }
    
    // show songs by Categories
    public function songsByCategory(){
    }
}
