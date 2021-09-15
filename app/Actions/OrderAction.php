<?php

namespace App\Actions;

use TCG\Voyager\Actions\AbstractAction;

class OrderAction extends AbstractAction
{
    public function getTitle()
    {

        return $this->data->status == 0 ?  'Solicitar' : 'Solicitado';
    }

    public function getIcon()
    {
        return $this->data->status == 0 ? '' : 'voyager-check';
    }

    public function getPolicy()
    {
        return 'read';
    }

    public function getAttributes()
    {
        if($this->data->status == 0){
            return [
                'class' => 'btn btn-info',
                'onclick' => "return validationBtn()",
            ];
        }
        return [
            'class' => 'btn btn-success',
            'onclick' => "alert('Esse equipamento já foi solicitado')",
        ];


    }

    public function getDefaultRoute()
    {
        return route('order.create', $this->data->id);
    }

    public function shouldActionDisplayOnDataType()
    {
        return $this->dataType->slug == 'materials';
    }
}
