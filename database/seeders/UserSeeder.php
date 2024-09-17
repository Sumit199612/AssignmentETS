<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $adminPassword = Hash::make('Test@123456');
        $userPassword = Hash::make('Test@12345');
        $user = [
            [
                'firstname' => 'Super',
                'lastname' => 'Admin',
                'email' => "test.admin@yopmail.com",
                'mobile_no' => 9999919999,
                'postcode' => 394210,
                'gender' => 'male',
                'password' => $adminPassword,
            ],
            [
                'firstname' => 'Test',
                'lastname' => 'User',
                'email' => "exampleuser00@yopmail.com",
                'mobile_no' => 9999919991,
                'postcode' => '394210',
                'gender' => 'male',
                'password' => $userPassword,
            ],
        ];

        User::insert($user);
    }
}
