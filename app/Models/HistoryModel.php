<?php
namespace App\Models;
use CodeIgniter\Model;

class HistoryModel extends Model {

    protected $table      = 'history';
    protected $primaryKey = 'id';
    
    protected $returnType     = 'array';

    protected $allowedFields = ['action', 'user_id', 'created_at'];

    protected $validationRules    = [];

    protected $validationMessages = [];

    protected $skipValidation     = false;

     

}
