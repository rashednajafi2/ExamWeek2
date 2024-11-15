import 'package:flutter/material.dart';

void main() {
  runApp(NeedBloodApp());
}

class NeedBloodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NeedBloodScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NeedBloodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,  // App Bar (Red Color)
        title: Text("Need Blood"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,  // Circle Background color
              child: Icon(
                Icons.bloodtype,  // Blood drop icon
                size: 40,
                color: Colors.redAccent,  // Blood Color
              ),
            ),
            SizedBox(height: 10),  // Icon & Text Space
            Text(
              "Donate Blood",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}