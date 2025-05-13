@extends('front_page.layouts.app')
{{-- Update User --}}
@section('main')
    <section class="section-5 bg-2">
        <div class="container py-5">
            <div class="row">
                <div class="col">
                    <nav aria-label="breadcrumb" class=" rounded-3 p-3 mb-4">
                        <ol class="breadcrumb mb-0">
                            <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Home</a></li>
                            <li class="breadcrumb-item active">Update / User</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3">
                    @include('front_page.account.sidebar')
                </div>
                <div class="col-lg-9">
                    @include('front_page.userMessages')
                    <form action="" id="userUpdateForm" name="userUpdateForm" class="profileForm" method="POST">
                        <div class="card border-0 shadow mb-4">
                            <div class="card-body  p-4">
                                <h3 class="fs-4 mb-1">Update User</h3>
                                <div class="mb-4">
                                    <label for="" class="mb-2">Name*</label>
                                    <input type="text" placeholder="Enter Name" class="form-control" name="name"
                                        id="name" value="{{ $updateUser->name }}">
                                    <p></p>
                                </div>
                                <div class="mb-4">
                                    <label for="" class="mb-2">Email*</label>
                                    <input type="text" placeholder="Enter Email" class="form-control" name="email"
                                        id="email" value="{{ $updateUser->email }}">
                                    <p></p>
                                </div>
                                <div class="mb-4">
                                    <label for="" class="mb-2">Designation</label>
                                    <input type="text" placeholder="Designation" class="form-control" name="designation"
                                        id="designation" value="{{ $updateUser->designation }}">
                                </div>
                                <div class="mb-4">
                                    <label for="" class="mb-2">Mobile</label>
                                    <input type="text" placeholder="Mobile" class="form-control" name="mobile"
                                        id="mobile" value="{{ $updateUser->mobile }}">
                                    <p></p>
                                </div>
                            </div>
                            <div class="card-footer  p-4">
                                <button class="btn btn-primary" type="submit">Update</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection
@push('scripts')
    <script>
        // Update User
        $("#userUpdateForm").submit(function(e) {
            e.preventDefault();
            $.ajax({
                url: '{{ route('admin.user.update', $updateUser->id) }}',
                type: 'put',
                dataType: 'json',
                data: $("#userUpdateForm").serializeArray(),
                success: function(response) {
                    let errors = response.errors;
                    let fields = ["name", "email", "mobile"];
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
                        window.location.href = "{{ route('admin.users') }}";
                    }
                }
            });
        });
    </script>
@endpush
