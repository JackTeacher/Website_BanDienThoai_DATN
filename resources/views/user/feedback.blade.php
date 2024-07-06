@extends('user.layouts.app-detail')
@section('content')
    <div id="site-wrapper" class="container align-center clearfix">
        {{-- <section class="clearfix">
            <div class="wrapnavi">
                <div class="snapfilter">
                    <ul class="breacrumb">
                        <li typeof="v:Breadcrumb">
                            <a href="/" title="Trang chủ" rel="v:url" property="v:title"></a><span
                                class="iconarrow">›</span>
                        </li>
                        <li>
                            <h2>Liên hệ</h2>
                        </li>
                    </ul>
                </div>
            </div>
        </section> --}}
        <ul class="breadcrumb">
            <li>
                <a href="/">Trang chủ</a>
                <meta property="position" content="1">
            </li>
            <li>
                <span>›</span>
                <li style="vertical-align: bottom;">
                    <h2 style="font-size: 14px;">Liên hệ</h2>
                </li>
                <meta property="position" content="2">
            </li>
        </ul>
        <div id="site-body">
            <div class="clear"></div>
            <div id="contact-us-main" class="clearfix">
                <div class="contact-form relative">
                    <form method="post" id="contact-form">
                        <h1>NQ Mobile Xin Hân Hạnh Được Hỗ Trợ Quý Khách</h1>
                        <div class="the-form-wrapper">
                            <div class="topic-filter-wrapper clearfix">
                                <label for="topic-filter" style="display: inline;margin: 0;font-weight: 1 !important;">Quý
                                    khách đang quan tâm về: </label>
                                <strong class="required">*</strong>
                                <select id="topic-filter" class="topic-filter input-select-textarea-lienhe" name="topic"
                                    oninvalid="setCustomValidity('Vui lòng chọn chủ đề')">
                                    <option value="Tư vấn">Tư vấn</option>
                                    <option value="Khiếu nại - Phản ánh">Khiếu nại - Phản ánh</option>
                                    <option value="Hợp tác với NQ Mobile">Hợp tác với NQ Mobile</option>
                                    <option value="Góp ý cải tiến">Góp ý cải tiến</option>
                                </select>
                            </div>
                            <div class="row-wrapper clearfix">
                                <div class="label-wrapper">
                                    <label for="title" style="display: inline;margin: 0;font-weight: 1 !important;">Tiêu
                                        đề</label>
                                    <strong class="required">*</strong>
                                </div>
                                <div class="input-wrapper">
                                    <input class="input-select-textarea-lienhe" name="title" type="text">
                                </div>
                            </div>
                            <div class="row-wrapper clearfix">
                                <div class="label-wrapper">
                                    <label for="message" style="display: inline;margin: 0;font-weight: 1 !important;">Nội
                                        dung</label>
                                    <strong class="required">*</strong>
                                </div>
                                <div class="input-wrapper">
                                    <textarea name="message" id="message" style="border: 1px solid #ddd;"></textarea>
                                </div>
                            </div>
                            <div class="row-wrapper clearfix">
                                <div class="label-wrapper">
                                    <label for="fullname" style="display: inline;margin: 0;font-weight: 1 !important;">Họ và
                                        tên</label>
                                    <strong class="required">*</strong>
                                </div>
                                <div class="input-wrapper">
                                    <input name="fullname" class="input-select-textarea-lienhe" type="text">
                                </div>
                            </div>
                            <div class="row-wrapper clearfix">
                                <div class="label-wrapper">
                                    <label for="email" style="display: inline;margin: 0;font-weight: 1 !important;">Địa
                                        chỉ email</label>
                                    <strong class="required">*</strong>
                                </div>
                                <div class="input-wrapper">
                                    <input name="email" class="input-select-textarea-lienhe" type="email">
                                </div>
                            </div>
                            <div class="row-wrapper clearfix">
                                <div class="label-wrapper">
                                    <label for="tel" style="display: inline;margin: 0;font-weight: 1 !important;">Số
                                        điện thoại</label>
                                    <strong class="required">*</strong>
                                </div>
                                <div class="input-wrapper">
                                    <input name="phone" class="input-select-textarea-lienhe" type='tel'
                                        maxlength="10">
                                </div>
                            </div>
                        </div>
                        <div class="submit-wrapper">
                            <div class="dcap"><button class="submit submitForm" onclick="lienHe()" type="button">Gửi Liên
                                    Hệ</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="contact-info">

                    <h3>Thông Tin Liên Hệ Khác</h3>
                    <div class="quote">Tìm cửa hàng NQ Mobile? Xin mời ghé thăm trang <a href="/findstore"
                            title="Tìm cửa hàng" target="_blank">Tìm cửa
                            hàng</a> để xem bản đồ và địa chỉ các cửa hàng.</div>
                    <div class="content">
                        <p>Báo chí, hợp tác: liên hệ <a href="mailto:nqmobile@gmail.com">nqmobile@gmail.com</a></p>
                        <p>Tổng đài tư vấn, hỗ trợ khách hàng (7h30 đến 22h): <span class="tel">1800.1234 </span>hoặc
                            <span class="tel">024.1234.5678</span>
                        </p>
                        <p>Tổng đài khiếu nại: <span class="tel">1800.1234</span></p>
                        <p>Email: <a href="mailto:nqmobile@gmail.com">nqmobile@gmail.com</a></p>
                    </div>
                    <div class="with-map clearfix">
                        <div class="company-address-wrapper">
                            <div class="company-name">Cửa Hàng NQ Mobile</div>
                            <div class="company-address">
                                <p>185 Đ. Cầu Diễn, Phúc Diễn, Quận Bắc Từ Liêm, Thành phố Hà Nội</p>
                                <p>Địa chỉ Đăng ký kinh doanh: 185 Đ. Cầu Diễn, Phúc Diễn, Quận Bắc Từ Liêm, Thành phố Hà Nội
                                    </p>
                                <p>Điện thoại: <span class="tel">(024) 12 345 678</span></p>
                                <p>Fax: <span class="tel">024 12 345 678</span></p>
                            </div>
                        </div>
                        <div class="map-wrapper">
                            <iframe
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.6654433193644!2d105.74656047449815!3d21.046068380607686!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454ee780c4dc9%3A0xdf6e3b3d515796c8!2zMTg1IMSQLiBD4bqndSBEaeG7hW4sIFBow7pjIERp4buFbiwgTmFtIFThu6sgTGnDqm0sIEjDoCBO4buZaSwgVmlldG5hbQ!5e0!3m2!1sen!2s!4v1715765991795!5m2!1sen!2s"
                                width="400" height="340" frameborder="0" style="border:0"
                                allowfullscreen=""></iframe>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="loadingcover" style="display: none;" id="loading">
        <p class="csslder">
            <span class="csswrap">
                <span class="cssdot"></span>
                <span class="cssdot"></span>
                <span class="cssdot"></span>
            </span>
        </p>
    </div>
    <script>
        const loading = document.getElementsByClassName("loadingcover");

        function fadeOutEffect() {
            var fadeTarget = document.getElementById("loading");
            var fadeEffect = setInterval(function() {
                if (!fadeTarget.style.opacity) {
                    fadeTarget.style.opacity = 1;
                }
                if (fadeTarget.style.opacity > 0) {
                    fadeTarget.style.opacity -= 0.1;
                } else {
                    clearInterval(fadeEffect);
                    loading[0].style = "display:none";
                }
            }, 50);
        }

        function lienHe() {
            var topicFilter = document.getElementById("topic-filter").value;
            var title = $('input[name="title"]').val();
            var message = document.getElementById("message").value;
            var fullname = $('input[name="fullname"]').val();
            var email = $('input[name="email"]').val();
            var phone = $('input[name="phone"]').val();
            $.ajax({
                type: 'get',
                url: '{{ URL::to('lienHe') }}',
                data: {
                    'topicFilter': topicFilter,
                    'title': title,
                    'message': message,
                    'fullname': fullname,
                    'email': email,
                    'phone': phone,
                },
                success: function(data) {
                    document.getElementById("contact-form").reset();
                    alertify.success('Gửi liên hệ thành công !');
                },
                error: function(data) {
                    alertify.error(data.responseText);
                }
            });
            loading[0].style = "display:block";
            setTimeout(fadeOutEffect, 3000);
        }
    </script>
@endsection
