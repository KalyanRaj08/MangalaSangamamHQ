import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Animation.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    gohome();
  }

  gohome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(context, AnimatePage(widget: HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 230, 158),
      body: Center(
        child: Image.asset('images/LOGO1.gif'),
      ),
    );
  }
}
