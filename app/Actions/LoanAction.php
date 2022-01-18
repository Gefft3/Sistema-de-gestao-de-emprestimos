<?php

namespace App\Actions;


use TCG\Voyager\Actions\AbstractAction;


class LoanAction extends AbstractAction
{
    public function getTitle()
    {
        if ($this->data->status == 1 || $this->data->status == 3){
            return '';
        }else if($this->data->status == 2){
            return 'Realizar empréstimo';
        }else if($this->data->status == 4){
            return "Empréstimo realizado";
        }

    }

    public function getIcon()
    {
        if ($this->data->status == 4) {
            return 'voyager-check';
        }
    }

    public function getPolicy()
    {
        return 'read';
    }

    public function getAttributes()
    {

        if($this->data->status == 2){
            return [
                'class' => 'btn btn-info',
                'onclick' => "return loanBtn()"
            ];
        }else if($this->data->status == 4){
            return [
                'class' => 'btn btn-success',
                'onclick' => "alert('Já foi efetuado o empréstimo desse equipamento')",
            ];
        }
        return [''];
    }

    public function getDefaultRoute()
    {
        if($this->data->status == 2){
            return route('loan.create', $this->data->id);
        }
        return redirect("admin/orders");
    }

    public function shouldActionDisplayOnDataType()
    {
            return $this->dataType->slug == 'orders';
    }

}
