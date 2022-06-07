import'package:flutter/material.dart';
import'package:flutter/widgets.dart';
//import 'package:flutter_app_01/database/paciente_dao.dart';
import 'package:flutter_app_01/model/paciente.dart';
import 'package:flutter_app_01/views/android/paciente/paciente_add.dart';


class PacienteList extends StatelessWidget{
    @override
  Widget build(BuildContext context) {

      //List<Paciente> _pacientes = PacienteDAO.listarPacientes;
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
                ),//ListView
            ),//Container 
        ),//Expanded
    ],//<Wdiget>[]
        ),//Colunm
        floatingActionButton: FloatingActionButton(
            onPressed: (){
               // Paciente p1 = Paciente(01,'Teste','teste@teste','txt123', 123);
                //PacienteDAO.adicionar(p1);
                Navigator.of(context).push(MaterialPageRoute(
                    builder:(context) => PacienteScreen()
                ));//MaterialPagerRoute
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
                            trailing: _menu(),
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


Widget _menu(){
    return PopupMenuButton(
    
    onSelected: (ItensMenuListPaciente selecionado){
        debugPrint('Selecionado... $selecionado');   
    },

    itemBuilder: (BuildContext context) => <PopupMenuItem<ItensMenuListPaciente>>[
        const PopupMenuItem(
            value: ItensMenuListPaciente.editar,
            child: Text('Editar'),
        ),//PopupMenuItem
        const PopupMenuItem(
            value: ItensMenuListPaciente.novo_checklist,
            child: Text('Novo CheckList'),
        ),//PopupMenuItem
    ], //<PopMenuItem<ItensMenuListPaciente>[]
    
    );//PopMenuButton
}
}

enum ItensMenuListPaciente {editar,novo_checklist}