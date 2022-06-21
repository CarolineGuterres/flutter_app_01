import'package:flutter/material.dart';
import 'package:flutter_app_01/model/paciente.dart';
import 'package:flutter_app_01/database/paciente_dao.dart';

class PacienteScreen extends StatelessWidget{
  
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _cartaoController = TextEditingController();


    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Adicionar Paciente'),    
      ), //AppBar
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all (8.0),
            child:Form(
            child: Column(
              children: <Widget>[
                _fotoPaciente(context),
                TextField(
                controller: this._nomeController,
                decoration: InputDecoration(
                    labelText: "Nome"
                  ),//InputDecoration
                    style: TextStyle( fontSize: 24),
                ), //TextField
                TextField(
                  controller: this._emailController,
                  decoration: InputDecoration(
                    labelText: "E-mail"
                  ),//InputDecoration
                    style: TextStyle( fontSize: 24),
                ), //TextField
                TextField(
                  controller: this._cartaoController,
                  decoration: InputDecoration(
                  labelText: "Cartão"
                  ),//InputDecoration
                    style: TextStyle( fontSize: 24),
                ), //TextField
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: RaisedButton(
                    padding: EdgeInsets.all(20),
                    elevation: 10.0, //sombreamento
                    color: Colors.green,
                    onPressed: (){

                      Paciente p = new Paciente(0, this._nomeController.text, this._emailController.text, this._cartaoController.text);
                      PacienteDAO.adicionar(p);
                      Navigator.of(context).pop();
                    },
                  child: Text("SALVAR", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),//Text
                ),//RaisedButton
              ),//Container
              ], //<Widget> []
        ), //Column
      ),//Form
      ),//Padding
    ),//SingleChildScrollView
  );//Scaffold
  
}

Widget _fotoPaciente(BuildContext context){
   return InkWell(
    onTap: (){
      alertTirarFoto(context);
      debugPrint('tirar foto');
    },
   child: CircleAvatar(
    backgroundImage: AssetImage('imagens/camera.jpeg'),
    radius: 70,
   ),//CircleAvatar
  );//InkWell
}

 alertTirarFoto(BuildContext context){
    AlertDialog alert = AlertDialog(
      title: Text('Tirar foto?', style: TextStyle(fontWeight: FontWeight.bold),),
      content: Text('Escolha o modo para tirar foto'),
      elevation: 5.0,
      actions: <Widget>[
        FlatButton(
        child: Text('Câmera'),
        onPressed: (){
          debugPrint('Usuário escolheu câmera');
          Navigator.of(context).pop();
        },
    ),//FlatButton
    FlatButton(
        child: Text('Galeria'),
        onPressed: (){
          debugPrint('Usuário escolheu galeria');
          Navigator.of(context).pop();
        },
    ),//FlatButton
    ], // <Widget> []
    ); //AlertDialog

    showDialog(context: context,
     builder: (BuildContext context){
      return alert;
      }
    );

}

}  