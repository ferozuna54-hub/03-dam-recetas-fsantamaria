import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen ({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenState();

}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 121, 220),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          const [
            Icon(Icons.restaurant_menu, size: 100, color: Colors.white),
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text(
              'Recetas App',
              style:  TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text("Sabores del Mayab",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),

          ],
        ),
      ),
    );
  }
}