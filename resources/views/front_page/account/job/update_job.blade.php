@extends('front_page.layouts.app')
{{-- Update Job --}}
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
                    <form action="" method="POST" name="editJobForm" id="editJobForm">
                        <div class="card border-0 shadow mb-4 ">
                            <div class="card-body card-form p-4">
                                <h3 class="fs-4 mb-1">Update Job Details</h3>
                                <div class="row">
                                    <div class="col-md-6 mb-4">
                                        <label for="title" class="mb-2">Title<span class="req">*</span></label>
                                        <input type="text" placeholder="Job Title" id="title" name="title"
                                            class="form-control" value="{{ $editJob->title }}">
                                        <p class="text-danger"></p>
                                    </div>
                                    <div class="col-md-6  mb-4">
                                        <label for="category" class="mb-2">Category<span class="req">*</span></label>
                                        <select name="category" id="category" class="form-control">
                                            <option value="">Select a Category</option>
                                            @if ($categories->isNotEmpty())
                                                @foreach ($categories as $category)
                                                    <option {{ $editJob->category_id == $category->id ? 'selected' : '' }}
                                                        value="{{ $category->id }}">{{ $category->name }}</option>
                                                @endforeach
                                            @endif
                                        </select>
                                        <p class="text-danger"></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 mb-4">
                                        <label for="jobType" class="mb-2">Job Type<span class="req">*</span></label>
                                        <select class="form-select" name="jobType" id="jobType">
                                            <option value="">Select a Job Type</option>
                                            @if ($jobTypes->isNotEmpty())
                                                @foreach ($jobTypes as $jobType)
                                                    <option {{ $editJob->job_type_id == $jobType->id ? 'selected' : '' }}
                                                        value="{{ $jobType->id }}">{{ $jobType->name }}</option>
                                                @endforeach
                                            @endif
                                        </select>
                                        <p class="text-danger"></p>
                                    </div>
                                    <div class="col-md-6  mb-4">
                                        <label for="vacancy" class="mb-2">Vacancy<span class="req">*</span></label>
                                        <input type="number" min="1" placeholder="Vacancy" id="vacancy"
                                            name="vacancy" class="form-control" value="{{ $editJob->vacancy }}">
                                        <p class="text-danger"></p>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="mb-4 col-md-6">
                                        <label for="salary" class="mb-2">Salary</label>
                                        <input type="text" placeholder="Salary" id="salary" name="salary"
                                            class="form-control" value="{{ $editJob->salary }}">
                                        <p class="text-danger"></p>
                                    </div>

                                    <div class="mb-4 col-md-6">
                                        <label for="location" class="mb-2">Location<span class="req">*</span></label>
                                        <input type="text" placeholder="location" id="location" name="location"
                                            class="form-control" value="{{ $editJob->location }}">
                                        <p class="text-danger"></p>
                                    </div>
                                </div>
                                <div class="mb-4">
                                    <label for="description" class="mb-2">Description<span class="req">*</span></label>
                                    <textarea class="form-control editor" name="description" id="description" cols="5" rows="5"
                                        placeholder="Description">{{ $editJob->description }}</textarea>
                                    <p class="text-danger"></p>
                                </div>
                                <div class="mb-4">
                                    <label for="benefits" class="mb-2">Benefits</label>
                                    <textarea class="form-control editor" name="benefits" id="benefits" cols="5" rows="5"
                                        placeholder="Benefits">{{ $editJob->benefits }}</textarea>
                                </div>
                                <div class="mb-4">
                                    <label for="responsibility" class="mb-2">Responsibility</label>
                                    <textarea class="form-control editor" name="responsibility" id="responsibility" cols="5" rows="5"
                                        placeholder="Responsibility">{{ $editJob->responsibility }}</textarea>
                                </div>
                                <div class="mb-4">
                                    <label for="qualifications" class="mb-2">Qualifications</label>
                                    <textarea class="form-control editor" name="qualifications" id="qualifications" cols="5" rows="5"
                                        placeholder="Qualifications">{{ $editJob->qualifications }}</textarea>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 mb-4">
                                        <label for="experience" class="mb-2">Experience<span
                                                class="req">*</span></label>
                                        <select class="form-select" name="experience" id="experience">
                                            <option value="1" {{ $editJob->experience == 1 ? 'selected' : '' }}>1
                                                Year</option>
                                            <option value="2" {{ $editJob->experience == 2 ? 'selected' : '' }}>2
                                                Years</option>
                                            <option value="3" {{ $editJob->experience == 3 ? 'selected' : '' }}>3
                                                Years</option>
                                            <option value="4" {{ $editJob->experience == 4 ? 'selected' : '' }}>4
                                                Years</option>
                                            <option value="5" {{ $editJob->experience == 5 ? 'selected' : '' }}>5
                                                Years</option>
                                            <option value="6" {{ $editJob->experience == 6 ? 'selected' : '' }}>6
                                                Years</option>
                                            <option value="7" {{ $editJob->experience == 7 ? 'selected' : '' }}>7
                                                Years</option>
                                            <option value="8" {{ $editJob->experience == 8 ? 'selected' : '' }}>8
                                                Years</option>
                                            <option value="9" {{ $editJob->experience == 9 ? 'selected' : '' }}>9
                                                Years</option>
                                            <option value="10" {{ $editJob->experience == 10 ? 'selected' : '' }}>
                                                10+ Years</option>
                                        </select>
                                        <p class="text-danger"></p>
                                    </div>
                                </div>
                                <div class="mb-4">
                                    <label for="keywords" class="mb-2">Keywords</label>
                                    <input type="text" placeholder="keywords" id="keywords" name="keywords"
                                        class="form-control" value="{{ $editJob->keywords }}">
                                </div>
                                <h3 class="fs-4 mb-1 mt-5 border-top pt-5">Company Details</h3>
                                <div class="row">
                                    <div class="mb-4 col-md-6">
                                        <label for="company_name" class="mb-2">Name<span
                                                class="req">*</span></label>
                                        <input type="text" placeholder="Company Name" id="companyName"
                                            name="companyName" class="form-control"
                                            value="{{ $editJob->company_name }}">
                                        <p class="text-danger"></p>
                                    </div>

                                    <div class="mb-4 col-md-6">
                                        <label for="company_location" class="mb-2">Location</label>
                                        <input type="text" placeholder="Location" id="company_location"
                                            name="company_location" class="form-control"
                                            value="{{ $editJob->company_location }}">
                                    </div>
                                </div>
                                <div class="mb-4">
                                    <label for="website" class="mb-2">Website</label>
                                    <input type="text" placeholder="Website" id="website" name="website"
                                        class="form-control" value="{{ $editJob->company_website }}">
                                </div>
                            </div>
                            <div class="card-footer p-4">
                                <button type="submit" class="btn btn-primary">Update Job</button>
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
        $("#editJobForm").submit(function(e) {
            e.preventDefault();
            $("button[type='submit']").prop('disabled', true);
            $.ajax({
                url: '{{ route('account.updateJob', $editJob->id) }}',
                type: 'PUT',
                dataType: 'json',
                data: $("#editJobForm").serializeArray(),
                success: function(response) {
                    $("button[type='submit']").prop('disabled', false);
                    let errors = response.errors;
                    let fields = ['title', 'category', 'jobType', 'vacancy', 'location', 'description',
                        'experience',
                        'companyName'
                    ];
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
                        window.location.href = "{{ route('account.myJobs') }}";
                    }
                }

            });
        });
    </script>
@endpush
