<?php

namespace App\Http\Middleware;
use Illuminate\Support\Facades\Auth;
use Closure;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Http\Request;
use Illuminate\Cookie\Middleware\EncryptCookies as Middleware;

class CheckPermissionStore
{
    public function handle(Request $request, Closure $next): Response
    {
        if (Auth::user()->loai_tai_khoan_id == 1 || Auth::user()->loai_tai_khoan_id == 2) {
            return $next($request);
        }
        return redirect()->intended('/admin');
    }
}
