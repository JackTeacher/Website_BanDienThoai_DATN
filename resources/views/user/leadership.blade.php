@extends('user.layouts.app-introduce')
@section('content')
    <div class="tab">
        <ul class="tab-list">
            <li>
                <a href="/introduce">Giới thiệu chung</a>
            </li>
            <li class="active">
                <a href="/leadership">Người sáng lập</a>
            </li>
        </ul>
    </div>
    <div class="showtab">
        <div class="box-intro container1000">
            <div class="box-intro-list">
                <ul>
                    <li>
                        <div class="info">
                            <div class="info__img info__img--left">
                                <img src="{{ asset('assets/user/images/ngocquang.png') }}">
                            </div>
                            <div class="info__txt info__txt--right">
                                <h2 class="txt-name"><b>Lương Ngọc Quảng</b></h2>
                                <p class="txt-p">Sinh viên</p>
                            </div>
                        </div>
                        <div class="content-p">
                            <p></p>
                            <p>Lương Ngọc Quảng, sinh năm 2002, sinh viên của trường Đại học Công nghệ Đông Á ngành công
                                nghệ thông tin<span>. </span></p>
                            <p><span><br></span></p>
                            <p><span>Là thành viên của dự án NQ Mobile, có vai trò là lập trình viên</span><span>.</span>
                            </p>
                            <p></p>
                        </div>
                    </li>
                    {{-- <li>
                        <div class="info">
                            <div class="info__img info__img--left">
                                <img src="{{ asset('assets/user/images/hung.jpg') }}">
                            </div>
                            <div class="info__txt info__txt--right">
                                <h2 class="txt-name">Thầy <b>Nguyễn Văn A</b></h2>
                                <p class="txt-p">Giáo viên hướng dẫn</p>
                            </div>
                        </div>
                        <div class="content-p">
                            <p></p>
                            <p>
                                <font color="#444444" face="Roboto, Helvetica, Arial, Verdana, sans-serif"><span>Thầy Nguyễn
                                       Văn A, tốt nghiệp Đại học Khoa Học Tự Nhiên
                                        và lấy bằng Thạc sĩ Khoa học Máy tính.</span>
                                </font>
                            </p>
                            <p>
                                <font color="#444444" face="Roboto, Helvetica, Arial, Verdana, sans-serif"><span><br></span>
                                </font>
                            </p>
                            <p>
                                <font color="#444444" face="Roboto, Helvetica, Arial, Verdana, sans-serif"><span> </span>
                                </font>
                            </p>
                            <p>
                                <font color="#444444" face="Roboto, Helvetica, Arial, Verdana, sans-serif"><span>Là người
                                        giám sát dự án, có vai trò là giáo viên hướng dẫn.</span></font><br>
                            </p>
                            <p></p>
                        </div>
                    </li> --}}
                </ul>
                <ul>
                    <li>
                        <div class="info">
                            <div class="info__txt info__txt--left">
                                <h2 class="txt-name"><b>Trịnh Cẩm Nhung</b></h2>
                                <p class="txt-p">Sinh viên</p>
                            </div>
                            <div class="info__img info__img--right">
                                <img src="{{ asset('assets/user/images/camnhung.png') }}">
                            </div>
                        </div>
                        <div class="content-p">
                            <p></p>
                            <p>Trịnh Cẩm Nhung, sinh năm 2004, sinh viên của trường Đại học Công nghệ Đông Á ngành công
                                nghệ thông tin. </p>
                            <p><br></p>
                            <p>Là thành viên của dự án NQ Mobile, có vai trò là người sáng lập.<br></p>
                            <p></p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
@endsection
