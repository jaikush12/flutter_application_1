import 'package:flutter/material.dart';

class dbm extends StatefulWidget {
  @override
  State<dbm> createState() => _dbmState();
}

class _dbmState extends State<dbm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color((0xFFBDBDBD)),
      appBar: AppBar(
        backgroundColor: Color((0xFF1A237E)),
        title: Text('Database Manager'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Welcome, Database Manager!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Code to view employee data from database
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF1A237E),
              onPrimary: Colors.white,),
            child: Text('View Employee Data'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Code to edit employee data in database
            },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF1A237E),
                onPrimary: Colors.white,),
            child: Text('Edit Employee Data'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Code to add employee data to database
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF1A237E),
              onPrimary: Colors.white,),
            child: Text('Add Employee Data'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Code to delete employee data from database
            },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF1A237E),
                onPrimary: Colors.white,),
            child: Text('Delete Employee Data'),
          ),
        ],
      ),
    );
  }
}
