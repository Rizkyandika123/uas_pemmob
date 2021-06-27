import 'package:uas_pemmob/authentication_services.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tokokue"),
      ),
      body: Container(
        padding: EdgeInsets.all(25.0),
        child: Column(
          children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: "Email",
            ),
          ),
          TextField(
            obscureText: true,
            controller: passwordController,
            decoration: InputDecoration(
              
              labelText: "password",
            ),
          ),
          RaisedButton(
            
            onPressed: () {
              context.read<AuthenticationService>().signIn(
                email: emailController.text.trim(),
                password: passwordController.text.trim(),

              );
            },
            child: Text("Sign In"),
          ),
          TextButton(
            
            onPressed: (){}, 
            child: Text("Buat Akun"))
        ],
        ),
        
      ),
    );
  }
}
