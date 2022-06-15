import 'package:flutter/material.dart';
import 'package:flutter_basic/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body:Center(
        child: Padding(
          padding:  const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Card(
              color: Colors.lightGreen,
              child: Column(
                children: <Widget>[
                  Form(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: const InputDecoration(
                                  hintText: "Enter User Name",
                                  labelText: "User Name"),
                            ),
                            const SizedBox(height: 25),
                            TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                  hintText: "Enter Password", labelText: "Password"),
                            ),
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context)=>const HomePage()));
                      },
                      child: const Text(
                        "Sign In",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      color: Colors.green,
                      textColor: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
