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
        $this->seed(ProjetosBreadTypeAdded::class);
        $this->seed(ProjetosBreadRowAdded::class);
        $this->seed(EquipmentsBreadTypeAdded::class);
    }
}
