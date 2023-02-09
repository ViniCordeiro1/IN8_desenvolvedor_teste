import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_web/Screens/Home/home_screen.dart';
import 'package:flutter_ecommerce_web/constants.dart';

import 'Home/widgets/menu.dart';
import 'Home/products/widgets/Cart.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
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
            Cart(),
            //now we will make our site responsive
          ],
        ),
      ),
    );
  }
}
