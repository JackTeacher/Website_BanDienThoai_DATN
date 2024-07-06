<?php

namespace App\Http\Middleware;
use Illuminate\Support\Facades\Auth;
use Closure;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Http\Request;


class CheckLogout 
{
    public function handle(Request $request, Closure $next): Response
    {
        if(Auth::guest()){
            return redirect()->intended('/signin');
        }
        return $next($request);
    }
}
