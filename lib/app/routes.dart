import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kasirsuper/core/components/components.dart';
import 'package:kasirsuper/feature/home/home.dart';
import 'package:kasirsuper/feature/home/pages/pages.dart';

Route<dynamic> routes(settings) {
  switch (settings.name) {
    case MainPage.routeName:
      return CupertinoPageRoute(builder: (context) {
        return const MainPage();
      });
    default:
      return CupertinoPageRoute(builder: (context) {
        return const Scaffold(body: Center(child: HeadingText('Not Found!')));
      });
  }
}
