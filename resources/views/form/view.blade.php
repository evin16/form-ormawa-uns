<table class="table table-bordered">
    <tr>
        <th>Komponen</th>
        <th>Detail</th>
    </tr>
    <tr>
        <td>Nama PIC</td>
        <td>{{$data->nama_pic}}</td>
    </tr>
    <tr>
        <td>NIM PIC</td>
        <td>{{$data->nama_pic}}</td>
    </tr>
    <tr>
        <td>Kontak PIC</td>
        <td>{{$data->kontak_pic}}</td>
    </tr>
    <tr>
        <td>Tanggal Mulai</td>
        <td>{{$data->mulai}}</td>
    </tr>
    <tr>
        <td>Tanggal Selesai</td>
        <td>{{$data->selesai}}</td>
    </tr>
    <tr>
        <td>Sumber Dana</td>
        <td>{{$data->sumber_dana}}</td>
    </tr>
    <tr>
        <td>Jumlah Dana</td>
        <td>@currency($data->jumlah_dana)</td>
    </tr>
    <tr>
        <td>Sumber Dana</td>
        <td><a href="{{$data->file_RAB}}">file
                RAB</a></td>
    </tr>
</table>