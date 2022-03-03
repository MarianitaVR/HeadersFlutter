import 'package:flutter/material.dart';
import 'package:headercuadrado/src/pages/headers_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //La pagina que se va a visualizar
      home:  HeadersPage(),
    );
  }
}
