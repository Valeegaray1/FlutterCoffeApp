import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          automaticallyImplyLeading: false, 
          title: const Text('CafeShop'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('CAFÉ',
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),),
                Text('Nuestro Café es el mejor del mundo'),
              ],
            ),
            Image.asset('assets/CoffeeGif2.gif'),
            Column(
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Iniciar sesión'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
              ),
                SizedBox(height: 16),  // Añade un espacio vertical de 16 píxeles
                ElevatedButton(onPressed: () {}, child: Text('Registrate'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
