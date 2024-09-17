<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>

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
    <div class="container" style="margin-top: 10em">
        <form id="userForm" method="POST" action="{{ route('user-login') }}" enctype="multipart/form-data">
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
                    <h2 class="text-center text-info">Login</h2>
                </div>
                <div class="col-sm-6 form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" name="email" id="email"
                        placeholder="Enter your email.">
                </div>
                <div class="col-sm-6 form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password" class="form-control" id="password"
                        placeholder="Enter your password.">
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
                    email: {
                        required: true,
                        email: true
                    },
                    password: {
                        required: true,
                        minlength: 6
                    }
                },
                messages: {
                    email: {
                        required: "Please enter a valid email address",
                    },
                    password: {
                        required: "Please enter at least 6 characters",
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
</body>

</html>
