import 'package:flutter/material.dart';
import 'package:headercuadrado/src/widgets/headers.dart';

class HeadersPage extends StatelessWidget {
  const HeadersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //Colocar el nombre de la clase del header que se desea visulizar
      body: HeaderOlaGradiente()
    );
  }
}

