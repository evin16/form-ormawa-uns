@extends('layout.page')

@section('content')
<section class="sign-in">
    <div class="container text-center">
        <div class="signin-content">
            <div class="col-md">
                <figure><img src="{{ asset('img/logo-uns.png') }}" alt="uns-image" width="360"></figure>
            </div>

            <div class="row justify-content-center align-items-center">
                <div class="col-md-6">
                    <h2 class="display-3 fw-bold">Sign up</h2>
                    <h6 class="pb-3">Sign up to start your session</h6>
                    <form method="post" action="{{ route('login.user')}}" id="login-form">
                        @csrf
                        <div class="form-group d-flex justify-content-md-center mb-3 gap-3">
                            <label for="" class="display-3"><i class="bi bi-person-circle"></i></label>
                            <input type="text" name="name" class="form-control" placeholder="username" />
                        </div>
                        <div class="form-group d-flex justify-content-md-center mb-3 gap-3">
                            <label for="" class="display-3"><i class="bi bi-lock-fill"></i></label>
                            <input type="password" name="password" class="form-control" placeholder="password" />
                        </div>
                        <div class="mt-3">
                            <button type="submit" class="btn btn-primary w-50">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
</section>
@endsection