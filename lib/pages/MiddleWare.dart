import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mylogin_191/pages/home.dart';
import 'package:mylogin_191/pages/login.dart';

class MiddleWare extends StatelessWidget {
  const MiddleWare({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
      StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if(snapshot.hasData){
          return home();
        }
        else{
          return LoginPage();
        }
      },
    )
    )
    );
    
  }
}