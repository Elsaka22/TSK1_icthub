import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Welcome Back,',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
            Image.asset('assets/img.png'),
            const MYCont(texta: 'Get Start', widtha: 200),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MYCont(
                  texta: 'Sign up',
                  widtha: 100,
                ),
                MYCont(
                  texta: 'Login',
                  widtha: 100,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MYCont extends StatelessWidget {
  final String texta;
  final double widtha;

  const MYCont({super.key, required this.texta, required this.widtha});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: widtha,
      color: Colors.deepPurpleAccent,
      alignment: Alignment.center,
      child: Text(
        texta,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
