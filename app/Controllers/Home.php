<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
        $data['page'] = 'Home';
        $data['menu'] = ['Home' => url_to('/'),
        'Songs' => url_to('categories'),
        'Contact' => url_to('contact'),
        'Help' => url_to('help')];

        return view ('common/header_view', $data)
        . view('home_view')
        . view('common/prefooter_view')
        . view('common/footer_view');
    }

    public function contact(){
        $data['page'] = 'Contact us !';
        $data['menu'] = ['Home' => url_to('/'),
        'Songs' => url_to('categories'),
        'Contact' => url_to('contact'),
        'Help' => url_to('help')];

        return view ('common/header_view', $data)
        . view('contact_view')
        . view('common/prefooter_view')
        . view('common/footer_view');
    }

    public function help(){
        $data['page'] = 'Help !';
        $data['menu'] = ['Home' => url_to('/'),
        'Songs' => url_to('categories'),
        'Contact' => url_to('contact'),
        'Help' => url_to('help')];

        return view ('common/header_view', $data)
        . view('help_view')
        . view('common/prefooter_view')
        . view('common/footer_view');

    }
}
