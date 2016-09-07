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
                        </ul>
                    </li>
                </ul>
            </aside>
    @endsection

@section('content')

<section id="content">
            <div class="container">
                <ol class="breadcrumb" style="margin-bottom: 5px;">
                    <li>User Create</li>
                </ol>
                    <div class="card">
                        <div class="card-header">
                            <h2>Input Groups</h2>
                            <p>
                                @if ($errors->has())
                                <div class="alert alert-danger">
                                    @foreach ($errors->all() as $error)
                                        {{ $error }}<br>        
                                    @endforeach
                                </div>
                                @endif
                            </p>
                        </div>

                        <div class="card-body card-padding">
                            <p class="c-black f-500 m-b-5">Basic Example</p>
                            <small>Place one add-on or button on either side of an input. You may also place one on both sides of an input.</small>

                            <br/><br/>

                            <form action="{{ url('user/create') }}" method="post" name="formtambahuser">
                            {!! csrf_field() !!}
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="zmdi zmdi-account"></i></span>
                                            <div class="fg-line">
                                                    <input type="text" name="name" class="form-control" placeholder="Full Name" value="{{ old('name') }}">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-sm-4">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="zmdi zmdi-email"></i></span>
                                            <div class="fg-line">
                                                <input type="number" name="nip" class="form-control" placeholder="NIP" value="{{ old('nip') }}">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-sm-4">  
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="zmdi zmdi-pin"></i></span>
                                            <div class="fg-line">
                                                <select class="selectpicker" data-live-search="true" name="level"> 
                                                    <option value="2">User</option>
                                                    <option value="1">Superadmin</option>
                                                </select>
                                            </div>    
                                        </div>  
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-sm-5"></div>
                                    <div class="col-sm-6">
                                        <button type="submit" class="btn btn-primary">Tambah</button>   
                                    </div> 
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header">
                            <h2>List User</h2>
                            <br>
                            @if(Session::has('success_message'))
                                <div class="alert alert-success">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <i class="fa fa-info-circle"></i>{{ Session::get('success_message') }}
                                </div>
                            @endif
                        </div>

                        <div class="card-body card-padding">
                            <div class="table-responsive">
                                <table id="data-table" class="table table-striped table-vmiddle">
                                    <thead>
                                        <tr>
                                            <th data-column-id="id" data-type="numeric">No</th>
                                            <th data-column-id="received" data-order="desc">Nama</th>
                                            <th data-column-id="sender">Username</th>
                                            <th data-column-id="sender">NIP</th>
                                            <th>Action</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody id="tableuser"> 
                                        <?php $no=1; ?>
                                        @foreach($users as $f_users)  
                                        <tr>
                                            <td>{{ $no++ }}</td>
                                            <td>{{ $f_users -> name }}</td>
                                            <td>{{ $f_users -> username }}</td>
                                            <td>{{ $f_users -> nip_user }}</td>
                                            <td>
                                                <a  onclick="openmodaledit('<?php echo $f_users->id_user  ?>','<?php echo $f_users->name  ?>','<?php echo $f_users->username  ?>','<?php echo $f_users->nip_user ?>')"  class="btn palette-Indigo bg">Edit</a>
                                                
                                                <a onclick="openmodaldelete('<?php echo $f_users->id_user  ?>','<?php echo $f_users->name  ?>','<?php echo $f_users->username  ?>')" class="btn palette-Red bg">Delete</a>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

            <!--Edit Modal -->
            <div class="modal fade" id="editmodal" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog"     aria-hidden="true">
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">Tambah Hak Akses</h4>
                    </div>
                    <input type="hidden" id="id">
                    <input type="hidden" name="_token" id="token" value="{{ csrf_token() }}">
                    <div class="modal-body">
                        <div class="form-group">
                            <label class="control-label" for="">Nama</label>
                            <input type="text" name="name" id="nama" class="form-control" placeholder="Full Name">
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="nip">Username</label>
                            <input type="text" name="username" id="username" class="form-control" placeholder="Username">
                        </div>  
                        <div class="form-group">
                            <label class="control-label" for="nip">NIP</label>
                            <input type="text" name="nip" id="nip" class="form-control" placeholder="Username">
                        </div>              
                        <div class="form-group">
                            <label class="control-label" for="hakakses">Hak Akses</label>
                            <select class="selectpicker" data-live-search="true" id="level" name="level">
                                <option value="Admin">Admin</option>
                                <option value="Supervisor">Supervisor</option>
                                <option value="Operator">Operator</option>
                            </select>                 
                        </div>   
                        <br><br>
                    </div>
                         
                    <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-default pull-rigth">Batal</button>
                        <button onclick="edituser()" class="btn btn-success pull-rigth">Tambahkan</button>
                    </div>
                  </div>
                </div>
            </div>

            <!--Delete Modal -->
            <div class="modal fade" id="deletemodal" tabindex="-1" role="dialog" >
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">Tambah Hak Akses</h4>
                    </div>
                    <input type="hiddden" id="id2">
                    <input type="hidden" name="_token" id="token" value="{{ csrf_token() }}">
                    <div class="modal-body">
                        <h3>Apakah anda ingin menghapus <div id="username2"></div> dari database? </h3> 
                          
                        <br><br>
                    </div>
                         
                    <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-default pull-rigth">Batal</button>
                        <button onclick="deleteuser()" class="btn btn-success pull-rigth">Hapus</button>
                    </div>
                  </div>
                </div>
            </div>
        
        

            <div id="c-grid" class="clearfix" data-columns></div>       
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
        <script src="{{ asset('assets/js/notify/curved-line-chart.js') }}"></script>
        <script src="{{ asset('assets/js/notify/notify.js') }}"></script>
        <script src="{{ asset('assets/js/notify/notify.min.js') }}"></script>
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
        <script type="text/javascript">
          function openmodaledit(id,nama,username,nip){
              $('#id').val(id);
              $('#nama').val(nama);
              $('#username').val(username);
              $('#nip').val(nip);
              $('#editmodal').modal(); 
          }
        </script>

        <script type="text/javascript">
          function openmodaldelete(id2,nama2,username2){
              $('#id2').val(id2);
              $('#nama2').val(nama2);
              $('#username2').val(username2);
              $('#deletemodal').modal(); 
          }
        </script>

        <script>
        function edituser() {
            var id = $('#id').val();
            $.ajax({
                type: 'GET',
                url: 'user/edit/' + id,
                data: {
                    '_token': $('input[name=_token]').val(),
                    'id': $("#id").val(),
                    'name': $('#nama').val(),
                    'username' : $('#username').val(),
                    'nip' : $('#nip').val(),
                    'level' : $('#level').val()
                }
            });
            location.reload();
        }
        </script>

        <script>
        function deleteuser() {
            var id2 = $('#id2').val();
            $.ajax({
                type: 'GET',
                url: 'user/delete/' + id2,
                success: function() {
                  $('#tebleuser').load('user/tableuser').fadeIn("slow");
                  $.notify("Data user berhasil dihapus", "success");
              }
            });
            $('#deletemodal').modal('hide');  
        }
        </script>
@endsection