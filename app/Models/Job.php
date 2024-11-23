<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Job extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function jobType(): BelongsTo
    {
        return $this->belongsTo(JobType::class);
    }
    public function category(): BelongsTo
    {
        return $this->belongsTo(Category::class);
    }
    public function applicationsCount(): HasMany
    {
        return $this->hasMany(JobApplication::class);
    }
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

}
