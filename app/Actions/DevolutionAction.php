<?php

namespace App\Actions;


use TCG\Voyager\Actions\AbstractAction;


class DevolutionAction extends AbstractAction
{
    public function getTitle()
    {
        if($this->data->status == 4){
            return "Realizar devolução";
        }else if($this->data->status == 5){
            return "Equipamento devolvido";
        }

    }

    public function getIcon()
    {
        if ($this->data->status == 5) {
            return 'voyager-check';
        }
    }

    public function getPolicy()
    {
        return 'read';
    }

    public function getAttributes()
    {
        if($this->data->status == 4){
            return [
                'class' => 'btn btn-info',
                'onclick' => "return returnBtn()"
            ];
        }else if($this->data->status == 5){
            return [
                'class' => 'btn btn-success',
                'onclick' => "alert('Este equipamento já foi devolvido')"
        ];
        }
        return [''];

    }

    public function getDefaultRoute()
    {
        if($this->data->status == 4){
            return route('loan.edit', $this->data->id);
        }
        return redirect("admin/orders");
    }

    public function shouldActionDisplayOnDataType()
    {
            return $this->dataType->slug == 'orders';
    }

}
