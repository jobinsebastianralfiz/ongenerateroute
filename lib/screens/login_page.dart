import 'package:flutter/material.dart';
import 'package:ongeneraterouteyt/screens/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            ElevatedButton(onPressed: (){

              Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false,arguments: {"name":"Jobin","email":"jobin@gmail.com"});

              }, child: Text("Login")),
            ElevatedButton(onPressed: (){

              Navigator.pushNamed(context, '/register');

            }, child: Text("Register"))
          ],
        ),
      ),
    );
  }
}
