import 'package:flutter/material.dart';


//Diferentes tipos de headers 

//------------------------------------------------------------------------------------

//Header Cuadrado - Realizado con contenedor
class HeaderCuadrado extends StatelessWidget {
  const HeaderCuadrado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Color.fromARGB(255, 178, 255, 255),
    );
  }
}

//------------------------------------------------------------------------------------

//Header cuadrado con puntas redondeadas - Realizado con contenedor

class HeaderRedondeado extends StatelessWidget {
  const HeaderRedondeado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
      color: Colors.cyanAccent.shade200,
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(70),
        bottomRight: Radius.circular(70)
      )
      ),
      
    );
  }
}


//------------------------------------------------------------------------------------

//HeaderDiagonal - Media pantalla 
//CustomPainter

class HeaderDiagonalMP extends StatelessWidget {
  const HeaderDiagonalMP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
      painter: _HeaderDiagonalMP(),
      ),
    );
  }
}

class _HeaderDiagonalMP extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint(); //Lapiz para dibujar 

    //propiedades
    paint.color = Color.fromARGB(255, 190, 185, 243);
    paint.style = PaintingStyle.fill;
    //ancho de laiz
    paint.strokeWidth = 2;

    final path = Path();

    //dibujar con painr y path (Argumentos)

    path.moveTo(0, size.height * 0.50);
    path.lineTo(size.width,size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.5);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}


//------------------------------------------------------------------------------------

//Header Diagonal - Pantalla Completa

class HeaderDiagonalPC extends StatelessWidget {
  const HeaderDiagonalPC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
      painter: _HeaderDiagonalPC(),
      ),
    );
  }
}

class _HeaderDiagonalPC extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint(); //Lapiz para dibujar 

    //propiedades
    paint.color = Color.fromARGB(255, 255, 0, 200);
    paint.style = PaintingStyle.fill;
    //ancho de laiz
    paint.strokeWidth = 2;

    final path = Path();

    //dibujar con painr y path (Argumentos)

    path.moveTo(0, 0);
    path.lineTo(size.width,size.height);
    path.lineTo(size.height,20);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//------------------------------------------------------------------------------------

//Header Diagonal - Pantalla Completa- Lado Contrario

class HeaderLineaDiagonalPCContrario extends StatelessWidget {
  const HeaderLineaDiagonalPCContrario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
      painter: _HeaderLineaDiagonalPCContrario(),
      ),
    );
  }
}

class _HeaderLineaDiagonalPCContrario extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint(); //Lapiz para dibujar 

    //propiedades
    paint.color = Color.fromARGB(255, 255, 249, 170);
    paint.style = PaintingStyle.fill;
    //ancho de laiz
    paint.strokeWidth = 20;

    final path = Path();

    //dibujar con painr y path

    
    path.lineTo(size.width,size.height);
    path.lineTo(0,size.height);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//------------------------------------------------------------------------------------

//Header en forma de pico

class HeaderPico extends StatelessWidget {
  const HeaderPico({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
      painter: _HeaderPico(),
      ),
    );
  }
}

class _HeaderPico extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint(); //Lapiz para dibujar 

    //propiedades
    paint.color = Color.fromARGB(255, 81, 65, 255);
    paint.style = PaintingStyle.fill;
    //ancho de laiz
    paint.strokeWidth = 20;

    final path = Path();

    //dibujar con painr y path
    path.lineTo(0, size.height * 0.20);
    path.lineTo(size.width * 0.5, size.height*0.25);
    path.lineTo(size.width, size.height * 0.20);
    path.lineTo(size.width,0);

    canvas.drawPath(path, paint);

  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
//------------------------------------------------------------------------------------

//Header en forma de pico circular 

class HeaderPicoCircular extends StatelessWidget {
  const HeaderPicoCircular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
      painter: _HeaderPicoCircular(),
      ),
    );
  }
}

class _HeaderPicoCircular extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint(); //Lapiz para dibujar 

    //propiedades
    paint.color = Color.fromARGB(255, 91, 255, 69);
    paint.style = PaintingStyle.fill;
    //ancho de laiz
    paint.strokeWidth = 20;

    final path = Path();

    //dibujar con painr y path
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.45 , size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);

  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//------------------------------------------------------------------------------------

//Header en forma de pico circular hacia dentro

class HeaderPicoCircularDentro extends StatelessWidget {
  const HeaderPicoCircularDentro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
      painter: _HeaderPicoCircularDentro(),
      ),
    );
  }
}

class _HeaderPicoCircularDentro extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint(); //Lapiz para dibujar 

    //propiedades
    paint.color = Color.fromARGB(255, 251, 135, 255);
    paint.style = PaintingStyle.fill;
    //ancho de laiz
    paint.strokeWidth = 20;

    final path = Path();

    //dibujar con painr y path
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.15 , size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);

  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//------------------------------------------------------------------------------------


//Header en forma de Ola

class HeaderOla extends StatelessWidget {
  const HeaderOla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
      painter: _HeaderOla(),
      ),
    );
  }
}

class _HeaderOla extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint(); //Lapiz para dibujar 

    //propiedades
    paint.color = Color.fromARGB(255, 147, 255, 201);
    paint.style = PaintingStyle.fill;
    //ancho de laiz
    paint.strokeWidth = 20;

    final path = Path();

    //dibujar con painr y path
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30 , size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.20 , size.width , size.height * 0.25);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);

  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//------------------------------------------------------------------------------------