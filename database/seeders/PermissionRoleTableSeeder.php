<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use TCG\Voyager\Models\Permission;
use TCG\Voyager\Models\Role;

class PermissionRoleTableSeeder extends Seeder
{
    /**
     * Auto generated seed file.
     *
     * @return void
     */
    public function run()
    {
        $role = Role::where('name', 'admin')->firstOrFail();

        $permissions = Permission::all();

        $role->permissions()->sync(
            $permissions->pluck('id')->all()
        );

        //permissões do usuário Default:inicio
        $role = Role::where('name', 'user')->firstOrFail();

        $permissions = Permission::where('key','browse_admin')
        ->orWhere('table_name','posts')
        ->orWhere('table_name','pages')
        ->orWhere('table_name','categories')
        ->get();

        $role->permissions()->sync(
            $permissions->pluck('id')->all()
        );
        //permissões do usuário Default:fim
    }
}
