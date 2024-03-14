// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import "package:new_ui/my_card.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 188, 216, 237),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 170, 238, 172),
        title: const Text(
          "My Cards",
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: "30"),
        ),
        actions: [
          Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  shape: BoxShape.circle),
              child: const Icon(Icons.add)),
          const SizedBox(
            width: 20,
          ),
          Container(
            width: 30,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                shape: BoxShape.circle),
            child: IconButton(
              icon: const Icon(Icons.search),
              iconSize: 20,
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                MyCard(),
                MyCard(),
                MyCard(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "JUHU SAJWAR CARD DETAILS",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'images/assests/wallet.png',
                height: 100,
                width: 110,
              ),
              Image.asset(
                'images/assets/click.png',
                height: 100,
                width: 110,
              ),
              Image.asset(
                'images/assets/dish.png',
                height: 100,
                width: 110,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "WALLET",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "WALLET",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "WALLET",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Color.fromARGB(255, 234, 249, 249),
              backgroundColor: Color.fromARGB(255, 158, 155, 158),
              elevation: 5,
              minimumSize: Size(250, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            child: Text(
              "ADD NEW CARD",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
