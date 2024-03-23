import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timothearuth_quiz/Home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username = "";
  String password = "";
  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              _username(),
              _password(),
              _loginbutton(context)
            ],
          ),
        ),
      ),
    ));
  }
  Widget _username() {
    return Container(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        enabled: true,
        onChanged: (value){
          username = value;
        },
        decoration: InputDecoration(
            hintText: "Input Username",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))
            )
        ),
      ),
    );
  }

  Widget _password() {
    return Container(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        enabled: true,
        onChanged: (value){
          password = value;
        },
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Input Username",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))
            )
        ),
      ),
    );
  }

  Widget _loginbutton(context){
    return Container(
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue
        ),
        onPressed: (){
          String text = "";
          if(username=='admin' && password=='123'){
            setState((){
              text = 'Login Success';
              isLogin = true;
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                return Home();
              }));
            });
          }else{
            setState((){
              text = 'Login Failed';
              isLogin = false;
            });
          }
          SnackBar snackBar = SnackBar(
              content: Text(text)
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text("Login", style: TextStyle(color: Colors.white)),

      ),
    );
  }
}
