import 'package:flutter/material.dart';

void main() {
  runApp(ExamWeek2Assign());
}

class ExamWeek2Assign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExamWeek2Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ExamWeek2Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("Exam Week 2 Profile"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
            },
          ),
          IconButton(
            icon: Icon(Icons.phone),
            onPressed: () {
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InfoCard(
              icon: Icons.icecream,
              text: "Ice cream is very delicious, isn't it?",
            ),
            SizedBox(height: 25),
            InfoCard(
              icon: Icons.code,
              text: "Programming is enjoyable if you're passionate about it!",
            ),
            SizedBox(height: 25),
            InfoCard(
              icon: Icons.egg,
              text: "Submitting code directly copied will result in a zero mark.",
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String text;

  InfoCard({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 48,
          backgroundColor: Colors.purple[100],
          child: Icon(
            icon,
            size: 44,
            color: Colors.deepPurple,
          ),
        ),
        SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

