<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body onload="  window.print()">
     <div align="center">
        <table  width="450">
            <tr>
                
                <th><font size ="4">    DAFTAR RIWAYAT HIDUP    </font></th>
                <td><img src="{{url($dosen->photo)}}" width = " 154 " height="172" align="right"></td>
            </tr>
        </table>
        
    </div>
<?php
function tgl_indo($tanggal){
    $bulan = array (
        1 =>   
        'Januari',
        'Februari',
        'Maret',
        'April',
        'Mei',
        'Juni',
        'Juli',
        'Agustus',
        'September',
        'Oktober',
        'November',
        'Desember'
    );
    $pecahkan = explode('-', $tanggal);
    
    // variabel pecahkan 0 = tanggal
    // variabel pecahkan 1 = bulan
    // variabel pecahkan 2 = tahun

    return $pecahkan[2] . ' ' . $bulan[ (int)$pecahkan[1] ] . ' ' . $pecahkan[0];
}
?>
    <p>
        I. KETERANGAN PERORANGAN
    </p>
    <div>
        <table border="1">
        <tr>
            <th>
              NO  
            </th>

            <th colspan="2">
                Nama Lengkap
            </th>

            <td >{{$dosen->name}}</td>
            
        </tr>

        <tr>
            <td>
              1
            </td>

            <th colspan="2">
                NIP
            </th>

            <td >
                {{$dosen->nip}}
            </td>
        </tr>

        <tr>
            <td>
              2  
            </td>

            <th colspan="2">
                Pangkat dan Golongan Ruang
            </th>

            <td >
                {{$dosen->jenis_kepegawaian}}  {{$dosen->gol_ruang}} 
            </td>
        </tr>

        <tr>
            <td>
              3  
            </td>

            <th colspan="2">
                Tempat Lahir/ Tanggal Lahir
            </th>

            <td >
                 {{$dosen->tempat_lahir}} / {{$dosen->tgl_lahir}}
            </td>
        </tr>

        <tr>
            <td>
              4  
            </td>

            <th colspan="2">
                Jenis Kelamin
            </th>

            <td >
                 {{$dosen->jk}}
            </td>
        </tr>

        <tr>
            <td>
              5  
            </td>

            <th colspan="2">
                Agama
            </th>

            <td >
                 {{$dosen->agama}}
            </td>
        </tr>

        <tr>
            <td >
               6 
            </td>

            <th colspan="2">
                Status Perkawinan
            </th>


            <td >
                 {{$dosen->s_nikah}}
            </td>
        </tr>

        <tr>
            <td rowspan="5">
              7  
            </td>
            <th rowspan="5">Alamat Rumah</th>
            <th>Jalan</hd>
            <td> {{$dosen->jalan}}</td>
            <tr>
                <th>Kelurahan / Desa</th>
                <td> {{$dosen->kelurahan}}</td>
            </tr>
            <tr>
                <th>Kecamatan</th>
                <td> {{$dosen->kecamatan}}</td>    
            </tr>
            <tr>
                <th>Kabupaten / Kota</th>
                <td> {{$dosen->kabupaten}}</td>    
            </tr>

            <tr>
                <th>Provinsi</th>
                <td> {{$dosen->provinsi}}</td>    
            </tr>
                      
        </tr>
            
        

        <tr>
            <td rowspan="7">
                8
            </td>
            <th rowspan="7">Keterangan Badan</th>
            <th>Tinggi (cm)</hd>
            <td>{{$dosen->tinggi_badan}}</td>
            <tr>
                <th>Berat Badan (KG)</th>
                <td>{{$dosen->berat_badan}}</td>
            </tr>
            <tr>
                <th>Rambut</th>
                <td>{{$dosen->warna_rambut}}</td>    
            </tr>
            <tr>
                <th>Bentuk Muka</th>
                <td>{{$dosen->bentuk_wajah}}</td>    
            </tr>

            <tr>
                <th>Warna Kulit</th>
                <td>{{$dosen->warna_kulit}}</td>    
            </tr>

            <tr>
                <th>Ciri-ciri Khas</th>
                <td>{{$dosen->ciri}}</td>    
            </tr>

            <tr>
                <th>Cacat Tubuh</th>
                <td>{{$dosen->cacat_tubuh}}</td>    
            </tr>

        </tr>

        <tr>
            <td>9</td>
            <th colspan="2">Kegemaran (Hobby)</th>
            <td >{{$dosen->kegemaran}}</td>
        </tr>
        
      </table>
  </div>


  <p>PENDIDIKAN</p>
  <p>1. Pendidikan di dalama dan di luar negeri</p>
