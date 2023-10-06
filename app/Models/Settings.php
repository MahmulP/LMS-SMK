<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Settings extends Model
{
    use HasFactory;

    protected $table = 'settings';

    protected $fillable = ['nama_sekolah','singkatan_sekolah', 'deskripsi_sekolah', 'logo_sekolah'];

}
