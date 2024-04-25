<?php
/**
 * model for the authors table
 */
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Author extends Model
{
    protected $table = 'author';

    protected $primaryKey = 'author_id';

    use HasFactory;
}
