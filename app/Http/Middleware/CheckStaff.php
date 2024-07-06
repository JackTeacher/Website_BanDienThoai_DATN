<?php

namespace App\Http\Middleware;

use Illuminate\Support\Facades\Auth;
use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CheckStaff 
{
    public function handle(Request $request, Closure $next): Response
    {
        if (Auth::user()->loai_tai_khoan_id > 4) {
            return redirect()->intended('/');
        }
        return $next($request);
    }
}
