<?php
namespace App\Models;
use CodeIgniter\Model;

class UserModel extends Model {

    protected $table      = 'users';
    protected $primaryKey = 'id';
    
    protected $returnType     = 'array';

    protected $allowedFields = ['username', 'password', 'contact', 'role', 'created_at'];

    protected $validationRules    = [];

    protected $validationMessages = [];

    protected $skipValidation     = false;

     

}
