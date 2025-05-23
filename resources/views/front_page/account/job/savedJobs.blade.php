@extends('front_page.layouts.app')
{{-- Saved Jobs --}}
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
                    <div class="card border-0 shadow mb-4 p-3">
                        <div class="card-body card-form">
                            <div class="d-flex justify-content-between">
                                <div>
                                    <h3 class="fs-4 mb-1">Saved Jobs</h3>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table ">
                                    <thead class="bg-light">
                                        <tr>
                                            <th scope="col">Title</th>
                                            <th scope="col">Saved Date</th>
                                            <th scope="col">Applicants</th>
                                            <th scope="col">Status</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody class="border-0">
                                        @foreach ($savedJobs as $savedJob)
                                            <tr class="active">
                                                <td>
                                                    <div class="job-name fw-500">{{ $savedJob->job->title }}</div>
                                                    <div class="info1">{{ $savedJob->job->jobType->name }}.
                                                        {{ $savedJob->location }}
                                                    </div>
                                                </td>
                                                <td>{{ \Carbon\Carbon::parse($savedJob->created_at)->format('d M, Y') }}
                                                </td>
                                                <td>{{ $savedJob->job->applicationsCount->count() }} Applications</td>
                                                <td>
                                                    <div class="job-status text-capitalize">active</div>
                                                </td>
                                                <td>
                                                    <div class="action-dots float-end">
                                                        <button href="#" class="btn" data-bs-toggle="dropdown"
                                                            aria-expanded="false">
                                                            <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
                                                        </button>
                                                        <ul class="dropdown-menu dropdown-menu-end">
                                                            <li><a class="dropdown-item"
                                                                    href="{{ route('jobDetail', $savedJob->id) }}"> <i
                                                                        class="fa fa-eye" aria-hidden="true"></i> View</a>
                                                            </li>
                                                            <li><a class="dropdown-item" href="#"
                                                                    onclick="deleteJob({{ $savedJob->id }})"><i
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
                                {{ $savedJobs->links() }}
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
        function deleteJob(id) {
            if (confirm("Are you sure you want to delete?")) {
                $.ajax({
                    url: "{{ route('account.removeSavedJob') }}",
                    type: 'POST',
                    data: {
                        id: id
                    },
                    dataType: 'json',
                    success: function(response) {
                        window.location.href = "{{ url()->current() }}";
                    }
                });
            }
        }
    </script>
@endpush
