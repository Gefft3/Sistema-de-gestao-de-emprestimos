<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use TCG\Voyager\Traits\Seedable;

class DatabaseSeeder extends Seeder
{
    use Seedable;

    protected $seedersPath = __DIR__.'/';
    /**
     * Seed the application's database.
     *
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        /*
        $this->seedersPath = database_path('seeds').'/';
        $this->seed('VoyagerDatabaseSeeder');
        $this->seed('VoyagerDummyDatabaseSeeder');
        */
        $this->call(VoyagerDatabaseSeeder::class);
        $this->call(VoyagerDummyDatabaseSeeder::class);

        //arquivos gerados pelo seeder de BREADS
        $this->seedersPath = database_path('seeds').'/breads'.'/';
        $this->seed('VoyagerDeploymentOrchestratorSeeder');
        //$this->seedersPath = database_path('seeds').'/';
        //$this->seed('MaterialPermissionRoleTableSeeder');
        //$this->seed('StudentPermissionRoleTableSeeder');
        $this->call(MaterialPermissionRoleTableSeeder::class);
        $this->call(StudentPermissionRoleTableSeeder::class);
    }
}
