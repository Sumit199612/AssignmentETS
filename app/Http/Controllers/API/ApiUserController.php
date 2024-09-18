<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Throwable;

class ApiUserController extends ApiController
{
    public function userList()
    {
        try {
            $authUser = Auth::user()->id;
            $users = User::where('id', '!=', $authUser)->get();

            if ($users) {
                return $this->successResponse("Users Found", $users, 200);
            } else {
                return $this->notFoundResponse("Data Not Found", (object) [], 200);
            }
        } catch (Throwable $th) {
            return $this->throwableError("Something went wrong", $th->getMessage(), 500);
        }
    }
}