<div>
    <table border="1">
        <tr>
            <th>
              NO  
            </th>

            <th >TINGKAT</th>
            <th >NAMA PENDIDIKAN</th>
            <th >FAKULTAS</th>
            <th >JURUSAN</th>
            <th >STTB/TANDA LULUS / IJAZAH TAHUN</th>
            <th >TEMPAT</th>
            <th >NAMA KEPALA SEKOLAH / DIREKTUR / DEKAN / PROMOTOR</th>
            
        </tr>
        <?php $i=1;  ?>  

        @foreach($pendidikan as $data)
       
        <tr>
        <td>{{$i++}}</td>    
        <td>{{$data->tingkat_pendidikan}}</td>
        <td>{{$data->nama_sekolah_pt}}</td>
        <td>{{$data->fakultas}}</td>
        <td>{{$data->jurusan}}</td>
        <td>{{$data->tahun_lulus}}</td>
        <td>{{$data->sumber_dana}}</td>
        <td>{{$data->tempat}}</td>
        </tr>
        @endforeach
    </table>
</div>

<p>2. Kursus / Latihan di Dalam dan di Luar Negeri</p>

<div>
    <table border="1">
        <tr>
            <th>
              NO  
            </th>

            <th >NAMA / KURSUS / LATIHAN</th>
            <th >LAMANYA / TGL / BLN / TAHUN</th>
            <th >IJAZAH / TANDA LULUS SURAT KETERANGAN TAHUN</th>
            <th >TEMPAT</th>
            <th >KETERANGAN</th>
            
        </tr>

        <tr>
             <?php $i=1;  ?>  
       @foreach ($kursus as $data)
        <tr>
            <td>{{$i++}} </td>
            <td>{{$data->nama_kursus_latihan}}</td>
            <td>{{$data->periode}} {{$data->tgl_kursus}} {{$data->bulan}} {{$data->tahun}}</td>
            <td>{{$data->ijazah_kursus}}</td>
            <td>{{$data->tempat}}</td>
            <td>{{$data->sumber_dana}} {{$data->penyelenggara}}</td>

        </tr>
        @endforeach
        </tr>
    </table>
</div> 

<p>RIWAYAT PEKERJAAN</p> 
<P>1. Riwayat Kepangkatan Golongan Ruang Penggajian</P>
    
<div>
    <table border="1">
        <tr>
            <th rowspan="2">
              NO  
            </th>

            <th rowspan="2">PANGKAT</th>
            <th rowspan="2">GOL RUANG PENGGAJIAN</th>
            <th rowspan="2">GAJI POKOK</th>
            <th colspan="3">SURAT KEPUTUSAN</th>
            <th rowspan="2">PERATURAN YANG DIJADIKAN DASAR</th>
            
        </tr>

        <tr>   
        <th>PEJABAT</th>
        <th>NOMOR</hd>
        <th>TGL</hd>
        </tr>
         <?php $i=1;  ?>  
        @foreach($kepangkatan as $data)
        <tr>
            <td>{{$i++}}</td>
            <td>{{$data->pangkat}}</td>
            <td>{{$data->gol_ruang}}</td>
            <td>{{$data->gaji}}</td>
            <td>{{$data->pejabat}}</td>
            <td>{{$data->no_sk}}</td>
            <td>{{$data->tgl_sk}}</td>
            <td>{{$data->pak}}</td>            
        </tr>
        @endforeach
    </table>
</div>     
    <p>2. Pengalman Jabatan / Pekerjaan</p>

<div>
    <table border="1">
        <tr>
            <th rowspan="2">
              NO  
            </th>

            <th rowspan="2">JABATAN PEKERJAAN</th>
            <th rowspan="2">MULAI DAN SAMPAI</th>
            <th rowspan="2">GOLONGAN RUNAGN PENGGAJIAN</th>
            <th rowspan="2">GAJI POKOK</th>
            <th colspan="3">SURAT KEPUTUSAN</th>
            
        </tr>

        <tr>   
        <th>PEJABAT</th>
        <th>NOMOR</hd>
        <th>TGL</hd>
        </tr>
         <?php $i=1;  ?>  
        @foreach ($jabatan as $data)
        <tr>
            <td>{{$i++}}</td>
            <td>{{$data->jabatan}}</td>
            <td>{{$data->tgl_mulai}}-{{$data->tmt}}</td>
            <td>{{$data->gol_ruang}}</td>
            <td>{{$data->gaji_pokok}}</td>
            <td>{{$data->pejabat}}</td>
            <td>{{$data->no_sk}}</td>
            <td>{{$data->tgl_mulai}}</td>
            
        </tr>
        @endforeach
    </table>
</div> 

<P>IV.  TANDA JASA / PENGHARGAAN </P>

