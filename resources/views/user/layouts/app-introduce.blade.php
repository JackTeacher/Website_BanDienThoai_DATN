<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    <link rel="stylesheet" href="{{ asset('assets/user/css/style.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('assets/user/css/all.css') }}" type="text/css">
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('assets/admin/images/icon-logo.png') }}">
    <title>NQ Mobile</title>

</head>

<body style="background: #f8f8f8;">
    <header class="header">
        <div class="header-top">
            <section class="clearfix">
                <a href="/" class="header-logo">
                    <img src="{{ asset('assets/user/images/Logo-1.png') }}" width="120" height="70">
                </a>
            </section>
        </div>
    </header>
    @yield('content')
</body>
<footer class="footer">
    <section class="clearfix footer__top">
        <div class="footer-col">
            <ul class="f-listmenu">
                <li><a rel="nofollow" href="/introduce">Giới thiệu</a></li>
                <li><a rel="nofollow" href="/leadership">Người sáng lập</a></li>
                <li><a rel="nofollow" href="/feedback">Gửi góp ý, khiếu nại</a></li>
                <li><a rel="nofollow" href="/findstore">Tìm cửa hàng</a></li>
            </ul>
        </div>
        <div class="footer-col" 
        style="height: 120px;width: 500px;margin-right: 100px;">
        {{--    <iframe
                src=""
                width="500" height="120" style="border:none;overflow:hidden" scrolling="no" frameborder="0"
                allowfullscreen="true"
                allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share">
                
            </iframe>
        --}}
        <img src="{{ asset('assets/user/images/Thanhtoan.png') }}" >
        </div>
        <div class="footer-col">
            <div class="f-certify">
                <a rel="nofollow" href="http://online.gov.vn/Home/WebDetails/20090" target="_blank">
                    <i class="icon-congthuong"></i>
                </a>
                <a rel="nofollow" href="/tos#giai-quyet-khieu-nai" target="_blank">
                    <i class="icon-khieunai"></i>
                </a>
                <a rel="nofollow" class="dmca-badge"
                    href="https://www.dmca.com/Protection/Status.aspx?ID=5b62e759-2a0c-4d86-b972-af903bfbc89d&amp;refurl=https://www.thegioididong.com/dtdd/oppo-reno6-z-5g"
                    target="_blank">
                    <i class="icon-protected"></i>
                </a>
                <a class="_ncsc" rel="nofollow"
                    href="https://tinnhiemmang.vn/danh-ba-tin-nhiem/thegioididongcom-1632835473"
                    title="Chung nhan Tin Nhiem Mang" target="_blank">
                    <img class=" lazyloaded" width="150" alt="Chung nhan Tin Nhiem Mang"
                        src="{{ asset('assets/user/images/handle_cert.png') }}">
                </a>
            </div>
        </div>
        <div style="display: inline-block">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.66531811793!2d105.74656047400964!3d21.046073387186066!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454ee780c4dc9%3A0xdf6e3b3d515796c8!2zMTg1IMSQLiBD4bqndSBEaeG7hW4sIFBow7pjIERp4buFbiwgTmFtIFThu6sgTGnDqm0sIEjDoCBO4buZaSwgVmlldG5hbQ!5e0!3m2!1sen!2s!4v1715575100161!5m2!1sen!2s" width="250" height="250" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>

    </section>
    <div class="copyright">
        <section>
            <p>
                © 2024. NQ Mobile. GPDKKD: 099999999 do sở KH &amp; ĐT TP.Hà Nội cấp ngày 01/01/2024. GPMXH: 238/GP-BTTTT
                do Bộ Thông Tin và Truyền Thông cấp ngày 01/01/2024.<br>
                Địa chỉ: TP.Hà Nội. Điện thoại: 0123456789. Email: NQMobile@gmail.com. Chịu trách nhiệm nội dung:
                Lương Ngọc Quảng.
            </p>
        </section>
    </div>
</footer>

</html>
