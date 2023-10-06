<?php

namespace App\Http\Controllers;


use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\User;
use App\Models\Guru;
use App\Models\Settings;
use Illuminate\Http\Request;

class SettingController extends Controller
{
    public function setting(){
        $setting = Settings::firstOrFail();
        return view('website_management.atur_website', compact('setting'));
    }

    public function update(Request $request)
{
    // Validate the form data, add validation rules as needed
    $validated = $request->validate([
        'nama_sekolah' => 'required',
        'deskripsi_sekolah' => 'required',
        'singkatan_sekolah' => 'required',
        'logo_sekolah' => 'image|mimes:jpeg,png,jpg,gif|max:2048',
    ]);

    // Get the current setting record from the database
    $setting = Settings::firstOrFail();

    // Update the setting record with the form data
    $setting->update([
        'nama_sekolah' => $request->input('nama_sekolah'),
        'singkatan_sekolah' => $request->input('singkatan_sekolah'),
        'deskripsi_sekolah' => $request->input('deskripsi_sekolah'),
    ]);

    if ($request->hasFile('logo_sekolah')) {
        $photo = $request->file('logo_sekolah');
        $photo->store('public/logo');
        $photo->move(public_path('logo'), 'logo.jpg');
    }

    return redirect()->route('atur-website')->with('success', 'Settings updated successfully');
}
}
