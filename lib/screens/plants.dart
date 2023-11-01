import 'package:flutter/material.dart';

class Plants extends StatefulWidget {
  const Plants({super.key});

  @override
  State<Plants> createState() => _PlantsState();
}

class _PlantsState extends State<Plants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Products",
          style: TextStyle(
            color: Colors.grey[900],
            fontSize: 16.0,

          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              child: Image.network('https://cdn2.iconfinder.com/data/icons/avatars-60/5985/1-Girl-256.png'),
            ),
          ),
        ],
      ),
    );
  }
}
