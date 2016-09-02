@extends('layouts.master')
    @section('title')
        Dashboard
    @endsection

    @section('css')
        <link href="{{ asset('assets/vendors/bower_components/animate.css/animate.min.css') }}" rel="stylesheet">
        <link href="{{ asset('assets/vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css') }}" rel="stylesheet">
        <link href="{{ asset('assets/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css') }}" rel="stylesheet">
        <link href="{{ asset('assets/vendors/bower_components/google-material-color/dist/palette.css') }}" rel="stylesheet">
    @endsection

    @section('leftNavbar')
        <aside id="s-main-menu" class="sidebar">
                <div class="smm-header">
                    <i class="zmdi zmdi-long-arrow-left" data-ma-action="sidebar-close"></i>
                </div>

                <ul class="smm-alerts">
                    <li data-user-alert="sua-messages" data-ma-action="sidebar-open" data-ma-target="user-alerts">
                        <i class="zmdi zmdi-email"></i>
                    </li>
                    <li data-user-alert="sua-notifications" data-ma-action="sidebar-open" data-ma-target="user-alerts">
                        <i class="zmdi zmdi-notifications"></i>
                    </li>
                    <li data-user-alert="sua-tasks" data-ma-action="sidebar-open" data-ma-target="user-alerts">
                        <i class="zmdi zmdi-view-list-alt"></i>
                    </li>
                </ul>

                <ul class="main-menu">
                    <li>
                        <a href="{{ url('home') }}"><i class="zmdi zmdi-home"></i> Home</a>
                    </li>

                    <li class="sub-menu">
                        <a  href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-format-underlined"></i> Monitoring & Survey</a>
                        <ul>
                            <li>
                                <a href="{{ url('createsurvey') }}"> Create new</a>
                            </li>
                            @foreach($survey as $f_survey)
                                <li><a href="{{ url('survey/'.$f_survey->id_survey) }}">{{$f_survey->id_survey}}</a></li>
                            @endforeach
                        </ul>
                    </li>
                    @if($user -> level_user == "1")
                    <li>
                        <a href="{{ url('user') }}" ><i class="zmdi zmdi-home"></i> Users</a>
                    </li>
                    @endif
                    <li class="sub-menu">
                        <a href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-trending-up"></i> History</a>
                        <ul>
                            <li class="sub-menu">
                                <a href="" data-ma-action="submenu-toggle">SUKERNAS</a>
                                <ul>
                                    <li><a href="alternative-header.html">Pemutakhiran</a></li>
                                    <li><a href="colored-header.html">Pencacahan</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </aside>
    @endsection

@section('content')

<section id="content">
            <div class="container">
                <ol class="breadcrumb" style="margin-bottom: 5px;">
                    <li>Home</li>
                </ol>
                <div class="card">
                    <div class="card-header">
                        <h2>Dashboard <h3>Sistem Monitoring Survei dan Sensus</3></h2>

                        <ul class="actions">
                            <li>
                                <a href="">
                                    <i class="zmdi zmdi-check-all"></i>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <i class="zmdi zmdi-trending-up"></i>
                                </a>
                            </li>
                            <li class="dropdown">
                                <a href="" data-toggle="dropdown">
                                    <i class="zmdi zmdi-more-vert"></i>
                                </a>

                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li>
                                        <a href="">Change Date Range</a>
                                    </li>
                                    <li>
                                        <a href="">Change Graph Type</a>
                                    </li>
                                    <li>
                                        <a href="">Other Settings</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="card-body">
                        <div class="chart-edge">
                            <div id="curved-line-chart" class="flot-chart "></div>
                        </div>
                    </div>
                </div>

                <div id="c-grid" class="clearfix" data-columns>

                    <div class="card">
                        <div class="card-header ch-img" style="background-image: url({{ asset('assets/img/home1.jpg') }}); height: 250px;"></div>
                        <div class="card-header">
                            <h2>
                                Monitoring Data
                            </h2>
                        </div>
                        <div class="card-body card-padding">
                            <p>Sistem monitoring bertujuan memudahkan pemantau baik di pusat maupun di daerah untuk melihat keseluruhan hasil monitoring. Kegiatan yang harus dilaporkan adalah Monitoring Pelaksanaan Pendataan. Monitoring Kualitas dan Monitoring Pengolahan Data. Informasi hasil monitoring dapat dilihat dari seluruh perangkat elektronik.</p>
                            <br>
                            <p>Website (situs) ini bersifat realtime karena setiap pengiriman laporan yang dilakukan oleh petugas akan secara otomatis di update, sehingga seluruh tabulasi dan grafik juga akan mengalami perubahan. Situs ini hanya bisa diakses oleh pengguna @bps.go.id yang telah terdaftar dan tidak dipublikasikan untuk umum. </p>
