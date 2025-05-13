@extends('front_page.layouts.app')
{{-- Profile Page --}}
@section('main')
    <section class="section-5 bg-2">
        <div class="container py-5">
            <div class="row">
                <div class="col">
                    <nav aria-label="breadcrumb" class=" rounded-3 p-3 mb-4">
                        <ol class="breadcrumb mb-0">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Account Settings</li>
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
                    <form action="" id="profileForm" class="profileForm" method="POST">
                        <div class="card border-0 shadow mb-4">
                            <div class="card-body  p-4">
                                <h3 class="fs-4 mb-1">My Profile</h3>
                                <div class="mb-4">
                                    <label for="" class="mb-2">Name*</label>
                                    <input type="text" placeholder="Enter Name" class="form-control" name="name"
                                        id="name" value="{{ $user->name }}">
                                    <p></p>
                                </div>
                                <div class="mb-4">
                                    <label for="" class="mb-2">Email*</label>
                                    <input type="text" placeholder="Enter Email" class="form-control" name="email"
                                        id="email" value="{{ $user->email }}">
                                    <p></p>
                                </div>
                                <div class="mb-4">
                                    <label for="" class="mb-2">Designation</label>
                                    <input type="text" placeholder="Designation" class="form-control" name="designation"
                                        id="designation" value="{{ $user->designation }}">
                                </div>
                                <div class="mb-4">
                                    <label for="" class="mb-2">Mobile</label>
                                    <input type="text" placeholder="Mobile" class="form-control" name="mobile"
                                        id="mobile" value="{{ $user->mobile }}">
                                </div>
                            </div>
                            <div class="card-footer  p-4">
                                <button class="btn btn-primary" type="submit">Update</button>
                            </div>
                        </div>
                    </form>
                    <div class="card border-0 shadow mb-4">
                        <form action="" method="POST" name="changePasswordForm" id="changePasswordForm">
                            <div class="card-body p-4">
                                <h3 class="fs-4 mb-1">Change Password</h3>
                                <div class="mb-4">
                                    <label for="" class="mb-2">Old Password*</label>
                                    <input type="password" name="old_password" id="old_password" placeholder="Old Password"
                                        class="form-control">
                                    <p></p>
                                </div>
                                <div class="mb-4">
                                    <label for="" class="mb-2">New Password*</label>
                                    <input type="password" name="new_password" id="new_password" placeholder="New Password"
                                        class="form-control">
                                    <p></p>
                                </div>
                                <div class="mb-4">
                                    <label for="" class="mb-2">Confirm Password*</label>
                                    <input type="password" name="confirm_password" id="confirm_password"
                                        placeholder="Confirm Password" class="form-control">
                                    <p></p>
                                </div>
                            </div>
                            <div class="card-footer  p-4">
                                <button type="submit" class="btn btn-primary">Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
@push('scripts')
    <script>
        // Update Profile
        $("#profileForm").submit(function(e) {
            e.preventDefault();
            $.ajax({
                url: '{{ route('account.updateProfile') }}',
                type: 'put',
                dataType: 'json',
                data: $("#profileForm").serializeArray(),
                success: function(response) {
                    let errors = response.errors;
                    let fields = ["name", "email"];
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
                        window.location.href = "{{ route('account.profile') }}";
                    }
                }
            });
        });
        // Change Password
        $("#changePasswordForm").submit(function(e) {
            e.preventDefault();
            $.ajax({
                url: '{{ route('account.updatePassword') }}',
                type: 'post',
                dataType: 'json',
                data: $("#changePasswordForm").serializeArray(),
                success: function(response) {
                    let errors = response.errors;
                    let fields = ["old_password", "new_password", "confirm_password"];
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
                        window.location.href = "{{ route('account.profile') }}";
                    }
                }
            });
        });
    </script>
@endpush
