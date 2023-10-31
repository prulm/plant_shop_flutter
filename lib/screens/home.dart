import 'package:flutter/material.dart';
import 'package:plant_shop_flutter/screens/plants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: TextButton(
                child: Text('Skip'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((context) => Plants()),),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
