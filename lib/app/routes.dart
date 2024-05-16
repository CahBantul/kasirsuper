import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kasirsuper/core/components/components.dart';
import 'package:kasirsuper/feature/home/home.dart';

Route<dynamic> routes(settings) {
  switch (settings.name) {
    case HomePage.routeName:
      return CupertinoPageRoute(builder: (context) {
        return const HomePage();
      });
    default:
      return CupertinoPageRoute(builder: (context) {
        return const Scaffold(body: Center(child: HeadingText('Not Found!')));
      });
  }
}
