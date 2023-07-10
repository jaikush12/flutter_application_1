import 'package:flutter/material.dart';
import 'package:flutter_application_1/authenticate.dart';
import 'package:flutter_application_1/help.dart';
import 'package:flutter_application_1/qrgen.dart';
import 'package:flutter_application_1/scanner.dart';

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: BackButton(
          onPressed: ()  {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Day24Authentication()),);},
        ),
        title: const Text('JobEase', 
        style: TextStyle(
          fontWeight: FontWeight.bold, 
          fontStyle: FontStyle.italic,
          color: Colors.white
          )),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.library_books),
            label: 'Records',
          ),
          NavigationDestination(
            icon: Icon(Icons.qr_code_scanner),
            label: 'QR Code',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: const Text('Page 1'),
        ),
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF1A237E),
                  onPrimary: Colors.white,),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyScanner()),);
                },
                child: Text('Scan QR Code'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QRScreen()),);
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF009688),
                  onPrimary: Colors.white,),
                child: Text('Generate QR Code'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: Column(children: [
            Expanded(child: 
            ListView(children: [
              SizedBox(child: Card(child: Text('Verified Customer\n\n+91 987654 32100')),),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const help()),);
                }, 
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
                    Icon(Icons.chat, color: Colors.black,),
                    Text('Help Center',
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
                    Icon(Icons.edit_note, color: Colors.black,),
                    Text('My Bookings',
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
                    Icon(Icons.location_on, color: Colors.black,),
                    Text('Manage Addresses',
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
                    Icon(Icons.group, color: Colors.black,),
                    Text('Register as Partner',
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
                    Icon(Icons.attach_money, color: Colors.black,),
                    Text('Refer and Earn',
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
                    Icon(Icons.star_rate, color: Colors.black,),
                    Text('My Ratings',
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
                    Icon(Icons.card_giftcard, color: Colors.black,),
                    Text('My Gift Cards',
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
                    Icon(Icons.account_balance_wallet, color: Colors.black,),
                    Text('My Wallet',
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
                    Icon(Icons.edit_note, color: Colors.black,),
                    Text('Scheduled Bookings',
                    style: TextStyle(
                      fontSize: 10, 
                      color: Colors.black
                      ),)
                  ]),),
            ],)
        )]),
        ),
      ][currentPageIndex],
    );
  }
}
