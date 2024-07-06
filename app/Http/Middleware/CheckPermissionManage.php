<?php

namespace App\Http\Middleware;
use Illuminate\Support\Facades\Auth;
use Closure;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Http\Request;
use Illuminate\Cookie\Middleware\EncryptCookies as Middleware;

class CheckPermissionManage 
{
    public function handle(Request $request, Closure $next): Response
    {
        if (Auth::user()->loai_tai_khoan_id > 3) {
            return redirect()->intended('/admin');
        }
        return $next($request);
    }
}
