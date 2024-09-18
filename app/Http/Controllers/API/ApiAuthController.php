<?php

namespace App\Http\Controllers\API;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Throwable;

class ApiAuthController extends ApiController
{
    public function userRegister(Request $request)
    {
        try {
            // Validate Data
            $validator = Validator::make($request->all(), [
                'firstname' => ['required'],
                'lastname' => ['required'],
                'email' => ['required', 'regex:/(.+)@(.+)\.(.+)/i'],
                'password' => [
                    'required',
                    'min:6',
                    'regex:/[a-z]/', // must contain at least one lowercase letter
                    'regex:/[A-Z]/', // must contain at least one uppercase letter
                    'regex:/[0-9]/', // must contain at least one digit
                    'regex:/[@$!%*#?&]/', // must contain a special character
                ],
                'cnf_password' => ['required', 'same:password'],
                'mobile_no' => ['required', 'numeric', 'unique:users,mobile_no'],
                'postcode' => ['required', 'numeric', 'min:6'],
                'gender' => ['required', 'in:Male,Female'],
            ], [
                'firstname.required' => 'The first name field is required.',
                'lastname.required' => 'The last name field is required.',
                'email.required' => 'The E-Mail field is required.',
                'email.regex' => 'Enter valid email address.',
                'password.required' => 'The Password field is required.',
                'password.regex' => 'Password must contain at least one lowercase, one uppercase, one digit and a special character.',
                'cnf_password.required' => 'The Confirm Password field is required.',
                'cnf_password.same' => 'The Password and Confirm Password should be the same.',
                'mobile_no.required' => 'The mobile number field is required.',
                'mobile_no.numeric' => 'Enter a valid mobile number.',
                'mobile_no.unique' => 'Entered mobile number is already used.',
                'gender.in' => "Gender should be in Male or Female"
            ]);

            if ($validator->fails()) {
                return $this->validationError("Fail", $validator->errors()->first(), 200);
            }

            $data = $request->all();
            // echo "<pre>"; print_r($data); die;

            // Check if User already exists
            if (User::where('email', $data['email'])->exists()) {
                return $this->errorResponse('This email already exists with another account.', (object)[], 500);
            }

            // Create and save user
            $user = User::Create(
                [
                    'firstname' => $data['firstname'],
                    'lastname' => $data['lastname'],
                    'email' => $data['email'],
                    'password' => Hash::make($data['password']),
                    'mobile_no' => $data['mobile_no'],
                    'postcode' => $data['postcode'],
                    'gender' => $data['gender']
                ]
            );

            return $this->successResponse("USER REGISTERED SUCCESSFULLY", $user, 200);
        } catch (\Throwable $th) {
            return $this->throwableError("Something went wrong", $th->getMessage(), 500);
        }
    }

    public function userLogin(Request $request)
    {
        try {
            $data = $request->all();

            // Validate Data
            $validator = Validator::make($data, [
                'email' => ['required', 'regex:/(.+)@(.+)\.(.+)/i'],
                'password' => ['required'],
            ], [
                'email.required' => 'The E-Mail field is required.',
                'email.regex' => 'Enter a valid email address.',
                'password.required' => 'The Password field is required.',
            ]);

            if ($validator->fails()) {
                return $this->validationError("Fail", $validator->errors()->first(), 200);
            }

            if (Auth::attempt(['email' => $data['email'], 'password' => $data['password']])) {
                $user = Auth::user();
                $token = $user->createToken('user')->accessToken;

                return $this->successResponse("USER LOGGED IN SUCCESSFULLY", [
                    "id" => $user->id,
                    "name" => $user->name,
                    "email" => $user->email,
                    "mobile" => $user->mobile,
                    "token" => $token,
                ]);
            } else {
                return $this->errorResponse("Wrong Credentials", [], 200);
            }
        } catch (Throwable $th) {
            return $this->throwableError("Something went wrong", $th->getMessage(), 500);
        }
    }
}
