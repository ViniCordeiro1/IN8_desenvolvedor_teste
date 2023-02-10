import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_web/constants.dart';
import 'package:flutter_ecommerce_web/model/api_service.dart';
import 'package:flutter_ecommerce_web/model/brazilian_model_ok.dart';
import 'package:flutter_ecommerce_web/responsive.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BrazilianProductCard extends StatefulWidget {
  const BrazilianProductCard({Key? key}) : super(key: key);

  @override
  State<BrazilianProductCard> createState() => _BrazilianProductCardState();
}

class _BrazilianProductCardState extends State<BrazilianProductCard> {
  late List<BrazilianProductOk>? _brazilianProducts = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _brazilianProducts = (await ApiService().getBrazilianProductOK())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      //shrink wrap to avoid error
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      crossAxisCount: 4,
      itemCount: _brazilianProducts?.length,
      itemBuilder: (BuildContext context, int index) => TrendingProducts(
        press: () {},
        products: _brazilianProducts![index],
      ),
      staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
    );
  }
}

class MobiBrazilianProductCard extends StatelessWidget {
  const MobiBrazilianProductCard({Key? key, required this.brazilianProducts})
      : super(key: key);

  final List<BrazilianProductOk> brazilianProducts;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      //shrink wrap to avoid error
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      crossAxisCount: 2,
      itemCount: brazilianProducts.length,
      itemBuilder: (BuildContext context, int index) => TrendingProducts(
        press: () {},
        products: brazilianProducts[index],
      ),
      staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
    );
  }
}

class TrendingProducts extends StatefulWidget {
  final BrazilianProductOk products;
  final VoidCallback press;
  const TrendingProducts({
    Key? key,
    required this.products,
    required this.press,
  }) : super(key: key);

  @override
  State<TrendingProducts> createState() => _TrendingProductsState();
}

class _TrendingProductsState extends State<TrendingProducts> {
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
                    Image.network(
                      widget.products.imagem,
                      height: 150,
                      width: 150,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      widget.products.nome,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\$${widget.products.preco}",
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

class BrazilianSection extends StatelessWidget {
  const BrazilianSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: kMaxWidth),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: kSecondaryColor, width: 3))),
                  child: const Text(
                    "Brazilian Products",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                if (Responsive.isDesktop(context)) const BrazilianProductCard(),
                if (!Responsive.isDesktop(context))
                  const MobiBrazilianProductCard(
                    brazilianProducts: [],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
