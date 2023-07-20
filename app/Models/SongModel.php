<?php
namespace App\Models;
use CodeIgniter\Model;

class SongModel extends Model {

    protected $table      = 'songs';
    protected $primaryKey = 'id';
    
    protected $returnType     = 'array';

    protected $allowedFields = ['author', 'musician', 'title', 'status', 'categories_id', 'created_at'];

    protected $validationRules    = [];

    protected $validationMessages = [];

    protected $skipValidation     = false;

     

}
