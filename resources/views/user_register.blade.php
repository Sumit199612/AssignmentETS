<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Register</title>

    <style>
        label {
            font-weight: 600;
            color: #666;
        }

        body {
            background: #f1f1f1;
        }

        .box8 {
            box-shadow: 0px 0px 5px 1px #999;
        }

        .mx-t3 {
            margin-top: -3rem;
        }
    </style>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    <div class="container mt-3">
        <form id="userForm" method="POST" action="{{ route('user-register') }}" enctype="multipart/form-data">
            {{ csrf_field() }}

            @if ($errors->any())
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            @endif

            @if (Session::has('error'))
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    {{ Session::get('error') }}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            @endif
            <div class="row jumbotron box8">
                <div class="col-sm-12 mx-t3 mb-4">
                    <h2 class="text-center text-info">Register</h2>
                </div>
                <div class="col-sm-6 form-group">
                    <label for="firstname">First Name</label>
                    <input type="text" class="form-control" name="firstname" id="firstname" placeholder="First Name">
                </div>
                <div class="col-sm-6 form-group">
                    <label for="lastname">Last Name</label>
                    <input type="text" class="form-control" name="lastname" id="lastname" placeholder="Last Name">
                </div>
                <div class="col-sm-6 form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" name="email" id="email"
                        placeholder="Enter your email.">
                </div>
                <div class="col-sm-3 form-group">
                    <label for="state_id">State</label>
                    <select name="state_id" id="state_id" class="form-control">
                        <option value="">Select State</option>
                        @foreach ($states as $state)
                            <option value="{{ $state['id'] }}">{{ $state['name'] }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="col-sm-3 form-group">
                    <label for="city_id">City</label>
                    <select name="city_id" id="city_id" class="form-control">
                        <option value="">Select City</option>
                    </select>
                </div>
                <div class="col-sm-2 form-group">
                    <label for="postcode">Postal-Code</label>
                    <input type="text" class="form-control" name="postcode" id="postcode"
                        placeholder="Postal-Code.">
                </div>
                <div class="col-sm-4 form-group">
                    <label for="gender">Gender</label>
                    <div class="row">
                        <div class="col-sm-3">
                            <input type="radio" name="gender" value="Male"> Male
                        </div>
                        <div class="col-sm-3">
                            <input type="radio" name="gender" value="Female"> Female
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 form-group">
                    <label for="tel">Phone</label>
                    <input type="tel" name="mobile_no" class="form-control" id="tel"
                        placeholder="Enter Your Contact Number.">
                </div>
                <div class="col-sm-6 form-group">
                    <label for="hobbies">Hobbies</label>
                    <div class="row">
                        <div class="col-sm-6">
                            <input type="checkbox" name="hobbies[]" value="Reading"> Reading
                            <input type="checkbox" name="hobbies[]" value="Traveling"> Traveling
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 form-group">
                    <label for="roles">Role</label>
                    <select name="roles[]" multiple id="roles" class="form-control">
                        <option value="">Select Role</option>
                        @foreach ($roles as $role)
                            <option value="{{ $role['id'] }}">{{ $role['name'] }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="col-sm-12 form-group">
                    <label for="photos">Images</label>
                    <input type="file" class="form-control" name="photos[]" multiple>
                </div>
                <div class="col-sm-6 form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password" class="form-control" id="password"
                        placeholder="Enter your password.">
                </div>
                <div class="col-sm-6 form-group">
                    <label for="password_confirmation">Confirm Password</label>
                    <input type="password" name="password_confirmation" class="form-control"
                        id="password_confirmation" placeholder="Re-enter your password.">
                </div>

                <div class="col-sm-12 form-group mb-2 mt-2">
                    <button type="submit" class="btn btn-primary" style="float: inline-end;">Submit</button>
                </div>

            </div>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>

    <script src="{{ asset('/webAssets/plugins/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('webAssets/plugins/jquery-validation/jquery.validate.min.js') }}"></script>
    <script src="{{ asset('webAssets/plugins/jquery-validation/additional-methods.min.js') }}"></script>

    <script>
        $(document).ready(function() {
            $("#userForm").validate({
                rules: {
                    firstname: {
                        required: true,
                        lettersonly: true
                    },
                    lastname: {
                        required: true,
                        lettersonly: true
                    },
                    email: {
                        required: true,
                        email: true
                    },
                    mobile_no: {
                        required: true
                    },
                    postcode: {
                        required: true,
                        digits: true
                    },
                    gender: {
                        required: true
                    },
                    state_id: {
                        required: true
                    },
                    city_id: {
                        required: true
                    },
                    password: {
                        required: true,
                        minlength: 6
                    },
                    password_confirmation: {
                        required: true,
                        equalTo: "#password"
                    }
                },
                messages: {
                    firstname: {
                        required: "Please enter your first name",
                    },
                    lastname: {
                        required: "Please enter your last name",
                    },
                    email: {
                        required: "Please enter a valid email address",
                    },
                    mobile_no: {
                        required: "Please enter your mobile number"
                    },
                    postcode: {
                        required: "Please enter a valid postcode",
                    },
                    gender: {
                        required: "Please select one gender"
                    },
                    state_id: {
                        required: "Please select one state"
                    },
                    city_id: {
                        required: "Please select one city"
                    },
                    password: {
                        required: "Please enter at least 6 characters",
                    },
                    password_confirmation: {
                        required: "Passwords do not match"
                    }
                },
                errorElement: 'div',
                errorPlacement: function(error, element) {
                    error.addClass('invalid-feedback');
                    element.closest('.form-group').append(error);
                },
                highlight: function(element, errorClass, validClass) {
                    $(element).addClass('is-invalid');
                },
                unhighlight: function(element, errorClass, validClass) {
                    $(element).removeClass('is-invalid');
                }
            });
        });
    </script>

    <script>
        $('#state_id').change(function() {
            var state = $(this).val();
            $.ajax({
                url: '/cities/' + state,
                method: 'GET',
                success: function(data) {
                    var options = '<option value="">Select City</option>';
                    $.each(data, function(id, name) {
                        options += '<option value="' + id + '">' + name + '</option>';
                    });
                    $('#city_id').html(options);
                }
            });
        });
    </script>
</body>

</html>
