<?php

use Illuminate\Database\Seeder;
use TCG\Voyager\Traits\Seedable;

class VoyagerDeploymentOrchestratorSeeder extends Seeder
{
    use Seedable;

    protected $seedersPath = __DIR__.'/';

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->seed(MaterialsBreadTypeAdded::class);
        $this->seed(MaterialsBreadRowAdded::class);
        $this->seed(StudentsBreadTypeAdded::class);
        $this->seed(StudentsBreadRowAdded::class);
    }
}
