import 'package:flutter/material.dart';

import '../components/categories.dart';
import '../components/my_text_field.dart';
import '../components/welcome_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = [
    "Fruites",
    "Vetables",
    "Cereals",
    "Bakery",
    "Eggs"
  ];
  int selectedIndex = 0;

  void onTapCategory(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.menu,
                color: Colors.black,
              ),
              Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
      body: Column(children: [
        // Welcome title
        const WelcomeTitle(text: "Welcome!"),
        const SizedBox(height: 20),
        //search field
        const MyTextField(),
        // categories
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Container(
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Categories(
                    name: categories[index],
                    selectedIndex: selectedIndex,
                    index: index,
                    onTapCategory: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  );
                }),
          ),
        )
        // fruits images
      ]),
    );
  }
}
