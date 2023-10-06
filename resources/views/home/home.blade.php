@extends('layouts.app')


@section('content')
    <div class="content-body">
        <div class="col-12 col-md-12 col-lg-12">
            <div class="card card-congratulations">
                <div class="card-body text-center">
                    <img src="../../../app-assets/images/elements/decore-left.png" class="congratulations-img-left"
                        alt="card-img-left" />
                    <img src="../../../app-assets/images/elements/decore-right.png" class="congratulations-img-right"
                        alt="card-img-right" />
                    <div class="avatar avatar-xl bg-primary shadow">
                        <div class="avatar-content">
                            <i data-feather="smile" class="font-large-1"></i>
                        </div>
                    </div>
                    <div class="text-center">
                        <h1 class="mb-1 text-white">Selamat Datang Learning Management System</h1>
                        <h1 class="card-text text-white m-auto w-75">
                            {{ $setting->nama_sekolah }}
                            </h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="card mb-4 text-center">
            <div class="card-body">
                <h4 class="card-title text-primary">Profile Sekolah</h4>
                {!! $setting->deskripsi_sekolah !!}
            </div>
        </div>
    </div>
@endsection
