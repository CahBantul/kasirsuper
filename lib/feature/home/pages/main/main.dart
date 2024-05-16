import 'package:flutter/material.dart';
import 'package:kasirsuper/feature/home/pages/home/page.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomePage(),
    );
  }
}

