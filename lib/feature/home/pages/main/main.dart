import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/core/preferences/preferences.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda'),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(Dimens.defaultSize),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: EdgeInsets.all(Dimens.dp24),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const RegularText("Total Penjualan"),
                        Dimens.dp4.height,
                        const HeadingText(
                          "Rp. 5.000.000.000",
                          style: TextStyle(fontSize: Dimens.dp24),
                        ),
                        Dimens.dp6.height,
                        RegularText.semiBold(
                          "Lihat Detail",
                          style: TextStyle(
                              fontSize: Dimens.dp12,
                              color: context.theme.primaryColor),
                        ),
                      ]),
                ),
              )
            ],
          )),
    );
  }
}
