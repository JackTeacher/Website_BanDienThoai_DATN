@extends('user.layouts.app-other')
@section('content')
    <section class="wrapper forgot">
        <div>
            <img src="{{ asset('assets/user/images/Forgot-password.png') }}"/>
            <span style="margin-bottom:25px">Quên mật khẩu</span>
            <form href='/forgotpassword' method="post">
                @csrf
                <input type="text" name="username" placeholder="Nhập tên đăng nhập" required>
                <button type="submit" class="btn">Lấy lại mật khẩu</button>
            </form>
            <p class="login-account">Quay lại <a href="/signin"><span>Đăng nhập</span></a></p>
        </div>
    </section>
    @if (Session::has('thongbao'))
        <div class="popup active ketqua">
            <div class="bg-popup"></div>
            <div class="form-popup" style="width: auto">
                <div class="row-popup" style="text-align: center;">
                    <h3 style="color:green; font-size:25px">Thông báo</h3>
                </div>
                <h4 style="display:block;text-align: center; font-size:18px">{{ Session::get('thongbao') }}</h4>
                <p style="margin-top: 10px; text-align: center">
                    <button type="button" style="height:35px; width: 150px" class="btn btn-outline-secondary" onclick="closepopup()">Ok</button>
                </p>
            </div>
        </div>
    @endif

    {{-- Thông báo validate --}}
    @if ($errors->any())
        <div class="popup active ketqua">
            <div class="bg-popup"></div>
            <div class="form-popup" style="width: auto">
                <div class="row-popup" style="text-align: center;">
                    <h3 style="color:red; font-size:25px">Thông báo</h3>
                </div>
                @foreach ($errors->all() as $error)
                    <h4 style="display:block;text-align: center; font-size:18px">{{ $error }}</h4>
                @endforeach
                <p style="margin-top: 10px; text-align: center">
                    <button type="button" style="height:35px; width: 150px" class="btn btn-outline-secondary"
                        onclick="closepopup()">Ok</button>
                </p>
            </div>
        </div>
    @endif
    <script>
        const body = this.document.querySelector('body');
        //Đóng thông báo kết quả
        function closepopup() {
            const popup = this.document.querySelector('.popup.active.ketqua');
            popup.className = popup.className.replace(" active", "");
            body.style = "overflow: auto;";
        }
    </script>
@endsection
