import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final plant;
  const Details({super.key, required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
            child: IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.black),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: Image.asset(plant.urlImage)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 150.0),
              child: Column(
                children: [
                  Text(
                    plant.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2.0,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Plants make your life minimal and happy\nlove the plants more and enjoy life.',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .25,
            width: MediaQuery.of(context).size.width * .8,
            margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0.0),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.height, color: Colors.white),
                        Text(
                          'Height',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '30cm - 40cm',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.device_thermostat, color: Colors.white),
                        Text(
                          'Temperature',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '20°C to 25°C',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.compost, color: Colors.white),
                        Text(
                          'Pot',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Ciramic Pot',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.compost, color: Colors.white),
                        Text(
                          'Total Price',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '\$${plant.price}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Add to Cart"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[800],
                        padding: EdgeInsets.all(25.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
