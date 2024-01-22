@extends('layouts.app')

@section('content')
<div class="container">

    <div class="row justify-content-center mb-3">
        <div class="col-md">
            <div class="card">
                <div class="card-header">
                    <div class="d-grid-flex">
                        {{ __('Halaman Evaluasi Kegiatan Ormawa UNS') }}
                        <a href="{{route('admin.insert')}}" class="btn btn-primary btn-sm float-end" class=""> <i
                                class="bi bi-plus-lg"></i> </a>
                        <a href="https://uns.id/RABormawaUNS" class=" btn btn-primary btn-sm float-end mx-2"
                            target="_blank"> <i class="bi bi-cash-coin"></i> </a>
                    </div>
                </div>
                <div class="card-body">
                    <table class="table" id="data">
                        <thead>
                            <tr>
                                <th>Nama Ormawa</th>
                                <th>Nama Kegiatan</th>
                                <th>Jenis Kegiatan</th>
                                <th>Kategori Kegiatan</th>
                                <th>Skim Kegiatan</th>
                                <th>Tingkat Kegiatan</th>
                                <th>Tanggal Mulai</th>
                                <th>Tanggal Selesai</th>
                                <th>Jumlah Dana</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($proker as $data)
                            <tr>
                                <td><span class="small">{{$data->nama_ormawa}}</span></td>
                                <td><span class="small">{{$data->nama_kegiatan}}</span></td>
                                <td><span class="small">{{$data->jenis_kegiatan}}</span></td>
                                <td><span class="small">{{$data->kategori_kegiatan}}</span></td>
                                <td><span class="small">{{$data->nama_skim}}</span></td>
                                <td><span class="small">{{$data->tingkat_kegiatan}}</span></td>
                                <td><span class="small">{{$data->mulai}}</span></td>
                                <td><span class="small">{{$data->selesai}}</span></td>
                                <td><span class="small">@currency($data->jumlah_dana)</span></td>
                                <td>
                                    <div class="d-flex gap-2">
                                        <a href="{{route('admin.info', [$data->id])}}"
                                            class="btn btn-sm btn-primary text white"> <i class="bi bi-info-circle"></i>
                                        </a>
                                        <a href="{{route('admin.edit', [$data->id])}}"
                                            class="btn btn-sm btn-warning text white"> <i
                                                class="bi bi-pencil-square"></i>
                                        </a>
                                        <button type="button" class="btn btn-danger btn-sm" data-bs-toggle="modal"
                                            data-bs-target="#delete">
                                            <i class="bi bi-trash2-fill"></i>
                                        </button>
                                    </div>
                                </td>
                                <!-- Modal -->
                                <div class="modal fade" id="delete" tabindex="-1">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title">Notifikasi</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <form action="{{ route('admin.destroy', [$data->id]) }}" method="POST">
                                                    @csrf
                                                    @method('DELETE')
                                                    <p>Apakah akan menghapus data {{$data->name}}?</p>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" class="btn btn-danger btn-sm">
                                                    Hapus
                                                </button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
$('#data').DataTable({
    responsive: true
});
</script>
@endsection