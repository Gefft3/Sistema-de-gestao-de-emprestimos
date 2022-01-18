<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use TCG\Voyager\Facades\Voyager;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
        Schema::defaultStringLength(191);
        Voyager::addAction(\App\Actions\OrderAction::class);
        Voyager::addAction(\App\Actions\MaterialAction::class);
        Voyager::addAction(\App\Actions\LoanAction::class);
        Voyager::addAction(\App\Actions\DevolutionAction::class);
    }
}
