<?php

namespace App\Http\Middleware;
use Illuminate\Support\Facades\Auth;
use Closure;
use Illuminate\Cookie\Middleware\EncryptCookies;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

// use Illuminate\Cookie\Middleware\EncryptCookies as Middleware;

class CheckUser 
{
    public function handle(Request $request, Closure $next): Response
    {
        if(Auth::check()){
            if(Auth::user()->loai_tai_khoan_id <5){
                return redirect()->intended('/admin');
            }
            return redirect()->intended('/');
        }
        return $next($request);
    }
}
