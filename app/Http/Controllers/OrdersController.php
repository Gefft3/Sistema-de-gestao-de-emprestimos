<?php

namespace App\Http\Controllers;

use TCG\Voyager\Facades\Voyager;
use App\Models\Material;
use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
class OrdersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($id)
    {
        //
        $material = Material::find($id);

        return view('order.create', compact('material'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
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

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $order = Order::find($id);

        return view('order.edit', compact('order'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
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
        //fazer if depois, id nao pode ficar estatico
        $material->status = 2;
        $material->save();
        return redirect('admin/orders');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
