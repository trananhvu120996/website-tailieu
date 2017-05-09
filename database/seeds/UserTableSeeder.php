<?php

use Illuminate\Database\Seeder;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         DB::table('users')->insert(
             [
        [
            'email' => 'admin',
            'password' => bcrypt('123456'),
            'level' => 1,
            'created_at'=> new DateTime(),
        ],

        [
            'email' => 'member',
            'password' => bcrypt('123456'),
            'level' => 2,
            'created_at'=> new DateTime(),
        ]
        
             ]);
    }
}
