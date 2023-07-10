import 'package:flutter_application_1/authenticate.dart';
import 'package:flutter_application_1/dbm.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text('JobEase',
      //   style: TextStyle(
      //     fontWeight: FontWeight.bold,
      //     fontStyle: FontStyle.italic,
      //     color: Colors.white
      //     )),
      // ),
      body: Center(
        child: Column(children: [
          Container(
            height: 150,
            width: 150,
            child:
                Image(image: AssetImage('assets/mlogo.png'), fit: BoxFit.fill),
          ),
          Text(
            'Sign In',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white),
          ),
          SizedBox(height: 20),
          Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, -3), // changes position of shadow
                ),
              ],
            ),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => dbm()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20.0,
                  ),
                ),
                child: //Row(
                    //children: [
                    // Ink.image(
                    //   image: AssetImage('assets/glogo.png'),
                    //     height: 80,
                    //     width: 80,
                    //     fit: BoxFit.scaleDown,
                    //     ),
                    Text(
                  'Continue as Data Manager',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                )
                //]),
                ),
          ),
          SizedBox(height: 20),
          Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, -3), // changes position of shadow
                ),
              ],
            ),
            child: ElevatedButton(
                onPressed: ()  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Day24Authentication())); 
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20.0,
                  ),
                ),
                child: //Row(
                    //children: [
                    // Container(
                    //   height: 80,
                    //   width: 80,
                    //   child: Icon(Icons.phone, color: Colors.white)),
                    Text(
                  'Continue as Employee',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                )
                //]),
                ),
          ),
          SizedBox(height: 20),
          Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, -3), // changes position of shadow
                ),
              ],
            ),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Day24Authentication()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20.0,
                  ),
                ),
                child: //Row(
                    //children: [
                    // Container(
                    //   height: 80,
                    //   width: 80,
                    //   child: Icon(Icons.phone, color: Colors.white)),
                    Text(
                  'Continue as Employer',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                )
                //]),
                ),
          ),
          // SizedBox(height: 20),
          // Text('Or',
          // style: TextStyle(
          //   fontSize: 20,
          //   color: Colors.white,
          // ),),
          // SizedBox(height: 20),
          // Container(
          //   height: 30,
          //   width: 400,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(10.0),
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.white,
          //         spreadRadius: 1,
          //         blurRadius: 1,
          //         offset: Offset(0, -3), // changes position of shadow
          //       ),
          //     ],
          //   ),
          //   child: TextField(

          //     decoration: InputDecoration(
          //     border: OutlineInputBorder(),
          //     labelText: 'Email Id',
          //     hintText: 'Enter valid mail id as abc@gmail.com',
          //     ),
          //     ),
          // ),
          // SizedBox(height: 10),
          // Container(
          //   height: 30,
          //   width: 400,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(10.0),
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.white,
          //         spreadRadius: 1,
          //         blurRadius: 1,
          //         offset: Offset(0, -3), // changes position of shadow
          //       ),
          //     ],
          //   ),
          //   child: TextField(
          //     decoration: InputDecoration(
          //     border: OutlineInputBorder(),
          //     labelText: 'Password',
          //     hintText: 'Enter password for your email',
          //     ),
          //     ),
          // ),
          // SizedBox(height: 20),
          // Container(
          //   height: 40,
          //   width: 300,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(10.0),
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.white,
          //         spreadRadius: 1,
          //         blurRadius: 1,
          //         offset: Offset(0, -3), // changes position of shadow
          //       ),
          //     ],
          //   ),
          //   child: ElevatedButton(
          //     onPressed: (){},
          //     style: ElevatedButton.styleFrom(
          //       primary: Color.fromARGB(255, 255, 35, 35),
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(10.0),
          //       ),
          //       padding: EdgeInsets.symmetric(
          //         vertical: 15.0,
          //         horizontal: 20.0,
          //       ),
          //     ),
          //     child: Text('Sign Up',
          //         style: TextStyle(
          //           fontSize: 10,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.black
          //           ),)),
          // ),
          // SizedBox(height: 20),
          // Text("If you don't have an Account, Sign Up",
          // style: TextStyle(color: Colors.white),),
          // SizedBox(height: 20),
          // Text("Forgot Password",
          // style: TextStyle(color: Colors.white),),
        ]),
      ),
    );
  }
}
