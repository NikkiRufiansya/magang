<?php

namespace App\Http\Controllers;
use App\Pengguna; //File Model
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class PenggunaController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function index()
    {
        $data = DB::table('pengguna')->get();
        return response($data);
    }

    public function conditions(Request $request)
    {
       
        $bodyContent = $request->all();
        $select = $bodyContent["select"];
        $limit = $bodyContent["limit"];
        $conditions = $bodyContent["conditions"];
        $type = $conditions[0]['type'];
        $data_condition = $conditions[0]['data'];
        $data_function = $conditions[7]['function'];
        $where_not_in = $data_function[0]['data'];
        $where_in = $data_function[1]['data'];
        $current_page = $conditions[8]['current_page'];
        $order = $conditions[9]['order'];
        $order_name = $order[0];
        $order_date = $order[1];
        
        $query = null;

        if($type == 'whereColumn'){
            $query = DB::table('pengguna')->whereColumn($data_condition[0],$data_condition[1],$data_condition[2])->get();
        }else if($type == 'whereNull'){
            $query = DB::table('pengguna')->whereNull($data_condition[0])->get();
        }else if($type == 'whereNotIn'){
            $query = DB::table('pengguna')->whereNotIn($data_condition[0],[$data_condition[1],$data_condition[2]])->get();
        }else if($type == 'whereIn'){
            $query = DB::table('pengguna')->whereIn($data_condition[0],[$data_condition[1],$data_condition[2]])->get();
        }else if ($type == 'whereNotBetween') {
            $query = DB::table('pengguna')->whereNotBetween($data_condition[0],[$data_condition[1],$data_condition[2]])->get();    
        }else if ($type == 'whereBetween') {
            $query = DB::table('pengguna')->whereBetween($data_condition[0],[$data_condition[1],$data_condition[2]])->get();  
        }else if ($type == 'orWhere'){
            $query = DB::table('pengguna')->orWhere($data_condition[0],$data_condition[1],$data_condition[2])->get();
        }else if ($type == 'orWhere') {
           
        }else if($current_page){
            $query = DB::table('pengguna')->paginate($current_page);
        }else if($order){
           $query = DB::table('pengguna')->orderBy('firstname', 'desc')->get();
           $query = DB::table('pengguna')->orderBy('created_at', 'desc')->get();
        }


        
        

        return response($query);   
    }



    public function limit()
    {
        $data = Pengguna::all()->take(10);
        return response($data);
    }
    public function show($id)
    {
        $data = Pengguna::where('id', $id)->get();
        return response($data);
    }
    public function store(Request $request)
    {
        $data = new Pengguna();
        $data->firstname = $request->input('firstname');
        $data->lastname = $request->input('lastname');
        $data->gender = $request->input('gender');
        $data->status = $request->input('status');
        $data->email = $request->input('email');
        $data->city = $request->input('city');
        $data->address = $request->input('address');
        $data->phone = $request->input('phone');
        $data->save();

        return response('Berhasil Tambah Data');
    }
    public function update(Request $request, $id)
    {
        $data = Pengguna::where('id', $id)->first();
        $data->firstname = $request->input('firstname');
        $data->lastname = $request->input('lastname');
        $data->gender = $request->input('gender');
        $data->status = $request->input('status');
        $data->email = $request->input('email');
        $data->city = $request->input('city');
        $data->address = $request->input('address');
        $data->phone = $request->input('phone');
        $data->save();

        return response('Berhasil Merubah Data');
    }

    public function destroy($id)
    {
        $data = Pengguna::where('id', $id)->first();
        $data->delete();

        return response('Berhasil Menghapus Data');
    }
}
