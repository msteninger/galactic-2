<?php

/**
 * model for the content posts
 */
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{

    protected $table = 'post';

    protected $primaryKey = 'post_id';

    use HasFactory;

    /**
     * author relationship
     */
    public function author()
    {
        return $this->hasOne(Author::class, 'author_id', 'author_id');
    }
}
