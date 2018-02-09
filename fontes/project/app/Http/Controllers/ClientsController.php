<?php

namespace App\Http\Controllers;

use App\Client;
use Illuminate\Http\Request;

class ClientsController extends Controller
{
    public function cadastrar() {
        return view('cliente.cadastrar');
    }

    public function alterar() {
        
    }

    public function excluir() {
        
    }

    public function list() {
        $clients = Client::all();
        return view('cliente.list', compact('clients'));
    }
}
