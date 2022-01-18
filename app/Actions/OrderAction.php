<?php

namespace App\Actions;


use TCG\Voyager\Actions\AbstractAction;


class OrderAction extends AbstractAction
{
    public function getTitle()
    {

        return $this->data->status == 1 ?  'Avaliar' : 'Avaliado';
    }

    public function getIcon()
    {
        return $this->data->status == 1 ? '' : 'voyager-check';
    }

    public function getPolicy()
    {
        return 'read';
    }

    public function getAttributes()
    {
        if($this->data->status == 1){
            return [
                'class' => 'btn btn-info',
            ];
        }
        return [
            'class' => 'btn btn-success',
            'onclick' => "alert('Este equipamento já foi avaliado')",
        ];
    }

    public function getDefaultRoute()
    {
        if($this->data->status == 1){
            return route('order.edit', $this->data->id);
        }
        return redirect("admin/materials");
    }

    public function shouldActionDisplayOnDataType()
    {
        //em solicitações fazer botão de devolução
        return $this->dataType->slug == 'orders';



    }
}
