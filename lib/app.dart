import 'package:flutter/material.dart';
import 'package:meu_primeiro_app/home.dart';

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Home(),
    );
  }
}
