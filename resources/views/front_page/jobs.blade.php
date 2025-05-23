@extends('front_page.layouts.app')
@section('main')
    {{-- Front Jobs Page --}}
    <section class="section-3 py-5 bg-2 ">
        <div class="container">
            <div class="row">
                <div class="col-6 col-md-10 ">
                    <h2>Find Jobs</h2>
                </div>
                <div class="col-6 col-md-2">
                    <div class="align-end">
                        <select name="sort" id="sort" class="form-control">
                            <option value="1" {{ Request::get('sort') == '1' ? 'selected' : '' }}>Latest</option>
                            <option value="0" {{ Request::get('sort') == '0' ? 'selected' : '' }}>Oldest</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="row pt-5">
                <div class="col-md-4 col-lg-3 sidebar mb-4">
                    <form action="" name="searchForm" id="searchForm" method="POST">
                        <div class="card border-0 shadow p-4">
                            <div class="mb-4">
                                <h2>Keywords</h2>
                                <input type="text" name="keyword" id="keyword" placeholder="Keywords"
                                    class="form-control" value="{{ Request::get('keyword') }}">
                            </div>
                            <div class="mb-4">
                                <h2>Location</h2>
                                <input type="text" name="location" id="location" placeholder="Location"
                                    class="form-control" value="{{ Request::get('location') }}">
                            </div>
                            <div class="mb-4">
                                <h2>Category</h2>
                                <select name="category" id="category" class="form-control">
                                    <option value="">Select a Category</option>
                                    @if ($categories->isNotEmpty())
                                        @foreach ($categories as $category)
                                            <option {{ Request::get('category') == $category->id ? 'selected' : '' }}
                                                value="{{ $category->id }}">{{ $category->name }}</option>
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                            <div class="mb-4">
                                <h2>Job Type</h2>
                                @if ($jobTypes->isNotEmpty())
                                    @foreach ($jobTypes as $jobType)
                                        <div class="form-check mb-2">
                                            <input class="form-check-input" name="job_type" type="checkbox"
                                                value="{{ $jobType->id }}" id="job_type_{{ $jobType->id }}"
                                                {{ in_array($jobType->id, $jobTypeArray) ? 'checked' : '' }}>
                                            <label class="form-check-label "
                                                for="job_type_{{ $jobType->id }}">{{ $jobType->name }}</label>
                                        </div>
                                    @endforeach
                                @endif
                            </div>
                            <div class="mb-4">
                                <h2>Experience</h2>
                                <select name="experience" id="experience" class="form-control">
                                    <option value="">Select Experience</option>
                                    <option value="1" {{ Request::get('experience') == 1 ? 'selected' : '' }}>1 Year
                                    </option>
                                    <option value="2" {{ Request::get('experience') == 2 ? 'selected' : '' }}>2
                                        Years</option>
                                    <option value="3" {{ Request::get('experience') == 3 ? 'selected' : '' }}>3
                                        Years</option>
                                    <option value="4" {{ Request::get('experience') == 4 ? 'selected' : '' }}>4
                                        Years</option>
                                    <option value="5" {{ Request::get('experience') == 5 ? 'selected' : '' }}>5
                                        Years</option>
                                    <option value="6" {{ Request::get('experience') == 6 ? 'selected' : '' }}>6
                                        Years</option>
                                    <option value="7" {{ Request::get('experience') == 7 ? 'selected' : '' }}>7
                                        Years</option>
                                    <option value="8" {{ Request::get('experience') == 8 ? 'selected' : '' }}>8
                                        Years</option>
                                    <option value="9" {{ Request::get('experience') == 9 ? 'selected' : '' }}>9
                                        Years</option>
                                    <option value="10" {{ Request::get('experience') == 10 ? 'selected' : '' }}>10+
                                        Years</option>
                                </select>
                            </div>
                            <button class="btn btn-primary" type="submit">Search</button>
                            <a class="btn btn-dark mt-2" type="submit" href="{{ route('jobs') }}">Reset</a>
                        </div>
                    </form>
                </div>
                <div class="col-md-8 col-lg-9 ">
                    <div class="job_listing_area">
                        <div class="job_lists">
                            <div class="row">
                                @if ($jobs->isNotEmpty())
                                    @foreach ($jobs as $job)
                                        <div class="col-md-4">
                                            <div class="card border-0 p-3 shadow mb-4">
                                                <div class="card-body">
                                                    <h3 class="border-0 fs-5 pb-2 mb-0">{{ $job->title }}</h3>
                                                    <p>{{ Str::words(strip_tags($job->description), $words = 10, '...') }}
                                                    </p>
                                                    <div class="bg-light p-3 border">
                                                        <p class="mb-0">
                                                            <span class="fw-bolder"><i class="fa fa-map-marker"></i></span>
                                                            <span class="ps-1">{{ $job->location }}</span>
                                                        </p>
                                                        <p class="mb-0">
                                                            <span class="fw-bolder"><i class="fa fa-clock-o"></i></span>
                                                            <span class="ps-1">{{ $job->jobType->name }}</span>
                                                        </p>
                                                        @if (!is_null($job->salary))
                                                            <p class="mb-0">
                                                                <span class="fw-bolder"><i class="fa fa-usd"></i></span>
                                                                <span class="ps-1">{{ $job->salary }}</span>
                                                            </p>
                                                        @endif
                                                    </div>
                                                    <div class="d-grid mt-3">
                                                        <a href="{{ route('jobDetail', $job->id) }}"
                                                            class="btn btn-primary btn-lg">Details</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                    <div class="col-md-12">
                                        {{ $jobs->withQueryString()->links() }}
                                    </div>
                                @else
                                    <div class="col-md-12">
                                        <h6 class="text-center">Jobs not found.</h6>
                                    </div>
                                @endif
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
        $("#searchForm").submit(function(e) {
            e.preventDefault();

            let url = '{{ route('jobs') }}?';

            let keyword = $("#keyword").val();
            let location = $("#location").val();
            let category = $("#category").val();
            let experience = $("#experience").val();
            let sort = $("#sort").val();
            let checkedJobTypes = $("input:checkbox[name='job_type']:checked").map(function() {
                return $(this).val();
            }).get();

            if (keyword != "") {
                url += '&keyword=' + keyword;
            }
            if (location != "") {
                url += '&location=' + location;
            }
            if (category != "") {
                url += '&category=' + category;
            }
            if (experience != "") {
                url += '&experience=' + experience;
            }
            if (checkedJobTypes != "") {
                url += '&jobType=' + checkedJobTypes;
            }

            url += "&sort=" + sort;

            window.location.href = url;

        })

        $("#sort").change(function() {
            $("#searchForm").submit();
        });
    </script>
@endpush
