<?php use Illuminate\Support\Facades\Auth; ?>
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
        <div class="row jumbotron box8">
            <div class="col-sm-12 mx-t3 mb-4">
                <h2 class="text-center text-info">User List</h2>
            </div>

            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($users as $user)
                        @if($user['id'] != Auth::user()->id)
                        <tr>
                            <td>{{ $user['id'] }}</td>
                            <td>{{ $user['firstname'] }} {{ $user['lastname'] }}</td>
                            <td>{{ $user['email'] }}</td>
                        </tr>
                        @endif
                    @endforeach
                </tbody>
            </table>

        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>

</body>

</html>
