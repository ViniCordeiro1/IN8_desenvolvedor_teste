import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_web/Screens/Home/home_screen.dart';
import 'package:flutter_ecommerce_web/constants.dart';

import 'Home/products/widgets/allproducts.dart';
import 'Home/widgets/menu.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
                    title: 'Home',
                    press: () {
                      print('Voltou para Home');

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const HomeScreen();
                      }));
                    },
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
            //now we create banner
            //for this import packages
            AllBrandsProduct(),
            //now we will make our site responsive
          ],
        ),
      ),
    );
  }
}
