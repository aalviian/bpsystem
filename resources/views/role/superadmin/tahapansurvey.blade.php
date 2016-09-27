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
                        <a href="{{ url('/home') }}"><i class="zmdi zmdi-home"></i> Home</a>
                    </li>

                    <li class="sub-menu">
                        <a  href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-format-underlined"></i> Monitoring & Survey</a>
                        <ul>
                            <li>
                                <a href="{{ url('/createsurvey') }}"> Create new</a>
                            </li>
                            @foreach($survey as $survei)
                                <li><a href="{{ url('survey/'.$survei->id_survey) }}">{{$survei->id_survey}}</a></li>
                            @endforeach
                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a  href="" data-ma-action="submenu-toggle"><i class="zmdi zmdi-format-underlined"></i>Input Data {{ $survey2->id_survey }}</a>
                        <ul>
                                @foreach($tahapanSurvey2 as $f_tahapan)
                                <li>
                                    <?php
                                        $survei2 = DB::table('tahapansurvey') -> where('id_survey', $id_survey)-> where('id_tahapan', $f_tahapan->id_tahapan) -> first();
                                    ?>
                                    <a href="{{ url($survei2->id_survey.'/'.$f_tahapan->id_tahapan.'/input') }}">{{ $f_tahapan->nama_tahapan }}</a>
                                </li>
                                @endforeach
                        </ul>
                    </li>
                    <li @yield('administration')>
                        <a href="{{ url($survey2->id_survey.'/administrasi') }}"><i class="zmdi zmdi-swap-alt"></i> Administration {{ $survey2->id_survey }}</a>
                    </li>
                    @if($user -> level_user == "1")
                    <li class="sub-menu">
                        <a href="{{ url('/user') }}" data-ma-action="submenu-toggle"><i class="zmdi zmdi-home"></i> Users</a>
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
                      <?php $bc_Survey=DB::table('survey')->where('id_survey',$id_survey)->first(); 
                            $bc_Tahapan=DB::table('tahapansurvey') ->where('id_survey', $id_survey)->where('id_tahapan', $id_tahapan)->first();?>
                      <li><a href="{{ url($bc_Survey->id_survey) }}">{{ $bc_Survey -> nama_survey }}</a></li>
                      <li>{{ $bc_Tahapan -> nama_tahapan}}</li>
                    </ol>
                    <div class="card">
                       <div class="card-header">
                            <h2>Dashboard <h3>Progress Monitoring {{$id_survey}} - {{ $bc_Tahapan -> nama_tahapan}}</h3></h2>

                            <ul class="actions">
                                <div class="btn-group">
                                    <button class="btn palette-Teal bg">Program Kegiatan</button>
                                    <button type="button" class="btn palette-Teal bg dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Split button dropdowns</span>
                                    </button>
                                <ul class="dropdown-menu" role="menu">
                                    @foreach($tahapanSurvey2 as $tahapan)
                                        @if($tahapan->id_survey==$survey2->id_survey)
                                            <li><a href="{{url($survey2->id_survey.'/'.$tahapan->id_tahapan)}}">{{$tahapan->nama_tahapan}}</a></li>
                                        @endif
                                    @endforeach
                                </ul>
                              </div>
                            </ul>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header">
                            <h2>Indonesia</h2>
                            <br><?php $date=date('d-m-Y'); ?>
                            <h2>Kondisi sampai tanggal : {{$tahapan->tgl_selesai}}</h2>
                        </div>
                        
                        <?php
                            date_default_timezone_set("Asia/Jakarta"); 
                            $now = date('Y-m-d'); //Returns IST   
                            $tglskrg = date_create($now);
                            $tgldeadline = date_create($tahapan->tgl_selesai);
                            $interval = date_diff($tgldeadline, $tglskrg);
                        ?>

                      <?php
                          $ambildata = DB::table($id_survey.'-'.$tahapan -> nama_tahapan) -> get();
                          $ambilkolom = Schema::getColumnListing($id_survey.'-'.$tahapan -> nama_tahapan);
                          $count = count($ambilkolom);
                        ?>

                        <?php $i=0;$j=0; ?>
                            @foreach($ambildata as $f_ambildata)
                                @if($count==7) <!-- Jika Cakupan Wilayah = Provinsi -->
                                <?php 
                                    $i+=$f_ambildata -> $ambilkolom[1];
                                    $j+=$f_ambildata -> $ambilkolom[2];
                                ?>
                                @endif

                                @if($count==8) <!-- Jika Cakupan Wilayah = Kabkot -->
                                <?php 
                                    $i+=$f_ambildata -> $ambilkolom[2];
                                    $j+=$f_ambildata -> $ambilkolom[3];
                                ?>
                                @endif
                                
                                @if($count==9) <!-- Jika Cakupan Wilayah = Desa -->
                                <?php 
                                    $i+=$f_ambildata -> $ambilkolom[3];
                                    $j+=$f_ambildata -> $ambilkolom[4];
                                ?>
                                @endif
                            @endforeach

                        <div class="card-body card-padding">
                          <div class="pm-body clearfix">
                          @if ($interval->format('%R%a') >= -7)
                                <div class="col-xs-3">
                                  <p>H-7</p>
                                  <div class="c100 p{{round(($i/$j)*100)}}">
                                      <span>{{ round(($i/$j)*100) }}% </span>
                                      <div class="slice">
                                          <div class="bar"></div>
                                          <div class="fill"></div>
                                      </div>
                                  </div>
                                </div> 
                          @endif

                          @if ($interval->format('%R%a') >= -2)
                            <div class="col-xs-3">
                              <p>H-2</p>
                              <div class="c100 p{{round(($i/$j)*100)}}">
                                  <span>{{ round(($i/$j)*100) }}%</span>
                                   <div class="slice">
                                      <div class="bar"></div>
                                      <div class="fill"></div>
                                  </div>
                              </div>
                            </div>
                          @endif

                          @if ($interval->format('%R%a') >= -1)
                            <div class="col-xs-3">
                              <p>H-1</p>
                              <div class="c100 p{{round(($i/$j)*100)}}">
                                  <span>{{ round(($i/$j)*100) }}%</span>
                                  <div class="slice">
                                      <div class="bar"></div>
                                      <div class="fill"></div>
                                  </div>
                              </div>
                            </div>
                          @endif

                          @if ($interval->format('%R%a') >= 0 OR $interval->format('%R%a') >= +1)
                            <div class="col-xs-3">
                              <p>H</p>
                              <div class="c100 p{{round(($i/$j)*100)}}">
                                  <span>{{ round(($i/$j)*100) }}%</span>
                                  <div class="slice">
                                      <div class="bar"></div>
                                      <div class="fill"></div>
                                  </div>
                              </div>
                            </div>
                          @endif
                          </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header">
                            <h2>View <small>Details</small></h2>
                        </div>

                        <div class="card-body card-padding">
                            <div class="pm-body clearfix">
                                  <div role="tabpanel">
                                      <ul class="tab-nav" role="tablist">
                                          <li class="active"><a href="#home11" aria-controls="home11" role="tab" data-toggle="tab">Grafik</a></li>
                                          <li><a href="#profile11" aria-controls="profile11" role="tab" data-toggle="tab">Tabel</a></li>
                                      </ul>
                                  </div>

                                  <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="home11">
                                          <div class="pmbb-body p-l-30">
                                              <div id="bar-chart" class="flot-chart"></div>
                                              <div class="flc-bar"></div>
                                          </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="profile11">
                                          <form action="{{ url('/import') }}" method="post" enctype="multipart/form-data">
                                            <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                            <input type="file" name="provinsi">
                                            <input type="submit" value="import"></input>
                                          </form>
                                          <table id="data-table-command" class="table table-striped table-vmiddle">
                                              <thead>
                                                  <tr>
                                                      <th data-column-id="id" data-type="numeric">No</th>
                                                      <th data-column-id="sender">ID</th>
                                                      <th data-column-id="received" data-order="desc">Provinsi</th>
                                                      <th data-column-id="commands" data-formatter="commands" data-sortable="false">Commands</th>
                                                  </tr>
                                              </thead>
                                              <tbody>
                                
                                              </tbody>
                                          </table>
                                        </div>
                                    </div>

                              </div>
                          </div>
                      </div>
                  </div>
    </section>