<div>
    <table border="1">
        <tr>
            <th >
              NO  
            </th>

            <th >NAMA BINTANG/SATYA LENCANA PENGHARGAAN</th>
            <th >TAHUN PEROLEHAN</th>
            <th >NAMA NEGARA / INSTANSI YANG MEMBERI </th>
            
            
        </tr>
         <?php $i=1;  ?>  
        @foreach ($jasa as $data)
        <tr>
            <td>{{$i++}}</td>
            <td>{{$data->nama_tanda_jasa_penghargaan}}</td>
            <td>{{$data->tahun}}</td>
            <td>{{$data->pemberi}}</td>
        </tr>
        @endforeach
    </table>
</div>

<P>V.  PENGALAMAN </P>

<div>
    <table border="1">
        <tr>
            <th >
              NO  
            </th>

            <th >NEGARA</th>
            <th >TUJUAN KUNJUNGAN</th>
            <th >LAMANYA </th>
            <th >YANG MEMBIAYAI </th>

            
            
        </tr>
         <?php $i=1;  ?>  
        @foreach($kunjungan as $data)
        <tr>
            <td>{{$i++}}</td>
            <td>{{$data->negara}}</td>
            <td>{{$data->tujuan_kunjungan}}</td>
            <td>{{$data->lamanya}}</td>
            <td>{{$data->yg_membiayai}}</td>
        </tr>
        @endforeach
    </table>
</div>

    <P>VI. KETERANGAN KELUARGA</P>
    <P>1. Isteri/Suami</P>
<div>
    <table border="1">
        <tr>
            <th >
              NO  
            </th>

            <th >NAMA</th>
            <th >TEMPAT LAHIR</th>
            <th >TANGGAL LAHIR </th>
            <th >TANGGAL NIKAH </th>
            <th >PEKERJAAN </th>
            <th >KETERANGAN </th>
            
            
        </tr>
         <?php $i=1;  ?>  
        @foreach($keluarga as $data)
        <tr>
            <td>{{$i++}}</td>
            <td>{{$data->nama}}</td>
            <td>{{$data->tgl_lahir}}</td>
            <td>{{$data->tempat_lahir}}</td>
            <td>{{$data->tgl_nikah}}</td>
            <td>{{$data->pekerjaan}}</td>
            <td>{{$data->keterangan}}</td>
        </tr>
        @endforeach

    </table>
</div>

    <P>2. Anak </P>
<div>
    <table border="1">
        <tr>
            <th >
              NO  
            </th>

            <th >NAMA</th>
            <th>JENIS KELAMIN</th>
            <th >TEMPAT LAHIR</th>
            <th >TANGGAL LAHIR </th>
            <th >PEKERJAAN </th>
            <th >KETERANGAN </th>
            
            
        </tr>
         <?php $i=1;  ?>  
        @foreach($anak as $data)
        <tr>
            <td>{{$i++}}</td>
            <td>{{$data->nama}}</td>
            <td>{{$data->jk_anak}}</td>
            <td>{{$data->tempat_lahir}}</td>
            <td>{{$data->tgl_lahir}}</td>
            <td>{{$data->pekerjaan}}</td>
            <td>{{$data->keterangan}}</td>
        </tr>
        @endforeach

    </table>
</div>    

    <P>3. Bapak dan Ibu Kandung</P>
    <div>
    <table border="1">
        <tr>
            <th >
              NO  
            </th>

            <th >NAMA</th>
            <th >TANGGAL LAHIR </th>
            <th >PEKERJAAN </th>
            <th >KETERANGAN </th>
            
            
        </tr>
         <?php $i=1;  ?>  
        @foreach($orangtua as $data)
        <tr>
            <td>{{$i++}}</td>
            <td>{{$data->nama}}</td>
            <td>{{$data->tgl_lahir}}</td>
            <td>{{$data->pekerjaan}}</td>
            <td>{{$data->jenis}}</td>
            <td>{{$data->keterangan}}</td>
            
        </tr>
        @endforeach

    </table>
</div>

    <p>4.  Bapak dan Ibu Mertua</p>
<div>
    <table border="1">
        <tr>
            <th >
              NO  
            </th>

            <th >NAMA</th>
            <th >TANGGAL LAHIR </th>
            <th >PEKERJAAN </th>
            <th >KETERANGAN </th>
            
            
        </tr>
         <?php $i=1;  ?>  
        @foreach($orangtuamertua as $data)
        <tr>
            <td>{{$i++}}</td>
            <td>{{$data->nama}}</td>
            <td>{{$data->tgl_lahir}}</td>
            <td>{{$data->pekerjaan}}</td>
            <td>{{$data->jenis}}</td>
            <td>{{$data->keterangan}}</td>
            
        </tr>
        @endforeach

    </table>
