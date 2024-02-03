import 'package:card_widget/app_bar.dart';
import 'package:card_widget/content.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: const MyContent(),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: Colors.blue,
          items: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                "assets/icon_navigation/card.png",
                width: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                "assets/icon_navigation/graph.png",
                width: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                "assets/icon_navigation/wallet.png",
                width: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                "assets/icon_navigation/profile.png",
                width: 25,
              ),
            ),
          ]),
    );
  }
}
