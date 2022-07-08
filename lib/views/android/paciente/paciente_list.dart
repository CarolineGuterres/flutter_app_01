import'package:flutter/material.dart';
import'package:flutter/widgets.dart';
import 'package:flutter_app_01/database/paciente_dao.dart';
import 'package:flutter_app_01/model/paciente.dart';
import 'package:flutter_app_01/views/android/paciente/paciente_add.dart';
import 'package:flutter_app_01/views/android/checklist/checklist_sintomas.dart';


class PacienteList extends StatefulWidget{
    @override
    //classe principal

    _PacienteListState createState() => _PacienteListState();
}
  class _PacienteListState extends State<PacienteList>{
      Widget build(BuildContext context){
          //classe que guarda o estado
      
      List <Paciente> _pacientes = PacienteDAO.listarPacientes;
        
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
                child:ListView.builder(
                    itemCount: _pacientes.length,
                    itemBuilder: (context, index){
                        final Paciente p = _pacientes[index];
                        return ItemPaciente(p, onClick: (){
                            Navigator.of(context).push(MaterialPageRoute(
                                builder:(context)=> PacienteScreen())
                            ).then((value){
                                setState((){
                                    debugPrint('Voltou editar');
                                });
                            });
                        },);//ItemPaciente
                    }),//ListView
                    ),//Container 
                ),//Expanded
            ],//<Wdiget>[]
            ),//Colunm
            floatingActionButton: FloatingActionButton(
                onPressed: (){
                  /*  Paciente p1 = Paciente(01,'Teste','teste@teste','txt123');
                    PacienteDAO.adicionar(p1);*/
                   
                  Navigator.of(context).push(MaterialPageRoute(
                        builder:(context) => PacienteScreen()
                    )).then((value) //permite adicionar na lista ao clicar no salvar
                    { //MaterialPage   
                        setState((){ //atualiza o estado
                            debugPrint('teste');
                     });//setState
                 });
                },//onPressed

                child: Icon(Icons.add)
            ),//FloatingActionButton
        );//Scafoold
  }
}

class ItemPaciente extends StatelessWidget{

   final Paciente _paciente;
   final Function()? onClick; //adicionar ação de clique na linha de cadastro ao editar, pois ao retornar dessa opção precisa chamar o setState

   ItemPaciente(this._paciente,{@required this.onClick}); //método construtor

    Widget build (BuildContext context){
        return Column(
            children: <Widget>[
                ListTile( //cada item da lista
                     onTap: this.onClick, //executa a ação ao selecionar
                            leading:CircleAvatar(
                            // backgroundImage: AssetImage('imagens/avatar.jpeg'), 
                            ),//CircleAvatar
                            title:Text(this._paciente.nome,
                            style: TextStyle(fontSize: 24),
                            ),//Text
                            subtitle: Text(this._paciente.email,
                            style: TextStyle(fontSize: 12),
                            ),//Text
                            trailing: _menu(context), // é necessário passar o contexto
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


Widget _menu(BuildContext context){ //necessário receber o contexto
    return PopupMenuButton(
    
    onSelected: (ItensMenuListPaciente selecionado){
       if(selecionado == ItensMenuListPaciente.novo_checklist){
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CheckListSintomas()
        ));//MaterialPageRoute
       }  
    },

    itemBuilder: (BuildContext context) => <PopupMenuItem<ItensMenuListPaciente>>[
        const PopupMenuItem(
            value: ItensMenuListPaciente.novo_checklist,
            child: Text('Novo CheckList'),
        )//PopupMenuItem
        ], //<PopMenuItem<ItensMenuListPaciente>[]
    );//PopMenuButton
}
}

enum ItensMenuListPaciente {resultado,novo_checklist}