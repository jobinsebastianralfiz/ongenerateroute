import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  final Map<String,dynamic>? data;
  const HomePage({super.key,this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text("Name: ${data!['name']}" ),
            Text("Email: ${data!['email']}")
          ],
        ),
      ),
    );
  }
}