<!--
                            <a href="" class="view-more"><i class="zmdi zmdi-long-arrow-right"></i> View Article...</a>
-->
                        </div>
                    </div>

                        <div class="card">
                            <div class="card-header">
                                <h2>Recent Activities <small>log activities</small></h2>
                            </div>

                            <div class="list-group lg-alt">
                                <a href="" class="list-group-item media">
                                    <div class="pull-left">
                                        <img class="avatar-img mCS_img_loaded" src="{{ asset('assets/img/users/alvian.jpg') }}" alt="">
                                    </div>

                                    <div class="media-body">
                                        <div class="lgi-heading">Muhammad Alvian Supriadi</div>
                                        <b><font color="blue">P2TIK</font></b>
                                        <h5><div class="lgi-heading">2 second ago</div></h5>
                                    </div>
                                </a>
                                <a href="" class="list-group-item media">
                                    <div class="pull-left">
                                        <img class="avatar-img mCS_img_loaded" src="{{ asset('assets/img/users/andy.jpg') }}" alt="">
                                    </div>

                                    <div class="media-body">
                                        <div class="lgi-heading">Andy Eka Saputra</div>
                                        <b><font color="blue">P2TIK</font></b>
                                        <h5><div class="lgi-heading">30 second ago</div></h5>
                                    </div>
                                </a>
                                <a href="" class="list-group-item media">
                                    <div class="pull-left">
                                        <img class="avatar-img mCS_img_loaded" src="{{ asset('assets/img/users/kamal.jpg') }}" alt="">
                                    </div>

                                    <div class="media-body">
                                        <div class="lgi-heading">Muhammad Kamal Hidayatullah</div>
                                        <b><font color="blue">P2TIK</font></b>
                                        <h5><div class="lgi-heading">45 second ago</div></h5>
                                    </div>
                                </a>
                                <a href="" class="list-group-item media">
                                    <div class="pull-left">
                                        <img class="avatar-img mCS_img_loaded" src="{{ asset('assets/img/users/hengky.jpg') }}" alt="">
                                    </div>

                                    <div class="media-body">
                                        <div class="lgi-heading">Hengky Rachmadani</div>
                                        <b><font color="blue">P2TIK</font></b>
                                        <h5><div class="lgi-heading">56 second ago</div></h5>
                                    </div>
                                </a>
                            </div>

                            <a href="" class="list-group-item view-more">
                                <i class="zmdi zmdi-long-arrow-right"></i> View all
                            </a>
                        </div>

                </div>

                <div id="c-grid" class="clearfix" data-columns>

                </div>
            </div>
</section>

@endsection

@section('js')
        <!-- Javascript Libraries -->
        <script src="{{ asset('assets/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js') }}"></script>
        <script src="{{ asset('assets/vendors/bower_components/Waves/dist/waves.min.js') }}"></script>
        <script src="{{ asset('assets/vendors/bootstrap-growl/bootstrap-growl.min.js') }}"></script>
        <script src="{{ asset('assets/vendors/bower_components/moment/min/moment.min.js') }}"></script>
        <script src="{{ asset('assets/vendors/bower_components/salvattore/dist/salvattore.min.js') }}"></script>

        <script src="{{ asset('assets/vendors/bower_components/flot/jquery.flot.js') }}"></script>
        <script src="{{ asset('assets/vendors/bower_components/flot/jquery.flot.resize.js') }}"></script>
        <script src="{{ asset('assets/js/flot-charts/curved-line-chart.js') }}"></script>
        <script>
            $(window).load(function(){
                //Welcome Message (not for login page)
                function notify(message, type){
                    $.growl({
                        message: message
                    },{
                        type: type,
                        allow_dismiss: false,
                        label: 'Cancel',
                        className: 'btn-xs btn-inverse',
                        placement: {
                            from: 'bottom',
                            align: 'right'
                        },
                        delay: 2500,
                        animate: {
                                enter: 'animated fadeInRight',
                                exit: 'animated fadeOutRight'
                        },
                        offset: {
                            x: 30,
                            y: 30
                        }
                    });
                };

                if (!$('.login-content')[0]) {
                    notify('Welcome back ' + $('#name').val(), 'inverse');
                }
            });
        </script>
@endsection