</div>    

    <p>5. Saudara Kandung</p>
    <div>
    <table border="1">
        <tr>
            <th >
              NO  
            </th>

            <th >NAMA</th>
            <th >JENIS KELAMIN</th>
            <th >TANGGAL LAHIR </th>
            <th >PEKERJAAN </th>
            <th >KETERANGAN </th>
            
            
        </tr>
         <?php $i=1;  ?>  
       @foreach($saudara as $data)
        <tr>
            <td>{{$i++}}</td>
            <td>{{$data->nama}}</td>
            <td>{{$data->jk}}</td>
            <td>{{$data->tgl_lahir}}</td>
            <td>{{$data->pekerjaan}}</td>
            <td>{{$data->keterangan}}</td>
            
        </tr>
        @endforeach

    </table>
</div>

    <p>VII. KETERANGAN ORGANISASI</p>
    <P>1. Semasa Mengikuti SLTA ke bawah</P>
<div>
    <table border="1">
        <tr>
            <th >
              NO  
            </th>

            <th >NAMA< ORGANISASI</th>
            <th >KEDUDUKAN DALAM ORGANISASI</th>
            <th >DALAM TAHUN S/D TAHUN</th>
            <th >TEMPAT </th>
            <th >NAMA PIMPINAN </th>
            
            
        </tr>
         <?php $i=1;  ?>  
        @foreach ($organisasislta as $data)
        <tr>
            <td>{{$i++}}</td>
            <td>{{$data->jenis}}</td>
            <td>{{$data->nama_organisasi}}</td>
            <td>{{$data->kedudukan}}</td>
            <td>{{$data->tempat}}</td>
            <td>{{$data->nama_pimpinan}}</td>
            
        </tr>
        @endforeach

    </table>
</div>

    <P>2. Semasa Mengikuti Perguruan Tinggi</P>
<div>
    <table border="1">
        <tr>
            <th >
              NO  
            </th>

            <th >NAMA< ORGANISASI</th>
            <th >KEDUDUKAN DALAM ORGANISASI</th>
            <th >DALAM TAHUN S/D TAHUN</th>
            <th >TEMPAT </th>
            <th >NAMA PIMPINAN </th>
            
            
        </tr>
         <?php $i=1;  ?>  
        <tr>@foreach ($organisasi as $data)
        <tr>
            <td>{{$i++}}</td>
            <td>{{$data->jenis}}</td>
            <td>{{$data->nama_organisasi}}</td>
            <td>{{$data->kedudukan}}</td>
            <td>{{$data->tempat}}</td>
            <td>{{$data->nama_pimpinan}}</td>
            
        </tr>
        @endforeach
                      
        </tr>

    </table>
</div>

<p>3. Sudah selesai pendidikan atau selama menjadi pegawai</p>

<div>
    <table border="1">
        <tr>
            <th >
              NO  
            </th>

            <th >NAMA< ORGANISASI</th>
            <th >KEDUDUKAN DALAM ORGANISASI</th>
            <th >DALAM TAHUN S/D TAHUN</th>
            <th >TEMPAT </th>
            <th >NAMA PIMPINAN </th>
            
            
        </tr>
         <?php $i=1;  ?>  
       @foreach ($organisasipegawai as $data)
        <tr>
            <td>{{$i++}}</td>
            <td>{{$data->jenis}}</td>
            <td>{{$data->nama_organisasi}}</td>
            <td>{{$data->kedudukan}}</td>
            <td>{{$data->tempat}}</td>
            <td>{{$data->nama_pimpinan}}</td>
            
        </tr>
        @endforeach

    </table>
</div>
<P>DEMIKIAN DAFTAR RIWAYAT INI SAYA BUAT DENGAN SESUNGGUHNYA, DAN APABILA DIKEMUDAIN HARI TERDAPAT KETERANGAN YANG TIDAK BENAR, SAYA BERSEDIA DI TUNTUT DI MUKA PENGADILAN SERTA BERSEDIA MENERIMA SEGALA TINDAKAN YANG DIAMBIL PEMERINTAH</P>

<div align="right">
    <table  width="450">
        <tr>
            <th> Bandung {{tgl_indo(date('Y-m-d')) }} </th>
        </tr>
        <tr >
            <td colspan="2" align="center"></td>
            <td colspan="2" align="center"></td>
            
        </tr>
        <tr >
            <td colspan="2" align="center"></td>
            <td colspan="2" align="center"></td>
            
        </tr>
        <tr >
            <td colspan="2" align="center"></td>
            <td colspan="2" align="center"></td>
            
        </tr>
        <tr >
            <td colspan="2" align="center"></td>
            <td colspan="2" align="center"></td>
            
        </tr>
        <tr >
            <td colspan="2" align="center"></td>
            <td colspan="2" align="center"></td>
            
        </tr>
        <tr >
            <td colspan="2" align="center">___________________</td>
        </tr> 
        <tr><th>NIP {{$dosen->nip}} </th> </tr>
    </table>    
</div>

</body>
</html>