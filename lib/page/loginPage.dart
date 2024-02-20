import 'package:apple/component/textField.dart';
import 'package:flutter/material.dart';



class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 33, 49),
      appBar: AppBar(
        toolbarHeight: 150,
        title: Text("Login", style: TextStyle(fontSize: 40),),
      ),
      body: SingleChildScrollView(
        child: Padding(
                  padding: EdgeInsets.only(top: 30 ,),
                  child: Column(
                    children: [
                      TextFieldC(text: "Username ot Email"),
                      TextFieldC(text: "Password"),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black
                          ),
                          onPressed: (){}, 
                          child: Text("Login")
                          )
                        ),
                      SizedBox(height: 30,),
                  //     Row(children: [
                  //       Container(
                  //         width: 180.5, // Adjust the width of the line
                  //         height: 1.0,
                  //         color: Colors.grey,
                  //       ),
                  //       const Padding(
                  //         padding: EdgeInsets.symmetric(horizontal: 8.0),
                  //         child: Text('Or', style: TextStyle(color: Colors.white),),
                  //       ),
                  //       Container(
                  //         width: 180.5, // Adjust the width of the line
                  //         height: 1.0,
                  //         color: Colors.grey,
                  //       ),
                  // ],),
                  SizedBox(height: 50,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?" ,style: TextStyle(color: Colors.white)),
                          MaterialButton(
                            onPressed: (){
                              Navigator.pushReplacementNamed(context, "SignUp");
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Text("Signup", style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold, fontSize: 17 , decoration: TextDecoration.underline, decorationColor: Colors.white )),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
      ),
    );
  }
}