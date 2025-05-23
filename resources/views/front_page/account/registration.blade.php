@extends('front_page.layouts.app')
{{-- Registration --}}
@section('main')
    <section class="section-5">
        <div class="container my-5">
            <div class="py-lg-2">&nbsp;</div>
            <div class="row d-flex justify-content-center">
                <div class="col-md-5">
                    <div class="card shadow border-0 p-5">
                        <h1 class="h3">Register</h1>
                        <form action="" id="registerForm" name="registerForm">
                            <div class="mb-3">
                                <label for="" class="mb-2">Name*</label>
                                <input type="text" name="name" id="name" class="form-control"
                                    placeholder="Enter Name">
                                <p></p>
                            </div>
                            <div class="mb-3">
                                <label for="" class="mb-2">Email*</label>
                                <input type="email" name="email" id="email" class="form-control"
                                    placeholder="Enter Email">
                                <p></p>
                            </div>
                            <div class="mb-3">
                                <label for="" class="mb-2">Password*</label>
                                <input type="password" name="password" id="password" class="form-control"
                                    placeholder="Enter Password">
                                <p></p>
                            </div>
                            <div class="mb-3">
                                <label for="" class="mb-2">Confirm Password*</label>
                                <input type="password" name="confirm_password" id="confirm_password" class="form-control"
                                    placeholder="Enter Password">
                                <p></p>
                            </div>
                            <button class="btn btn-primary mt-2">Register</button>
                        </form>
                    </div>
                    <div class="mt-4 text-center">
                        <p>Have an account? <a href="{{ route('account.login') }}">Login</a></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@push('scripts')
    <script>
        // Register form validation
        $("#registerForm").submit(function(e) {
            e.preventDefault();
            $.ajax({
                url: '{{ route('account.processRegister') }}',
                type: 'post',
                data: $("#registerForm").serializeArray(),
                dataType: 'json',
                success: function(response) {
                    let errors = response.errors;
                    let fields = ["name", "email", "password", "confirm_password"];
                    let hasError = false;
                    fields.forEach(field => {
                        if (response.status === false && errors[field]) {
                            $("#" + field).addClass('is-invalid')
                                .siblings('p').addClass('invalid-feedback').html(errors[field]);
                            hasError = true;
                        } else {
                            $("#" + field).removeClass('is-invalid')
                                .siblings('p').removeClass('invalid-feedback').html('');
                        }
                    });
                    if (!hasError) {
                        window.location.href = "{{ route('account.login') }}";
                    }
                }
            });
        });
    </script>
@endpush
