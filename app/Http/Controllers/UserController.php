<?php

namespace App\Http\Controllers;

use App\Exports\UsersExport;
use App\Models\City;
use App\Models\Role;
use App\Models\State;
use App\Models\User;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Maatwebsite\Excel\Facades\Excel;

class UserController extends Controller
{
    public function index()
    {
        $users = User::get()->toArray();
        return view('user_list', ['users' => $users]);
    }

    public function userRegister(Request $request)
    {
        $states = State::get()->toArray();
        $roles = Role::get()->toArray();
        if ($request->isMethod('post')) {
            /* Validate Data */
            $validation = [
                'firstname' => ['required', 'alpha'],
                'lastname' => ['required', 'alpha'],
                'state_id' => ['required'],
                'city_id' => ['required'],
                'postcode' => ['required', 'max:6', 'min:6'],
                'gender' => ['required'],
                'mobile_no' => ['required'],
                'hobbies' => ['required', 'array'],
                'email' => ['required', 'regex:/(.+)@(.+)\.(.+)/i', 'unique:users,email'],
                'password' => [
                    'required',
                    'min:6',
                    'regex:/[a-z]/', // must contain at least one lowercase letter
                    'regex:/[A-Z]/', // must contain at least one uppercase letter
                    'regex:/[0-9]/', // must contain at least one digit
                    'regex:/[@$!%*#?&]/', // must contain a special character
                ],
                'password_confirmation' => ['required', 'same:password'],
            ];
            $validation_messages = [
                'firstname.required' => 'The first name is required.',
                'lastname.required' => 'The last name is required.',
                'state_id.required' => "State is required",
                'city_id.required' => "City is required",
                'postcode.required' => "Postcode is required",
                'gender.required' => "Gender is required",
                'mobile_no.required' => "Mobile Number is required",
                'email.required' => 'The E-Mail field is required.',
                'email.regex' => 'Enter valid email address.',
                'email.unique' => 'Entered E-mail has already been taken.',
                'password.required' => 'The Password field is required.',
                'password.regex' => 'Password must contains at least one lowercase, one uppercase, one digit and a special character.',
                'password_confirmation.required' => 'The Confirm Password field is required.',
                'password_confirmation.same' => 'The Password and Confirm Password should be same.',
            ];
            $validator = Validator::make($request->all(), $validation, $validation_messages);
            if ($validator->fails()) {
                return redirect()->back()->withInput()->withErrors($validator->messages());
            }

            $data = $request->all();
            // echo "<pre>"; print_r($data); die;

            $usersCount = User::where('email', $data['email'])->count();
            //Check if User already exists

            if ($usersCount > 0) {
                return redirect()->back()->with('error', 'This email is already exists with another account.');
            } else {

                $hobbies = implode("|", $data['hobbies']);
                $roles = implode("|", $data['roles']);

                $photos = [];
                if ($files = $request->file('photos')) {
                    foreach ($files as $file) {
                        $name = $file->getClientOriginalName();
                        $file->move('image', $name);
                        $images[] = $name;
                    }
                }

                $photos = implode("|", $images);

                $password = Hash::make($data['password']);
                $user = new User;
                $user->firstname = $data['firstname'];
                $user->lastname = $data['lastname'];
                $user->email = $data['email'];
                $user->state_id = $data['state_id'];
                $user->city_id = $data['city_id'];
                $user->postcode = $data['postcode'];
                $user->gender = $data['gender'];
                $user->mobile_no = $data['mobile_no'];
                $user->hobbies = $hobbies;
                $user->hobbies = $roles;
                $user->photos = $photos;
                $user->password = $password;
                $user->save();

                $user = User::findOrFail($user->id);
                $user->roles()->attach($roles);

                return redirect('user-login')->with('success', "Registered Successfully. Please Login");
            }
        }
        return view('user_register', ['states' => $states, 'roles' => $roles]);
    }

    public function userLogin(Request $request)
    {
        if ($request->isMethod('post')) {
            $data = $request->all();
            $rules = [
                'email' => 'required|email',
                'password' => 'required',
            ];

            $messages = [
                'email.required' => 'Please enter your email',
                'email.email' => 'Please enter valid email',
                'password' => 'Please enter password',
            ];

            $validation = Validator::make($data, $rules, $messages);

            if ($validation->fails()) {
                return redirect()->back()->withInput()->withErrors($validation->messages());
            }

            if (Auth::attempt(['email' => $data['email'], 'password' => $data['password']])) {
                return redirect('/user-list')->with('success', "You have been successfully logged in");
            } else {
                return redirect()->back()->with('error', "Invalid Credentials");
            }
        }
        return view('user_login');
    }

    public function logout()
    {
        // echo "test"; die;
        Auth::logout();

        return redirect('user-register')->with('success', 'Logged Out Successfully');
    }

    public function exportCsv()
    {
        return Excel::download(new UsersExport, 'users.csv');
    }

    public function exportExcel()
    {
        return Excel::download(new UsersExport, 'users.xlsx');
    }

    public function exportPdf()
    {
        $users = User::all();
        $pdf = Pdf::loadView('pdf.users', compact('users'));
        return $pdf->download('users.pdf');
    }

    public function getCity($state)
    {
        $cities = City::where(['state_id' => $state])->pluck('city', 'id');
        return response()->json($cities);
    }
}
