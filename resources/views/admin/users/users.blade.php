@extends('front_page.layouts.app')
{{-- Users --}}
@section('main')
    <section class="section-5 bg-2">
        <div class="container py-5">
            <div class="row">
                <div class="col">
                    <nav aria-label="breadcrumb" class=" rounded-3 p-3 mb-4">
                        <ol class="breadcrumb mb-0">
                            <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Home</a></li>
                            <li class="breadcrumb-item active">Users</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3">
                    @include('admin.sidebar')
                </div>
                <div class="col-lg-9">
                    @include('front_page.userMessages')
                    <div class="card border-0 shadow mb-4">
                        <div class="card-body card-form">
                            <div class="d-flex justify-content-between">
                                <div>
                                    <h3 class="fs-4 mb-1">Users</h3>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead class="bg-light">
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Email</th>
                                            <th scope="col">Mobile</th>
                                            <th scope="col">Create Date</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody class="border-0">
                                        @foreach ($users as $user)
                                            <tr class="active">
                                                <td>
                                                    <div class="job-name fw-500">{{ $user->id }}</div>
                                                </td>
                                                <td>
                                                    <div class="job-name fw-500">{{ $user->name }}</div>
                                                </td>
                                                <td>{{ $user->email }}</td>
                                                <td>{{ $user->mobile }}</td>
                                                <td>{{ \Carbon\Carbon::parse($user->created_at)->format('d M, Y') }}</td>
                                                <td>
                                                    <div class="action-dots text-center">
                                                        <button href="#" class="btn" data-bs-toggle="dropdown"
                                                            aria-expanded="false">
                                                            <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
                                                        </button>
                                                        <ul class="dropdown-menu dropdown-menu-end">
                                                            <li><a class="dropdown-item"
                                                                    href="{{ route('admin.user.edit', $user->id) }}"><i
                                                                        class="fa fa-edit" aria-hidden="true"></i> Edit</a>
                                                            </li>
                                                            <li><a class="dropdown-item" href="#"
                                                                    onclick="deleteUser({{ $user->id }});"><i
                                                                        class="fa fa-trash" aria-hidden="true"></i>
                                                                    Remove</a></li>
                                                        </ul>
                                                    </div>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                            <div>
                                {{ $users->links() }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
@endsection
@push('scripts')
    <script>
        //   Delete User
        function deleteUser(id) {
            if (confirm('Are you sure you want to delete?')) {
                $.ajax({
                    url: "{{ route('admin.user.delete', $user->id) }}",
                    type: 'delete',
                    data: {
                        id: id
                    },
                    dataType: 'json',
                    success: function() {
                        window.location.href = "{{ route('admin.users') }}";
                    }
                });
            }
        }
    </script>
@endpush