@endsection

@section('js')
  <!-- Javascript Libraries -->
  <!-- <script src="{{ asset('assets/vendors/bower_components/fullcalendar/dist/fullcalendar.min.js') }}"></script>
  <script src="{{ asset('assets/vendors/bower_components/simpleWeather/jquery.simpleWeather.min.js') }}"></script> -->
  <script src="{{ asset('assets/vendors/bower_components/salvattore/dist/salvattore.min.js') }}"></script>
  <script src="{{ asset('assets/vendors/bower_components/flot/jquery.flot.js') }}"></script>
  <script src="{{ asset('assets/vendors/bower_components/flot/jquery.flot.resize.js') }}"></script>
  <script src="{{ asset('assets/vendors/bower_components/flot/jquery.flot.pie.js') }}"></script>
  <script src="{{ asset('assets/vendors/bower_components/flot.tooltip/js/jquery.flot.tooltip.min.js') }}"></script>
  <script src="{{ asset('assets/vendors/bower_components/flot-orderBars/js/jquery.flot.orderBars.js') }}"></script>
  <script src="{{ asset('assets/vendors/bower_components/flot.curvedlines/curvedLines.js') }}"></script>
  <script src="{{ asset('assets/vendors/bower_components/flot-orderBars/js/jquery.flot.orderBars.js') }}"></script>

  <!-- Charts - Please read the read-me.txt inside the js folder-->
  <!-- <script src="{{ asset('assets/js/flot-charts/curved-line-chart.js') }}"></script>
  <script src="{{ asset('assets/js/flot-charts/line-chart.js') }}"></script>
  -->  
  <script>
  $(document).ready(function(){
      
      /* Make some random data for Flot Line Chart*/
      
      var data1 = [[1,60]];
      var data2 = [[1,20]];
      var data3 = [[1,100]];
      var data4 = [[1,50]];
      var data5 = [[1,70]];
      var data6 = [[1,90]];
      var data7 = [[1,30]];
      var data8 = [[1,90]];
      var data9 = [[1,20]];
      var data10 = [[1,100]];

      
      /* Create an Array push the data + Draw the bars*/
      
      var barData = new Array();

      barData.push({
              data : data1,
              label: 'Aceh',
              bars : {
                      show : true,
                      barWidth : 0.08,
                      order : 1,
                      lineWidth: 0,
                      fillColor: '#8BC34A'
              }
      });
      
      barData.push({
              data : data2,
              label: 'Sumatera Utara',
              bars : {
                      show : true,
                      barWidth : 0.08,
                      order : 2,
                      lineWidth: 0,
                      fillColor: '#8BC34A'
              }
      });
      
      barData.push({
              data : data3,
              label: 'Sumatera Barat',
              bars : {
                      show : true,
                      barWidth : 0.08,
                      order : 3,
                      lineWidth: 0,
                      fillColor: '#8BC34A'
              }
      });
      
      barData.push({
              data : data4,
              label: 'Riau',
              bars : {
                      show : true,
                      barWidth : 0.08,
                      order : 4,
                      lineWidth: 0,
                      fillColor: '#8BC34A'
              }
      });
      
      barData.push({
              data : data5,
              label: 'Jambi',
              bars : {
                      show : true,
                      barWidth : 0.08,
                      order : 5,
                      lineWidth: 0,
                      fillColor: '#8BC34A'
              }
      });
      
      barData.push({
              data : data6,
              label: 'Sumatera Selatan',
              bars : {
                      show : true,
                      barWidth : 0.08,
                      order : 6,
                      lineWidth: 0,
                      fillColor: '#8BC34A'
              }
      });
      
      barData.push({
              data : data7,
              label: 'Bengkulu',
              bars : {
                      show : true,
                      barWidth : 0.08,
                      order : 7,
                      lineWidth: 0,
                      fillColor: '#8BC34A'
              }
      });
      
      barData.push({
              data : data8,
              label: 'Lampung',
              bars : {
                      show : true,
                      barWidth : 0.08,
                      order : 8,
                      lineWidth: 0,
                      fillColor: '#8BC34A'
              }
      });
      
      barData.push({
              data : data9,
              label: 'Bangka Belitung',
              bars : {
                      show : true,
                      barWidth : 0.08,
                      order : 9,
                      lineWidth: 0,
                      fillColor: '#8BC34A'
              }
      });

      barData.push({
              data : data10,
              label: 'Kepulauan Riau',
              bars : {
                      show : true,
                      barWidth : 0.08,
                      order : 10,
                      lineWidth: 0,
                      fillColor: '#8BC34A'
              }
      });
      
      /* Let's create the chart */
      if ($('#bar-chart')[0]) {
          $.plot($("#bar-chart"), barData, {
              grid : {
                      borderWidth: 1,
                      borderColor: '#eee',
                      show : true,
                      hoverable : true,
                      clickable : true
              },
              
              yaxis: {
                  tickColor: '#eee',
                  tickDecimals: 0,
                  font :{
                      lineHeight: 13,
                      style: "normal",
                      color: "#9f9f9f",
                  },
                  shadowSize: 0
              },
              
              xaxis: {
                  tickColor: '#fff',
                  tickDecimals: 0,
                  font :{
                      lineHeight: 13,
                      style: "normal",
                      color: "#9f9f9f"
                  },
                  shadowSize: 0,
              },
      
              legend:{
                  container: '.flc-bar',
                  backgroundOpacity: 0.5,
                  noColumns: 0,
                  backgroundColor: "white",
                  lineWidth: 0
              }
          });
      }
      
      /* Tooltips for Flot Charts */
      
      if ($(".flot-chart")[0]) {
          $(".flot-chart").bind("plothover", function (event, pos, item) {
              if (item) {
                  var x = item.datapoint[0].toFixed(2),
                      y = item.datapoint[1].toFixed(2);
                  $(".flot-tooltip").html(item.series.label + " of " + x + " = " + y).css({top: item.pageY+5, left: item.pageX+5}).show();
              }
              else {
                  $(".flot-tooltip").hide();
              }
          });
          
          $("<div class='flot-tooltip' class='chart-tooltip'></div>").appendTo("body");
      }
  });
  </script>
@endsection