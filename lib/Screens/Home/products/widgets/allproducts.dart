import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_web/constants.dart';
import 'package:flutter_ecommerce_web/responsive.dart';

import 'european_product.dart';
import 'all_products.dart';
import 'brazilian_products.dart';

class AllBrandsProduct extends StatefulWidget {
  const AllBrandsProduct({Key? key}) : super(key: key);

  @override
  _AllBrandsProductState createState() => _AllBrandsProductState();
}

class _AllBrandsProductState extends State<AllBrandsProduct> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            TabBar(
                indicatorColor: kPrimaryColor,
                unselectedLabelColor: Colors.black,
                labelColor: kPrimaryColor,
                indicatorWeight: 2.0,
                unselectedLabelStyle: TextStyle(
                  fontSize: _size.width >= 414 ? 18 : 12,
                ),
                labelStyle: TextStyle(
                  fontSize: _size.width >= 414 ? 18 : 12,
                  fontWeight: FontWeight.bold,
                ),
                tabs: const [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Supplier 1",
                  ),
                  Tab(
                    text: "Supplier 2",
                  ),
                ]),
            if (Responsive.isDesktop(context))
              const SizedBox(
                height: 350,
                child: TabBarView(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: AllProductCard(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: BrazilianProductCard(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: EuropeanProductCard(),
                    ),
                  ],
                ),
              ),
            if (!Responsive.isDesktop(context))
              const SizedBox(
                height: 600,
                child: TabBarView(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: MobiAllProductCard(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: MobiBrazilianProductCard(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: MobEuropeanProductCard(),
                    ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
