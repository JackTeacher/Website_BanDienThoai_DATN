<?php

namespace App\Http\Middleware;

use Illuminate\Support\Facades\Auth;
use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CheckPermissionStoreHouse 
{
    public function handle(Request $request, Closure $next): Response
    {
        if (Auth::user()->loai_tai_khoan_id == 1 || Auth::user()->loai_tai_khoan_id == 3) {
            return $next($request);
        }
        return redirect()->intended('/admin');
    }
}
