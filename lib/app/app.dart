import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/feature/home/home.dart';
import 'package:kasirsuper/feature/settings/settings.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kasir Super',
      debugShowCheckedModeBanner: false,
      theme: LigthTheme(AppColor.green).theme,
      home: const SplashPage(),
      onGenerateRoute:(settings) {
        switch (settings.name) {
          case HomePage.routeName:
            return CupertinoPageRoute(builder: (context){
              return const HomePage();
            });
          default:
          return CupertinoPageRoute(builder: (context){
            return const Scaffold(
              body: Center(child: HeadingText('Not Found!'))
            );
          });
        }
      },
    );
  }
}