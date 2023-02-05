<?php

namespace App\Models\Models;


use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'category';
    protected $guarded = [''];

    const STATUS_PUBLIC = 1;
    const STATIC_PRIVATE = 0;

    protected $status = [
        1=>[
            'name' => 'Public',
            'class' => 'label-danger'
        ],
        0=>[
            'name' => 'Private',
            'class' => 'label-default'
        ]
    ];

    public function getStatus()
    {
        return array_get($this->status, $this->c_active, '[N\A]');
    }
}
