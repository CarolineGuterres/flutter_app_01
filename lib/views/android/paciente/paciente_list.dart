import'package:flutter/material.dart';
import'package:flutter/widgets.dart';
//import 'package:flutter_app_01/database/paciente_dao.dart';
import 'package:flutter_app_01/model/paciente.dart';


class PacienteList extends StatelessWidget{
    @override
  Widget build(BuildContext context) {

     // List<Paciente> _pacientes = PacienteDAO.listarPacientes;
     // List<Paciente> _pacientes = PacienteDAO.listarPacientes;
    return Scaffold(
        appBar: AppBar(
            title: Text('Pacientes'),
        ),// appBar
        body: Column (
             children: <Widget>[
                Container(
                    //color: Colors.red, 
                    child: TextField(
                        style: TextStyle(fontSize:20),
                        decoration: InputDecoration(
                            labelText:"Pesquisar",
                            hintText: "Pesquisar",
                            prefixIcon: Icon(Icons.search),
                        ),//InputDecoration
                    ),//TextField
                ),//Container
        Expanded(
            child:Container( 
                child:ListView(
                    children: <Widget>[
                        ItemPaciente(),
                    ],//Widget []
                ),//ListView*/
            ),//Container 
        ),//Expanded
    ],//<Wdiget>[]
        ),//Colunm
        floatingActionButton: FloatingActionButton(
            onPressed: (){
                debugPrint('adicionar pacientes');
            },
            child: Icon(Icons.add)
        ),//FloatingActionButton
    );//Scafoold
  }

}

class ItemPaciente extends StatelessWidget{
    
    Widget build (BuildContext context){
        return Column(
            children: <Widget>[
                ListTile(
                            leading:CircleAvatar(
                            // backgroundImage: AssetImage('imagens/avatar.jpeg'), 
                            ),//CircleAvatar
                            title:Text('João',
                            style: TextStyle(fontSize: 24),
                            ),//Text
                            subtitle: Text('joao@iffarroupilha.edu.br',
                            style: TextStyle(fontSize: 12),
                            ),//Text
                            trailing: Icon(Icons.adjust),
                        ),//Listile
                        Divider(
                        color: Colors.black,
                        indent: 70.0,
                        endIndent: 20,
                        thickness: 1.0,
                        height: 0.0,   
                        ),//Divider
            ]
        );//Column
    }
}