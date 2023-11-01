import 'package:flutter/material.dart';
import 'package:plant_shop_flutter/screens/plants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: TextButton(
                child: Text(
                  'Skip',
                  style: TextStyle(
                    letterSpacing: 1.0,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => Plants()),
                    ),
                  );
                }),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset('assets/images/plant-6.png'),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Enjoy Your\nLife With ",
                          style: TextStyle(
                            fontSize: 30.0,
                            letterSpacing: 2.0,
                          ),
                        ),
                        TextSpan(
                          text: "Plants",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            letterSpacing: 2.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50.0),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.white,
                        ),
                        iconSize: 35.0,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Plants(),
                              ));
                        },
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.green[700],
                      ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
