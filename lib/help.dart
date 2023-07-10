import 'package:flutter/material.dart';

class help extends StatefulWidget {
  const help({super.key});

  @override
  State<help> createState() => _helpState();
}

class _helpState extends State<help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
         centerTitle: true,
         title: const Text('How Can We Help You?', 
         style: TextStyle(
           fontWeight: FontWeight.bold, 
           color: Colors.black
           )),
       ),
      body: Column(children: [
        SizedBox(height: 20),
        Container(
          color: Colors.white,
          alignment: Alignment.topLeft,
          child: const Text('All Topics', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
        ),
        ElevatedButton(
                onPressed: (){}, 
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 22.0,
                    horizontal: 20.0,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(Icons.person, color: Colors.black,),
                    Text('Account',
                    style: TextStyle(
                      fontSize: 10, 
                      color: Colors.black
                      ),)
                  ]),),
                  ElevatedButton(
                onPressed: (){}, 
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 22.0,
                    horizontal: 20.0,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(Icons.people_outline, color: Colors.black,),
                    Text('Getting Started with UC',
                    style: TextStyle(
                      fontSize: 10, 
                      color: Colors.black
                      ),)
                  ]),),
                  ElevatedButton(
                onPressed: (){}, 
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 22.0,
                    horizontal: 20.0,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(Icons.payments, color: Colors.black,),
                    Text('Payments and UC Credits',
                    style: TextStyle(
                      fontSize: 10, 
                      color: Colors.black
                      ),)
                  ]),),
                  ElevatedButton(
                onPressed: (){}, 
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 22.0,
                    horizontal: 20.0,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(Icons.shield_moon, color: Colors.black,),
                    Text('Warranty',
                    style: TextStyle(
                      fontSize: 10, 
                      color: Colors.black
                      ),)
                  ]),),
      ]),
    );
  }
}