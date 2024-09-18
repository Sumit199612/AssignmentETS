<?php

namespace App\Http\Controllers\API;

use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Throwable;

class RolesController extends ApiController
{
    public function roleList()
    {
        try {
            $authUser = Auth::user()->id;
            $roles = Role::get();

            if ($roles) {
                return $this->successResponse("Roles Found", $roles, 200);
            } else {
                return $this->notFoundResponse("Data Not Found", (object) [], 200);
            }
        } catch (Throwable $th) {
            return $this->throwableError("Something went wrong", $th->getMessage(), 500);
        }
    }

    public function createRole(Request $request)
    {
        try {
            $validation = [
                'name' => ['required', 'string'],
            ];
            $validator = Validator::make($request->all(), $validation);

            if ($validator->fails()) {
                return $this->validationError("Fail", $validator->errors()->first(), 200);
            }

            $roleData = Role::where(['name' => ucfirst($request->name)])->get()->toArray();

            if ($roleData) {
                return $this->errorResponse("Role already exists", (object) [], 200);
            } else {
                $role = new Role;
                $role->name = ucfirst($request->name);
                $role->save();

                return $this->successResponse("Role added", $role, 200);
            }
        } catch (Throwable $th) {
            return $this->throwableError("Something went wrong", $th->getMessage(), 500);
        }
    }

    public function updateRole(Request $request)
    {
        try {
            $validation = [
                'id' => ['required', 'numeric'],
                'name' => ['required'],
            ];
            $validator = Validator::make($request->all(), $validation);

            if ($validator->fails()) {
                return $this->validationError("Fail", $validator->errors()->first(), 200);
            }

            $role = Role::where(['id' => $request->id])->first();
            if($role){
                $role->update([
                    'name' => ucfirst($request->name)
                ]);
                return $this->successResponse("Role updated", $role, 200);
            }else{
                return $this->notFoundResponse("Role not found", (object)[], 200);
            }
        } catch (Throwable $th) {
            return $this->throwableError("Something went wrong", $th->getMessage(), 500);
        }
    }

    public function deleteRole(Request $request)
    {
        try {
            $validation = [
                'id' => ['required', 'numeric'],
            ];
            $validator = Validator::make($request->all(), $validation);

            if ($validator->fails()) {
                return $this->validationError("Fail", $validator->errors()->first(), 200);
            }

            $role = Role::where(['id' => $request->id])->first();
            if($role){
                $role->delete();
                return $this->successResponse("Role deleted", (object)[], 200);
            }else{
                return $this->notFoundResponse("Role not found", (object)[], 200);
            }
        } catch (\Throwable $th) {
            return $this->throwableError("Something went wrong", $th->getMessage(), 500);
        }
    }
}
