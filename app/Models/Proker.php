<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Proker extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = "proker";
    protected $fillable = ['id_mawa', 'jenis_kegiatan', 'kategori_kegiatan', 'skim_kegiatan', 'judul_kegiatan', 'NIM', 'kontak_pic', 'mulai', 'selesai', "sumber_dana", 'jumlah_dana', 'file_RAB'];
}