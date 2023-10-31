import 'package:flutter/material.dart';
import 'package:plant_shop_flutter/screens/home.dart';

void main() {
  runApp(const PlantShop());
}

class PlantShop extends StatelessWidget {
  const PlantShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
