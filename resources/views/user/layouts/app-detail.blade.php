<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    <link rel="stylesheet" href="{{ asset('assets/user/css/style.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('assets/user/css/all.css') }}" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link href="{{ asset('assets/admin/libs/datatables.net-bs4/css/dataTables.bootstrap4.css') }}" rel="stylesheet">
    {{-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script> --}}
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.7.1.min.js"></script>
    {{-- <script src="{{ asset('assets/user/js/jquery-1.4.4.min.js') }}" type="text/javascript"></script> --}}
    <script src="{{ asset('assets/user/js/j360.js') }}" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            jQuery('#three-d-degree-image').j360();
        });
    </script>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('assets/admin/images/icon-logo.png') }}">
    <title>NQ Mobile</title>
</head>

<body>
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <div class="nav-bar">
        <div>
            <a href="/" class="nav-bar-logo"><img src="{{ asset('assets/user/images/Logo-1.png') }}" /></a>
            <div class="bordercol"></div>
            <form action="{{ route('resultSearch') }}" class="nav-bar-search" method='get'>
                <input type="text" class="" placeholder="Nhập tên điện thoại bạn cần tìm..." maxlength="100"
                    name='search' autocomplete="off" id='search' onkeyup="suggestSearch()">
                <button type="submit"><i class="fas fa-search"></i></button>
                <div id="search-result" style="display: none;">
                    <ul class="suggest_search">
                        <li class="ttitle">
                            <div class="viewed">Có phải bạn muốn tìm</div>
                        </li>
                    </ul>
                </div>
            </form>
            @if (Session('Cart') == null)
                <a href="/cart" class="nav-bar-cart">
                    <i class="icon-cart"></i>
                    <span>Giỏ hàng</span>
                </a>
            @else
                <?php
                $soLuong = 0;
                foreach (Session('Cart')->products as $tp) {
                    $soLuong += $tp['quantity'];
                }
                ?>
                <a href="/cart" class="nav-bar-cart active">
                    <i class="icon-cart">{{ $soLuong }}</i>
                    <span>Giỏ hàng</span>
                </a>
            @endif

            <div class="nav-bar-space"></div>
            <div class="bordercol"></div>
            @if (Auth::guest())
                <a href="/signin" class="nav-bar-signin">
                    <span><i class="fa-solid fa-right-to-bracket"></i> Đăng nhập</span>
                </a>
                <div class="bordercol"></div>
                <a href="/signup" class="nav-bar-signup">
                    <span><i class="fa-solid fa-user-plus"></i> Đăng ký</span>
                </a>
            @else
                <ul class="navbar-nav float-end">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="#"
                            id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="{{ asset('assets/admin/images/users/user.png') }}" alt="user"
                                class="rounded-circle" width="40">
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end user-dd animated" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="/accountinformation"><i class="fa-solid fa-user"></i>
                                Thông tin của tôi</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/ordermanagement"><i class="fa-solid fa-bag-shopping"></i>
                                Đơn hàng của tôi</a>
                            <div class="dropdown-divider"></div>
                            @if (Auth::user()->loai_tai_khoan_id == 5)
                                <a class="dropdown-item" href="/thayDoiMatKhau"><i class="fa-solid fa-key"></i>
                                    Đổi
                                    mật khẩu</a>
                            @endif
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/logout"><i class="fa fa-power-off me-1 ms-1"></i> Đăng
                                xuất</a>
                        </ul>
                    </li>
                </ul>
            @endif
        </div>
    </div>
    @yield('content')

    <!-- ============================================================== -->
    <!--Custom JavaScript -->
    {{-- <script type="text/javascript" src="https://code.jquery.com/jquery-1.7.1.min.js"></script> --}}
    <script>
        $(function() {
            $(".preloader").fadeOut();
        });
    </script>
    <a href="https://m.me/270343406171588" target="_blank">
        <div style="height: 50px;width: 50px;position: fixed;inset: auto 0px 123px 1280px;cursor: pointer;">
            <img src="{{ asset('assets/user/images/chat-messenger.png') }}" width="50" height="50">
        </div>
    </a> 
    <a href="https://zalo.me/0774323623" target="_blank">
        <div style="height: 50px;width: 50px;position: fixed;inset: auto 0px 50px 1280px;cursor: pointer;">
            <img src="{{ asset('assets/user/images/Logo.svg') }}" width="50" height="50">
        </div>
    </a>
    {{-- <div style="position: absolute; bottom: 90px">
        <div class="zalo-chat-widget" data-oaid="2920828326549610293"
            data-welcome-message="Rất vui khi được hỗ trợ bạn!" data-autopopup="0" data-width="" data-height=""></div>
    </div>

    <script src="https://sp.zalo.me/plugins/sdk.js"></script> --}}
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
                do Bộ Thông Tin và Truyền Thông cấp ngày 01/01/2022.<br>
                Địa chỉ: TP.Hà Nội. Điện thoại: 0123456789. Email: NQMobile@gmail.com. Chịu trách nhiệm nội dung:
                Lương Ngọc Quảng.
            </p>
        </section>
    </div>
</footer>
<script src="{{ asset('assets/admin/libs/bootstrap/dist/js/bootstrap.bundle.min.js') }}"></script>
<!-- JavaScript -->
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

<!-- CSS -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css" />
<!-- Default theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css" />
<!-- Semantic UI theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css" />
<!-- Bootstrap theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css" />

<!-- Table js -->
<script src="{{ asset('assets/admin/extra-libs/multicheck/datatable-checkbox-init.js') }}"></script>
<script src="{{ asset('assets/admin/extra-libs/multicheck/jquery.multicheck.js') }}"></script>
<script src="{{ asset('assets/admin/extra-libs/DataTables/datatables.min.js') }}"></script>
<script>
    /****************************************
     *       Basic Table                   *
     ****************************************/
    $('#zero_config').DataTable();
    $('#one_config').DataTable();
</script>
<script>
    function suggestSearch() {
        var searchResult = document.getElementById('search-result');
        searchResult.style = 'display:block';
        var value = $('#search').val();
        if (value == '') {
            searchResult.style = 'display:none';
        } else {
            $.ajax({
                type: 'get',
                url: '{{ URL::to('suggestSearch') }}',
                data: {
                    'search': value,
                },
                success: function(data) {
                    $('.suggest_search').html(data);
                },
            });
        }
    }
    $(document).click(function() {
        document.getElementById('search-result').style = 'display:none';
    });
</script>
</html>
