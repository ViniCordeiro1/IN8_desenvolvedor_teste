import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_web/constants.dart';
import 'package:flutter_ecommerce_web/responsive.dart';

import 'widgets/trending_products.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: const BoxConstraints(maxWidth: kMaxWidth),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //trending product section
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: kSecondaryColor, width: 3))),
                child: const Text(
                  "Trending Products",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              if (Responsive.isDesktop(context)) const TrendingProductCard(),
              if (!Responsive.isDesktop(context)) const MobTrendingProduct(),

              const SizedBox(
                height: 100,
              ),
              //bottom Navigation menu
            ],
          ),
        ),
      ],
    );
  }
}
