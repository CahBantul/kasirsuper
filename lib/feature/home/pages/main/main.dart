import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/feature/home/pages/home/page.dart';
import 'package:kasirsuper/feature/pos/pages/pages.dart';
import 'package:kasirsuper/feature/product/pages/pages.dart';
import 'package:kasirsuper/feature/settings/pages/pages.dart';
import 'package:kasirsuper/feature/transaction/pages/pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static const routeName = '/home';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  final pages = const <Widget> [
    HomePage(),
    TransactionPage(),
    POSPage(),
    ProductPage(),
    SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap:(value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(AppIcons.storefront), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(AppIcons.receipt), label: 'Transaksi'),
          BottomNavigationBarItem(icon: Icon(AppIcons.pos), label: 'POS'),
          BottomNavigationBarItem(icon: Icon(AppIcons.product), label: 'Produk'),
          BottomNavigationBarItem(icon: Icon(AppIcons.settings), label: 'Lainnya'),
        ],
      ),
    );
  }
}
