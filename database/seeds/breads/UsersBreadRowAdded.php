<?php

use Illuminate\Database\Seeder;
use TCG\Voyager\Models\DataType;

class UsersBreadRowAdded extends Seeder
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

            $dataType = DataType::where('name', 'users')->first();

            \DB::table('data_rows')->insert(array (
                0 => 
                array (
                    'data_type_id' => $dataType->id,
                    'field' => 'id',
                    'type' => 'number',
                    'display_name' => 'ID',
                    'required' => 1,
                    'browse' => 0,
                    'read' => 0,
                    'edit' => 0,
                    'add' => 0,
                    'delete' => 0,
                    'details' => '{}',
                    'order' => 1,
                ),
                1 => 
                array (
                    'data_type_id' => $dataType->id,
                    'field' => 'name',
                    'type' => 'text',
                    'display_name' => 'Name',
                    'required' => 1,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                    'details' => '{}',
                    'order' => 2,
                ),
                2 => 
                array (
                    'data_type_id' => $dataType->id,
                    'field' => 'email',
                    'type' => 'text',
                    'display_name' => 'Email',
                    'required' => 1,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                    'details' => '{}',
                    'order' => 3,
                ),
                3 => 
                array (
                    'data_type_id' => $dataType->id,
                    'field' => 'password',
                    'type' => 'password',
                    'display_name' => 'Password',
                    'required' => 1,
                    'browse' => 0,
                    'read' => 0,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 0,
                    'details' => '{}',
                    'order' => 4,
                ),
                4 => 
                array (
                    'data_type_id' => $dataType->id,
                    'field' => 'remember_token',
                    'type' => 'text',
                    'display_name' => 'Remember Token',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 0,
                    'edit' => 0,
                    'add' => 0,
                    'delete' => 0,
                    'details' => '{}',
                    'order' => 5,
                ),
                5 => 
                array (
                    'data_type_id' => $dataType->id,
                    'field' => 'created_at',
                    'type' => 'timestamp',
                    'display_name' => 'Created At',
                    'required' => 0,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 0,
                    'add' => 0,
                    'delete' => 0,
                    'details' => '{}',
                    'order' => 6,
                ),
                6 => 
                array (
                    'data_type_id' => $dataType->id,
                    'field' => 'email_verified_at',
                    'type' => 'timestamp',
                    'display_name' => 'Email Verified At',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 0,
                    'edit' => 0,
                    'add' => 0,
                    'delete' => 0,
                    'details' => '{}',
                    'order' => 6,
                ),
                7 => 
                array (
                    'data_type_id' => $dataType->id,
                    'field' => 'updated_at',
                    'type' => 'timestamp',
                    'display_name' => 'Updated At',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 0,
                    'edit' => 0,
                    'add' => 0,
                    'delete' => 0,
                    'details' => '{}',
                    'order' => 7,
                ),
                8 => 
                array (
                    'data_type_id' => $dataType->id,
                    'field' => 'avatar',
                    'type' => 'image',
                    'display_name' => 'Avatar',
                    'required' => 0,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                    'details' => '{}',
                    'order' => 8,
                ),
                9 => 
                array (
                    'data_type_id' => $dataType->id,
                    'field' => 'two_factor_secret',
                    'type' => 'text',
                    'display_name' => 'Two Factor Secret',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 0,
                    'edit' => 0,
                    'add' => 0,
                    'delete' => 0,
                    'details' => '{}',
                    'order' => 8,
                ),
                10 => 
                array (
                    'data_type_id' => $dataType->id,
                    'field' => 'role_id',
                    'type' => 'text',
                    'display_name' => 'Role',
                    'required' => 0,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 1,
                    'details' => '{}',
                    'order' => 9,
                ),
                11 => 
                array (
                    'data_type_id' => $dataType->id,
                    'field' => 'two_factor_recovery_codes',
                    'type' => 'text',
                    'display_name' => 'Two Factor Recovery Codes',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 0,
                    'edit' => 0,
                    'add' => 0,
                    'delete' => 0,
                    'details' => '{}',
                    'order' => 9,
                ),
                12 => 
                array (
                    'data_type_id' => $dataType->id,
                    'field' => 'user_belongsto_role_relationship',
                    'type' => 'relationship',
                    'display_name' => 'Role',
                    'required' => 0,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 0,
                    'details' => '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"display_name","pivot_table":"roles","pivot":"0","taggable":"0"}',
                    'order' => 10,
                ),
                13 => 
                array (
                    'data_type_id' => $dataType->id,
                    'field' => 'user_belongstomany_role_relationship',
                    'type' => 'relationship',
                    'display_name' => 'Roles',
                    'required' => 0,
                    'browse' => 1,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 0,
                    'details' => '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsToMany","column":"id","key":"id","label":"display_name","pivot_table":"user_roles","pivot":"1","taggable":"0"}',
                    'order' => 11,
                ),
                14 => 
                array (
                    'data_type_id' => $dataType->id,
                    'field' => 'settings',
                    'type' => 'hidden',
                    'display_name' => 'Settings',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 0,
                    'edit' => 0,
                    'add' => 0,
                    'delete' => 0,
                    'details' => '{}',
                    'order' => 12,
                ),
                15 => 
                array (
                    'data_type_id' => $dataType->id,
                    'field' => 'user_hasone_student_relationship',
                    'type' => 'relationship',
                    'display_name' => 'students',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 1,
                    'edit' => 1,
                    'add' => 1,
                    'delete' => 0,
                    'details' => '{"model":"App\\\\Models\\\\Student","table":"students","type":"belongsTo","column":"student_id","key":"id","label":"name","pivot_table":"categories","pivot":"0","taggable":"0"}',
                    'order' => 13,
                ),
                16 => 
                array (
                    'data_type_id' => $dataType->id,
                    'field' => 'student_id',
                    'type' => 'text',
                    'display_name' => 'Student Id',
                    'required' => 0,
                    'browse' => 0,
                    'read' => 0,
                    'edit' => 0,
                    'add' => 0,
                    'delete' => 0,
                    'details' => '{}',
                    'order' => 14,
                ),
            ));
        } catch(Exception $e) {
            throw new Exception('exception occur ' . $e);

            \DB::rollBack();
        }

        \DB::commit();
    }
}

