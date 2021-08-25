<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class EquipmentPermissionRoleTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //Permissões para o usuário admin
        $role = Role::where('name', 'admin')->firstOrFail();
        $permissions = Permission::where('table_name','equipments')
        ->get();

        $role->permissions()->saveMany($permissions);
    }
}
