import 'package:flutter/material.dart';
import 'package:for_sushi_day/products/product_detail_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.transparent),
        primarySwatch: Colors.blue,
        // inputDecorationTheme: const InputDecorationTheme(
        //   labelStyle: TextStyle(
        //     color: Colors.white,
        //   ),
        //   focusedBorder: UnderlineInputBorder(
        //     borderSide: BorderSide(
        //       style: BorderStyle.solid,
        //       color: Colors.white,
        //     ),
        //   ),
        // ),
      ),
      home: const ProductDetailView(),
      //routes: NavigatorRoutes().items,
    );
  }
}
