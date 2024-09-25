import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Text("Pay Fast \n forget everything you know about\n Banking",style: TextStyle(
              color: Colors.black
            ),),
          ],
        ),
      ),
    );
  }
}
