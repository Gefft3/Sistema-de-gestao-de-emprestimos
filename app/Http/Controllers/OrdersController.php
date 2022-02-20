<?php

namespace App\Http\Controllers;

use TCG\Voyager\Facades\Voyager;
use App\Models\Material;
use App\Models\Order;
use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
class OrdersController extends Controller
{
    public function create($id)
    {
        //
        $material = Material::find($id);

        return view('order.create', compact('material'));
    }
    public function store(Request $request)
    {
        //criação de uma solicitação e atualização de status
        $order = new Order();
        $order->justification = $request->justification;
        $order->status = 1;
        $order->material_id = $request->material;
        $order->user_id = Auth::user()->id;
        $order->save();
        $material = Material::find($request->material);
        $material->status = 1;
        $material->save();
        return redirect('admin/materials');
    }
    public function edit($id)
    {
        //
        $order = Order::find($id);
        $student = Student::where('user_id', $id)->first();

        return view('order.edit', compact('order','student'));
    }
    public function update(Request $request, $id)
    {
        //
        if (!$order = Order::find($id)) {
            return redirect()-back();
        }
        $order->reply = $request->reply;
        $order->status = $request->status;
        $order->save();
        $material = Material::find($order->material_id);
        if ($request->status==2) {
            $material->status = 2;
        }else{
            $material->status = 0;
        }
        $material->save();
        return redirect('admin/orders');
    }

}
