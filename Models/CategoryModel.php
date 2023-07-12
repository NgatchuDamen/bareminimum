<?php
namespace App\Models;
use CodeIgniter\Model;

class CategoryModel extends Model {

    protected $table      = 'categories';
    protected $primaryKey = 'id';
    
    protected $returnType     = 'array';

    protected $allowedFields = ['title', 'description', 'created_at'];

    protected $validationRules    = [];

    protected $validationMessages = [];

    protected $skipValidation     = false;

     

}
