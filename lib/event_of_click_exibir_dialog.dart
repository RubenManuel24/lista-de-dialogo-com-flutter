import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class Home2 extends StatefulWidget {
  Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _nameState();
}

class _nameState extends State<Home2> {

  List lista = [];

  void _carregarLista(){

   for(int cont = 0; cont<=10; cont++){
    Map<String, dynamic> map = Map();
    map["nome"] = "Rubem Manuel ${cont}";
    map["descricao"] = "Ele é um bom menino ${cont}";
    lista.add(map);
   }
    
  }
   
  @override
  Widget build(BuildContext context) {
    _carregarLista();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 224, 224),
      appBar: AppBar(
        title: Text("EventOfExibDialig"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, indice){
            return ListTile(
              onTap: () {
                showDialog(
                  context: context, 
                  builder: (context){
                   return AlertDialog(
                      title: Text(lista[indice]["nome"]),
                      titlePadding: EdgeInsets.all(30),
                      titleTextStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.amber),

                      content: Text(lista[indice]["descricao"]),
                      backgroundColor: Colors.grey,
                      actions: <Widget>[
                        TextButton(
                        onPressed: (){
                          print("Clicaste Sim!");
                          Navigator.pop(context);
                        }, 
                        child: Text("Sim"),
                               style: TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 230, 209, 209)),
                         ),
                         TextButton(onPressed: (){
                          print("Clicaste Não!");
                          Navigator.pop(context);
                         }, child: Text("Não"),
                                   style: TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 230, 209, 209)),
                            )

                      ],
                    );
                  });
              },
              title: Text(lista[indice]["nome"]),
              subtitle: Text(lista[indice]["descricao"]),
            );
          }),
      ),
    );
  }
}