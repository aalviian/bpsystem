@extends('layouts.master')
    @section('title')
        Dashboard
    @endsection
    
    @section('css')
        <link href="{{ asset('assets/vendors/bower_components/fullcalendar/dist/fullcalendar.min.css') }}" rel="stylesheet">
        <link href="{{ asset('assets/css/circle.css') }}" rel="stylesheet">
        <style type="text/css">

            body{
                background-color: #f5f5f5;
                margin: 0;
                padding: 0;
                font-family: Arial, "Helvetica Neue", Helvetica, sans-serif;
            }

            .page {
                margin: 40px;
            }

            h1{
                margin: 40px 0 60px 0;
            }

            .dark-area {
                background-color: #666;
                padding: 40px;
                margin: 0 -40px 20px -40px;
                clear: both;
            }

            .clearfix:before,.clearfix:after {content: " "; display: table;}
            .clearfix:after {clear: both;}
            .clearfix {*zoom: 1;}
        </style>
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
                        <a href="{{ url('/') }}"><i class="zmdi zmdi-home"></i> Home</a>
                    </li>
                    
                    <li class="sub-menu">
                        <a  href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-format-underlined"></i> Monitoring & Survey</a>
                        <ul>
                            <li>
                                <a href="{{ url('createsurvey') }}"> Create new</a>
                            </li>
                            @foreach($survey as $f_survey)
                                <li><a href="{{ url($f_survey->id_survey) }}">{{$f_survey->id_survey}}</a></li>
                            @endforeach
                        </ul>
                    </li>
                    <li @yield('datainput')>
                        <a href="{{ url('/datainput') }}"><i class="zmdi zmdi-view-list"></i> Data Input</a>
                    </li>
                    <li @yield('administration')>
                        <a href="{{ url($id_survey.'/administrasi') }}"><i class="zmdi zmdi-swap-alt"></i> Administration</a>
                    </li>
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
                            <li class="sub-menu">
                                <a href="" data-ma-action="submenu-toggle">SUSENAS</a>
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
                      <li><a href="{{URL('/')}}">Home</a></li>
                    </ol>
                    <div class="card">
                       <div class="card-header">
                            <h2>Dashboard <h3>Monitoring Survey {{$survey2->id_survey}}</h3></h2>

                            <ul class="actions">
                                <a href="" data-toggle="dropdown">
                                    <button class="btn palette-Teal bg">Program Kegiatan</button>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-right">
                                    @foreach($tahapanSurvey as $tahapan)
                                        @if($tahapan->id_survey==$survey2->id_survey)
                                            <li><a href="{{url($survey2->id_survey.'/'.$tahapan->id_tahapan)}}">{{$tahapan->nama_tahapan}}</a></li>
                                        @endif
                                    @endforeach
                                </ul>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="card">
                        <div class="card-header">
                            <h2>Indonesia</h2>
                            <br>
                            <?php $date=date('d m Y'); ?>
                            <h2>Kondisi sampai tanggal : {{$date}}</h2>
                        </div>
                        
                        <div class="card-body card-padding">
                            <div class="pm-body clearfix">
                            @foreach($tahapanSurvey as $tahapan)
                                <div class="col-xs-3">
                                    <p>{{$tahapan->nama_tahapan}}</p>
                                    <div class="c100 p0">
                                        <span>0%</span>
                                        <div class="slice">
                                            <div class="bar"></div>
                                            <div class="fill"></div>
                                        </div>
                                    </div>
                                </div>
                             @endforeach
                             </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header">
                          <h2>Batas Deadline</h2>
                          <br>
                          <h2>Tiap - tiap tahapan </h2>
                        </div>

                        <div class="card-body card-padding">
                          <div class="pm-body clearfix">
                            @foreach($tahapanSurvey as $tahapan)
                            <div class="col-xs-3">
                                <p>{{$tahapan->nama_tahapan}}</p>
                                <img src="{{ asset('assets/img/clock.png') }}" width="100" height="100" alt="">
                                <h3><p>? Hari</p></h3>
                                <p>{{$tahapan->tgl_selesai}}</p>
                            </div>
                            @endforeach
                          </div>
                        </div>
                    </div>

                </div>
            </section>
@endsection

@section('js')
        <!-- Javascript Libraries -->
        <script src="{{ asset('assets/vendors/bower_components/fullcalendar/dist/fullcalendar.min.js') }}"></script>
        <script src="{{ asset('assets/vendors/bower_components/simpleWeather/jquery.simpleWeather.min.js') }}"></script>
        <script src="{{ asset('assets/vendors/bower_components/salvattore/dist/salvattore.min.js') }}"></script>
        <script src="{{ asset('assets/vendors/bower_components/flot/jquery.flot.js') }}"></script>
        <script src="{{ asset('assets/vendors/bower_components/flot/jquery.flot.resize.js') }}"></script>
        <script src="{{ asset('assets/vendors/bower_components/flot/jquery.flot.pie.js') }}"></script>
        <script src="{{ asset('assets/vendors/bower_components/flot.tooltip/js/jquery.flot.tooltip.min.js') }}"></script>
        <script src="{{ asset('assets/vendors/bower_components/flot-orderBars/js/jquery.flot.orderBars.js') }}"></script>
        <script src="{{ asset('assets/vendors/bower_components/flot.curvedlines/curvedLines.js') }}"></script>                         
        <script src="{{ asset('assets/vendors/bower_components/flot-orderBars/js/jquery.flot.orderBars.js') }}"></script>

        <!-- Charts - Please read the read-me.txt inside the js folder-->
        <script src="{{ asset('assets/js/flot-charts/curved-line-chart.js') }}"></script>
        <script src="{{ asset('assets/js/flot-charts/line-chart.js') }}"></script>
        <script src="{{ asset('assets/js/flot-charts/bar-chart.js') }}"></script>
        <script src="{{ asset('assets/js/flot-charts/dynamic-chart.js') }}"></script>
        <script src="{{ asset('assets/js/flot-charts/pie-chart.js') }}"></script>
        
@endsection