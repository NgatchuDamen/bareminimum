<?php
namespace App\Models;
use CodeIgniter\Model;

class SongItemModel extends Model {

    protected $table      = 'song_items';
    protected $primaryKey = 'id';
    
    protected $returnType     = 'array';

    protected $allowedFields = ['text', 'sound', 'picture', 'video', 'song_id', 'created_at'];

    protected $validationRules    = [];

    protected $validationMessages = [];

    protected $skipValidation     = false;

     

}
