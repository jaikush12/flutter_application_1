import 'package:flutter/material.dart';
import 'package:flutter_application_1/empscreen.dart';
import 'auth.dart';

class Day24Authentication extends StatefulWidget {
  const Day24Authentication({Key? key}) : super(key: key);

  @override
  _Day24AuthenticationState createState() => _Day24AuthenticationState();
}

class _Day24AuthenticationState extends State<Day24Authentication> {
  final _formkey = GlobalKey<FormState>();
  bool isLogin = false;
  String email = '';
  String password = '';
  String username = '';
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email/Pass Auth'),
      ),
      body: Form(
        key: _formkey,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !isLogin
                  ? TextFormField(
                      controller: _usernameController,
                      key: ValueKey('username'),
                      decoration: InputDecoration(hintText: "Enter Username"),
                      validator: (value) {
                        if (value.toString().length < 3) {
                          return 'Username is so small';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        setState(() {
                          username = value!;
                        });
                      },
                    )
                  : Container(),
              TextFormField(
                controller: _emailController,
                key: ValueKey('email'),
                decoration: InputDecoration(hintText: "Enter Email"),
                validator: (value) {
                  if (!(value.toString().contains('@'))) {
                    return 'Invalid Email';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    email = value!;
                  });
                },
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                key: ValueKey('password'),
                decoration: InputDecoration(hintText: "Enter Password"),
                validator: (value) {
                  if (value.toString().length < 6) {
                    return 'Password is so small';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    password = value!;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          _formkey.currentState!.save();
                          print(email);
                          print(password);
                          isLogin
                              ? signin(email, password)
                              : signup(email, password);
                              Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationBarApp(),));
                        }
                      },
                      child: isLogin ? Text('Login') : Text('SignupNow'))),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      isLogin = !isLogin;
                    });
                  },
                  child: isLogin
                      ? Text("Don't have an account? Signup")
                      : Text('Already Signed Up? Login')),
              SizedBox(
                height: 10,
              ),
              // TextButton(
              //     onPressed: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => ForgetPassword(),
              //           ));
              //     },
              //     child: Text("Forgot Password ?"))
            ],
          ),
        ),
      ),
    );
  }
}