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
      backgroundColor: Colors.grey[200],
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
            padding: const EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              child: Image.network('https://cdn2.iconfinder.com/data/icons/avatars-60/5985/1-Girl-256.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: SizedBox(
                          height: 45.0,
                          child: TextField(
                                  textInputAction: TextInputAction.search,
                                  decoration: InputDecoration(
                                    hintText: "Search...",
                                    prefixIcon: Icon(Icons.search_rounded, color: Colors.grey[600]),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 45.0,
                          margin: EdgeInsets.only(left: 10.0),
                          child: IconButton(
                            icon: Icon(Icons.tune, color: Colors.black),
                            onPressed: () {},
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(100, (index) {
                      return Card(
                        
                      );
                    }),
                  ),
                ],
              ),
            ),
        ),
    );
  }
}
