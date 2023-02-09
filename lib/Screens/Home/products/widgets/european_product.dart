import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_web/constants.dart';
import 'package:flutter_ecommerce_web/model/european_model.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class EuropeanProductCard extends StatelessWidget {
  const EuropeanProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      //shrink wrap to avoid error
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      crossAxisCount: 4,
      itemCount: europeanProducts.length,
      itemBuilder: (BuildContext context, int index) => EuropeanProducts(
        press: () {},
        europeanProducts: europeanProducts[index],
      ),
      staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
    );
  }
}

class MobEuropeanProductCard extends StatelessWidget {
  const MobEuropeanProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      //shrink wrap to avoid error
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      crossAxisCount: 2,
      itemCount: europeanProducts.length,
      itemBuilder: (BuildContext context, int index) => EuropeanProducts(
        press: () {},
        europeanProducts: europeanProducts[index],
      ),
      staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
    );
  }
}

// ignore: camel_case_types
class EuropeanProducts extends StatefulWidget {
  final EuropeanProduct europeanProducts;
  final VoidCallback press;
  const EuropeanProducts({
    Key? key,
    required this.europeanProducts,
    required this.press,
  }) : super(key: key);

  @override
  State<EuropeanProducts> createState() => _EuropeanProductsState();
}

class _EuropeanProductsState extends State<EuropeanProducts> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.press,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: kDefaultDuration,
          width: 300,
          height: 250,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: kgreyColor, width: 3),
              boxShadow: [if (isHover) kDefaultShadow]),
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.asset(
                      widget.europeanProducts.image,
                      height: 150,
                      width: 150,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.europeanProducts.title,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\$${widget.europeanProducts.price}",
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              isHover
                  ? Container(
                      color: Colors.black12,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MaterialButton(
                            color: kSecondaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            height: 40,
                            onPressed: () {},
                            child: const Text(
                              "Quick View",
                              style: TextStyle(color: kWhiteColor),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            color: kSecondaryColor,
                            height: 40,
                            onPressed: () {},
                            child: const Text(
                              "Shop Now",
                              style: TextStyle(color: kWhiteColor),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
            ],
          ),
        ));
  }
}
