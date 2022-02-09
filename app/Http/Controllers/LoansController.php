<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Loan;
use App\Models\Material;
use App\Models\Order;
use Illuminate\Support\Facades\Auth;

class LoansController extends Controller
{
    //
    public function create($id){
        $order = Order::find($id);
        $material = Material::find($order->material_id);
        return view('loan.create', compact('order','material'));
    }
    public function store(Request $request){
        $user_id = Auth::user()->id;
        $material = Material::find($request->material);
        $loan = new Loan();
        $loan->description = $material->name . ' Solicitado por ' . Auth::user()->name;
        $loan->withdrawal_at = $request->date;
        $loan->returned_at = null;
        $loan->employee_returned = null;
        $loan->employee_loan = $user_id;
        $loan->order_id = $request->order;
        $loan->obs = $request->obs;
        $loan->save();
        $order = Order::find($request->order);
        $order->status = 4;
        $order->save();
        $material->status = 3;
        $material->save();
        return redirect('admin/orders');
    }

    public function edit($id){
        $order = Order::find($id);
        $material = Material::find($order->material_id);
        $loan = Loan::where('order_id', $id)->first();
        return view('loan.edit', compact('order','material','loan'));
    }

    public function update(Request $request, $id){
        $order = Order::find($id);
        $material = Material::find($order->material_id);
        $loan = Loan::where('order_id', $id)->first();
        $user_id = Auth::user()->id;
        $loan->returned_at = $request->date_return;
        $loan->employee_returned = $user_id;
        $loan->obs = $request->obs;
        $loan->save();
        $order = Order::find($request->order);
        $order->status = 5;
        $order->save();
        $material->status = 0;
        $material->save();
        return redirect('admin/orders');
    }


}
