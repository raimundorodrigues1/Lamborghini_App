import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:logininflutter/screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromARGB(255, 255, 140, 120),
            Color.fromARGB(255, 255, 215, 0),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 30, top: 100, right: 30, bottom: 0),
          child: Form(
              key: _formKey,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'SIGN UP',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 40),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      autofocus: true,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        labelText: 'Name',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      controller: nameController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter your name';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      autofocus: true,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      controller: emailController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter your email';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      autofocus: true,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.phone_android,
                          color: Colors.black,
                        ),
                        labelText: 'Phone',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      controller: phoneController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter your phone';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.multiline,
                      autofocus: true,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      controller: passwordController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter your password';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 35),
                    Container(
                      height: 50,
                      child: RaisedButton(
                        color: Colors.black,
                        child: Text(
                          'CREATE MY ACCOUNT',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.amber),
                        ),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          }
                        },
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
