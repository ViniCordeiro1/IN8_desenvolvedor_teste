// ignore: unused_import
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_web/Screens/Home/products/widgets/allproducts.dart';
import 'package:flutter_ecommerce_web/Screens/Home/widgets/bottomnav.dart';
import 'package:flutter_ecommerce_web/Screens/Home/widgets/menu.dart';
import 'package:flutter_ecommerce_web/constants.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      //scrollable widget
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Center(
                child: Text(
                  "E-Commerce",
                  textScaleFactor: 1.6,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  MenuItems(
                    isActive: true,
                    title: 'Home',
                    press: () {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MenuItems(
                    title: 'Products',
                    press: () {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MenuItems(
                    title: 'Category',
                    press: () {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MenuItems(
                    title: 'Contact Us',
                    press: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            //now we create menu and header
            Navigation(),
            AllBrandsProduct(),
            //now we create banner
            //for this import packages
            BottomNav()
            //now we will make our site responsive
          ],
        ),
      ),
    );
  }
}
