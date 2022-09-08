import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   
   List _item = [];

   void _carregarItens(){
    _item = [];

      for(int cont=0; cont<=50; cont++ ){
         Map<String, dynamic> itens = Map();
         itens["título"] = "${cont} Angolanos são boas pessoas!";
         itens["descricao"] = "${cont} Será? ";
         _item.add(itens);
      }
   }
  @override
  Widget build(BuildContext context) {

   _carregarItens();

    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: _item.length,
          itemBuilder: (context, indice){
             Map<String, dynamic> _itens = _item[indice];
            //print(_item[indice].toString());

            return ListTile(
              title: Text(_itens["título"]),
              subtitle: Text(_itens["descricao"]),
            );
          }),
      ),
    );
  }
}