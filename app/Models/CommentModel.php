<?php
namespace App\Models;
use CodeIgniter\Model;

class CommentModel extends Model {

    protected $table      = 'comments';
    protected $primaryKey = 'id';
    
    protected $returnType     = 'array';

    protected $allowedFields = ['text', 'song_id', 'user_id', 'created_at'];

    protected $validationRules    = [];

    protected $validationMessages = [];

    protected $skipValidation     = false;

     

}
