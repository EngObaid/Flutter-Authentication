
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:mylogin_191/pages/home.dart';
import 'package:mylogin_191/utility/imagewidget.dart';
import '../utility/buttonWidget.dart';
import '../utility/mytext.dart';
import 'SignUp.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  final email=TextEditingController();
  final password=TextEditingController();

  void Signin() async{
      try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email.text, password: password.text);
      print("Success SignIn");
      }
      catch(err){
        print("Error");
      }
      // ignore: prefer_const_constructors
      
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // image
            ImageWidget(
              ImageAsset: 'images/mylogin.png',
              ImageHeight: 250,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
              child: Container(
                // color: Colors.amber,
                width: double.infinity,
                height: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // login lable
                    const MyText(MylableText: 'Login', FontSize: 40),
                    SizedBox(
                      height: 30,
                    ),
                    // input username/password
                    TextField(
                      controller: email,
                      decoration: InputDecoration(
                          hintText: 'Email ID',
                          prefixIcon: Icon(Icons.alternate_email_outlined)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                     TextField(
                      controller: password,
                      decoration: InputDecoration(
                        
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        suffixText: 'Forget?',
                        suffixStyle: TextStyle(
                            color: Color.fromARGB(255, 26, 56, 247),
                            fontSize: 18),
                      ),
                    ),
                    // login button
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      child: MyButton(
                      btnText: 'Log In',
                    ),
                    onTap: Signin,
                    ),

                    // ElevatedButton(onPressed: () {
                    //   login()

                    // }, child: child),

                    // registor now
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New User Please? ',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => SignUp()),
                                ));
                          },
                          child: Text('Registor',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 28, 79, 248),
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
