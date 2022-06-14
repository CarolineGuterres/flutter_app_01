import 'package:flutter_app_01/views/android/loginView.dart';
import 'package:flutter_app_01/views/android/paciente/paciente_list.dart';
import'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
    // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
       return Scaffold(
        appBar: AppBar(
        title:Text('Painel'),
        ),//AppBar
        body: Column(
            children: <Widget>[
                 _msgSuperiorText(),
               _imgCentral(), //método para inserir imagem
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            _ItemElemento('PACIENTE', Icons.accessibility,
                              onClick: (){
                                //debugPrint('Pacientes');                          
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder:(context) => PacienteList()
                            ));//MaterialPagerRoute 
                        },),//ItenElemento
                        _ItemElemento('INFORMAÇÕES', Icons.accessibility,
                              onClick: (){
                                debugPrint('Informações');                          
                            },),
                        // _ItemElemento('RESULTADO', Icons.check_circle_outline,()),
                    ],//<Widget> []
                )//Row
             ],//<Widget> []
        ),//Column
        );//Scaffold
    }

Widget _imgCentral(){
        return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('imagens/teste.jpeg'),
            //fit: BoxFit.fill,
        );//Padding
}

Widget _msgSuperiorText(){
        return Container(
                    alignment:Alignment.topRight,
                    padding: const EdgeInsets.all(8.0),
                    child: Text ('Checklista para COVID-19', style: TextStyle(
                       color: Colors.black.withOpacity(0.6),
                        fontFamily:'OpenSans',
                        fontWeight: FontWeight.bold,                        
                    ),),//TextStyle, Text
        );//Container
    }
}

class _ItemElemento extends StatelessWidget {
     final String nomeBotao; 
     final IconData icone;
     final Function()? onClick;

     _ItemElemento(this.nomeBotao, this.icone,{@required this.onClick});

     Widget build(BuildContext context) {
        return  Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
                color: Colors.blue,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.10),
                ), //RoudedRectangleBorder
                elevation: 10.0,
                child: InkWell(
                    onTap: this.onClick,
                        child: Container(
                        // color: Colors.green,
                            width: 150,
                            height: 80,
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center, //alinhar coluna
                               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               // crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                    Icon(
                                        this.icone,
                                        size: 36.0,
                                    ),//Icon
                                    Text(
                                            this.nomeBotao, style: TextStyle(
                                            color: Colors.white, fontSize:16
                                    ),)//TextStyle, Text
                                    ], //<Widget>[]
                            ), //Column
                        ), //Container
                ), //InkWell
                ),//Material
        ); //Padding
    }
}         
