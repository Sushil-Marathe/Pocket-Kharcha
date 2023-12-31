import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_finance_dark/helper/colors.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final res_width = MediaQuery.of(context).size.width;
    final res_height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      child: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          padding: EdgeInsets.only(left: 25, right: 10),
          children: [
            SizedBox(
              height: res_height * 0.075,
            ),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: ksecondarycolor,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                height: 60,
                child: Image.asset(
                  'assets/images/Photo.jpg',
                ),
              ),
            ),
            SizedBox(
              height: res_height * 0.0175,
            ),
            Text(
              "Sushil Marathe",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              "Software Developer",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: res_height * 0.04,
            ),
            DrawerItems(
              text: "Industrial",
              image: 'assets/images/corporation.png',
            ),
            DrawerItems(
              text: "Privacy & Security",
              image: 'assets/images/policeman.png',
            ),
            DrawerItems(
              text: "E-Commerce",
              image: 'assets/images/shopping-cart.png',
            ),
            DrawerItems(
              text: "Daily Needs",
              image: 'assets/images/food.png',
            ),
            DrawerItems(
              text: "Setting",
              image: 'assets/images/tools.png',
            ),
            DrawerItems(
              text: "Biometrics",
              image: 'assets/images/scanner.png',
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItems extends StatelessWidget {
  final text;
  final image;
  const DrawerItems({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(
        image,
        color: Colors.white,
        width: 30,
        height: 30,
      ),
      onTap: () {
        Navigator.pop(context);
      },
      title: Text(text, style: Theme.of(context).textTheme.bodyMedium),
    );
  }
}
