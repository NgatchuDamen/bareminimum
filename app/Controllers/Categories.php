<?php

namespace App\Controllers;

use App\Models\CategoryModel;
use App\Controllers\BaseController;

class Categories extends BaseController
{
    // show users list
    public function index(){
        $categoryModel = new CategoryModel();
        $data['categories'] = $categoryModel->orderBy('id', 'DESC')->findAll();
        return view('categories_view', $data);
    }
}
