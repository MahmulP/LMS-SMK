@extends('layouts.app')

@section('content')
    <!-- Basic multiple Column Form section start -->
    <section id="multiple-column-form">
        <div class="row">
            <div class="col-6">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Atur Data Sekolah</h4>
                    </div>
                    <div class="card-body">
                        <form class="form" action="{{route('atur-website.update')}}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                <div class="col-12">
                                    <label class="form-label" for="fp-default">Nama Sekolah</label>
                                    <input class="form-control" type="text" name="nama_sekolah" id="nama_sekolah" value="{{old('nama_sekolah', $setting->nama_sekolah)}}">
                                    @error('nama_sekolah')
                                        <div class="text-danger mt-1">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="row">
                              <div class="col-12">
                                  <label class="form-label" for="fp-default">Singkatan Sekolah</label>
                                  <input class="form-control" type="text" name="singkatan_sekolah" id="singkatan_sekolah" value="{{old('singkatan_sekolah', $setting->singkatan_sekolah)}}">
                                  @error('singkatan_sekolah')
                                      <div class="text-danger mt-1">
                                          {{ $message }}
                                      </div>
                                  @enderror
                              </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="mb-1">
                                        <label class="form-label" for="basicSelect">Logo Sekolah</label>
                                        <input class="form-control" type="file" accept="image/*" name="logo_sekolah" id="logo_sekolah" value="{{old('nama_sekolah', $setting->nama_sekolah)}}">
                                        @error('nama_sekolah')
                                            <div class="text-danger mt-1">
                                                {{ $message }}
                                            </div>
                                        @enderror
                                    </div>
                                    @error('kode_siswa')
                                        <div class="text-danger mt-1">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                              </div>
                              <div class="row">
                                <div class="col-12">
                                  <div class="form-floating mb-1 mt-1">
                                    <div class="form-group">
                                      <label for="service_note">Deskripsi Sekolah</label>
                                      <textarea class="form-control summernote" name="deskripsi_sekolah" id="deskripsi_sekolah">{{ old('deskripsi_sekolah', $setting->deskripsi_sekolah) }}</textarea>
                                    </div>
                                  </div>
                                </div>                                
                                <div class="col-12 text-center mt-1">
                                    <button type="submit" class="btn btn-primary me-1">Submit</button>
                                    <button type="reset" class="btn btn-outline-secondary">Reset</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
