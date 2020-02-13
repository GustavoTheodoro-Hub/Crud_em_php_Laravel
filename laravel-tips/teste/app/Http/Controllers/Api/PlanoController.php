<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Plano;

class PlanoController extends Controller
{
    public function add(Request $request){
        try{
            $plano = new Plano();
            
            $plano->plano = $request->plano;
            $plano->preco = $request->preco;
         


            $plano->save();

            return['retorno'=>'ok'];
        }
        catch(\Exception $erro){

            return['retorno'=>'erro', 'details'=>$erro];    

        }


    }
    public function list(){

        $plano = Plano::all();

        return $plano;
    }
}
