import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

part 'sections/item_section.dart';
class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produk'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const SubtitleText('3 Product'),
        Expanded(
          child: ListView.separated(
            itemBuilder: ((context, index) {
              return const _ItemSection();
            }),
            separatorBuilder: (context, index) {
              return Dimens.dp40.height;
            },
            itemCount: 3,
          ),
        )
      ]),
    );
  }
}
