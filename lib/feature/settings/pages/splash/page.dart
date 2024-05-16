import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) =>
        Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            MainAssets.logo,
            width: MediaQuery.of(context).size.width / 2,
          ),
          16.0.height,
          const HeadingText('Kasir Super'),
        ],
      ),
    ));
  }
}
