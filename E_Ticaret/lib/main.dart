import '../pages/CartPage.dart';
import '../pages/Homepage.dart';
import 'package:flutter/material.dart';
import 'pages/ItemPage.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  late final Map<String, dynamic> product;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (context) => HomePage(),
        "cartPage" : (context) => CartPage(),
        "itemPage" : (context) => ItemPage(product: product,),

      },
    );
    throw UnimplementedError();
  }

}