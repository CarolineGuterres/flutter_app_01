import'package:flutter/material.dart';

class PacienteScreen extends StatelessWidget{
  
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Adicionar Paciente'),    
      ), //AppBar
      body: Column(
        children: <Widget>[
          TextField(
           decoration: InputDecoration(
              labelText: "Nome"
            ),//InputDecoration
              style: TextStyle( fontSize: 24),
          ), //TextField
           TextField(
            decoration: InputDecoration(
              labelText: "E-mail"
            ),//InputDecoration
              style: TextStyle( fontSize: 24),
          ), //TextField
          TextField(
              decoration: InputDecoration(
              labelText: "Cartão"
            ),//InputDecoration
              style: TextStyle( fontSize: 24),
          ), //TextField
          TextField(
            decoration: InputDecoration(
              labelText: "Senha"
            ),//InputDecoration
              style: TextStyle( fontSize: 24),
          ), //TextField
          RaisedButton(
           onPressed: (){
          },
            child: Text("SALVAR"),
          )//RaisedButton
        ], //<Widget> []
      ), //Column
  );//Scaffold
  
}
}  