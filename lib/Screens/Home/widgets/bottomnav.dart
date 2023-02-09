import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_web/constants.dart';

import 'menu.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      color: kgreyColor,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            constraints: const BoxConstraints(maxWidth: kMaxWidth),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "E-Commerce",
                        style: TextStyle(
                          fontSize: _size.width >= 370 ? 22 : 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Spacer(),
                    _size.width >= 550 ? const WebMenu() : const MobMenu(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
