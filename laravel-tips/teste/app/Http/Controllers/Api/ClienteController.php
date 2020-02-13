<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;


use App\cliente;
use Illuminate\Foundation\Console\Presets\React;

class ClienteController extends Controller
{
    public function status(){
        return ['status' => 'ok'];
    }

    public function add(Request $request){
        try{
            $cliente = new cliente();
            
            $cliente->nome = $request->nome;
            $cliente->email = $request->email;
            $cliente->telefone = $request->telefone;
            $cliente->estado = $request->estado;
            $cliente->cidade = $request->cidade;
            $cliente->data_nasc = $request->data_nasc;
            $cliente->plano1 = $request->plano1;
            $cliente->plano2 = $request->plano2;
            $cliente->plano3 = $request->plano3;


            $cliente->save();

            return['retorno'=>'ok'];
        }
        catch(\Exception $erro){

            return['retorno'=>'erro', 'details'=>$erro];    

        }


    }

    public function list(){

        $cliente = Cliente::all();

        return $cliente;
    }

   
    public function select($id){

        $cliente = cliente::find($id);

        return $cliente;

    }

    public function update(Request $request, $id){
        try{
            $cliente = cliente::find($id);

            $cliente->nome = $request->nome;
            $cliente->email = $request->email;
            $cliente->telefone = $request->telefone;
            $cliente->estado = $request->estado;
            $cliente->cidade = $request->cidade;
            $cliente->data_nasc = $request->data_nasc;
            $cliente->plano1 = $request->plano1;
            $cliente->plano2 = $request->plano2;
            $cliente->plano3 = $request->plano3;

            $cliente->save();

            return ['retorno'=>'ok'];

        }
        catch(\Exception $erro){

            return['retorno'=>'erro', 'details'=>$erro];

        }


    }

    public function delete($id){
        try{
            
            $cliente = cliente::find($id);

            $cliente->delete();

            return ['retorno'=>'ok'];
            


        }
        catch(\Exception $erro){
    
            return['retorno'=>'erro', 'details'=>$erro];
        }


    }



}
