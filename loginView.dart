import 'package:flutter_app_01/views/android/dashboard.dart';
import'package:flutter/material.dart';

class Login extends StatelessWidget {
    // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:Text('Tela de Login'),
        ),// AppBar
        body: Container (
            padding: EdgeInsets.symmetric(vertical: 25.0),
            width: double.infinity,
            child: RaisedButton(
                    onPressed: () {
                       // debugPrint('Botão Pressionar');
                       Navigator.of(context).push(MaterialPageRoute(
                           builder:(context) => DashBoard()
                       ));//MaterialPagerRoute
                    },
                color: Colors.blue,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                ), //RoundedRectangleBorder
                 padding:EdgeInsets.all(20.0),
                 child: Text('LOGIN', style: TextStyle(
                 color: Colors.white,
                 letterSpacing: 1.5,
                 fontSize: 10.0,
                 fontWeight: FontWeight.bold
                 ),), //TextStyle, Text
            ),//RaisedButton
        ),//Container
    );//Scaffold
  }
}