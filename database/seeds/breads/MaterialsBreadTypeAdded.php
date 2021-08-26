<?php

use Illuminate\Database\Seeder;
use TCG\Voyager\Models\DataType;
use TCG\Voyager\Models\Menu;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Models\MenuItem;

class MaterialsBreadTypeAdded extends Seeder
{
    /**
     * Auto generated seed file
     *
     * @return void
     *
     * @throws Exception
     */
    public function run()
    {
        try {
            \DB::beginTransaction();

            $dataType = DataType::where('name', 'materials')->first();

            if (is_bread_translatable($dataType)) {
                $dataType->deleteAttributeTranslations($dataType->getTranslatableAttributes());
            }

            if ($dataType) {
                DataType::where('name', 'materials')->delete();
            }

            \DB::table('data_types')->insert(array (
                'name' => 'materials',
                'display_name_singular' => 'Material',
                'display_name_plural' => 'Materials',
                'slug' => 'materials',
                'icon' => 'voyager-laptop',
                'model_name' => 'App\\Models\\Material',
                'controller' => NULL,
                'policy_name' => NULL,
                'generate_permissions' => 1,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'description' => NULL,
                'server_side' => 0,
                'updated_at' => '2021-08-26 03:36:00',
                'created_at' => '2021-08-26 03:36:00',
                'id' => 14,
            ));

            
            

            Voyager::model('Permission')->generateFor('materials');

            $menu = Menu::where('name', config('voyager.bread.default_menu'))->firstOrFail();

            $menuItem = MenuItem::firstOrNew([
                'menu_id' => $menu->id,
                'title' => 'Materials',
                'url' => '',
                'route' => 'voyager.materials.index',
            ]);

            $order = Voyager::model('MenuItem')->highestOrderMenuItem();

            if (!$menuItem->exists) {
                $menuItem->fill([
                    'target' => '_self',
                    'icon_class' => 'voyager-laptop',
                    'color' => null,
                    'parent_id' => null,
                    'order' => $order,
                ])->save();
            }
        } catch(Exception $e) {
           throw new Exception('Exception occur ' . $e);

           \DB::rollBack();
        }

        \DB::commit();
    }
}
