import 'package:flutter/material.dart';
import 'package:flutter_multi_provider/homepage.dart';
import 'package:flutter_multi_provider/provider/hei_provider.dart';
import 'package:flutter_multi_provider/provider/wei_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<heightProvider>(
          create: (context) => heightProvider(),
        ),
        ChangeNotifierProvider<weightProvider>(
          create: (context) => weightProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: homePage(),
      ),
    );
  }
}
