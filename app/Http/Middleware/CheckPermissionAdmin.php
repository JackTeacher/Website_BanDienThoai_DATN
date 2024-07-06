<?php

namespace App\Http\Middleware;
use Illuminate\Support\Facades\Auth;
use Closure;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Http\Request;


class CheckPermissionAdmin 
{
    public function handle(Request $request, Closure $next): Response
    {
        if (Auth::user()->loai_tai_khoan_id != 1) {
            return redirect()->intended('/admin');
        }
        return $next($request);
    }
}
