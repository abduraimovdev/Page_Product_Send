import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_navigator/core/database/database.dart';
import 'package:product_navigator/features/domain/entity.dart';
import 'package:product_navigator/features/presentaion/components/scroll_item.dart';
import 'package:product_navigator/features/presentaion/style/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(1, 1),
            child: Container(
              width: width,
              height: height * .8,
              padding: const EdgeInsets.only(top: 50),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: width,
                      height: 130,
                      padding: const EdgeInsets.only(left: 10, top: 50),
                      child: const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ScrollItem(
                              icon: Icons.star,
                              text: "Popular",
                              isActive: true,
                            ),
                            ScrollItem(
                              icon: Icons.chair,
                              text: "Chaires",
                            ),
                            ScrollItem(
                              icon: Icons.table_bar_sharp,
                              text: "Tables",
                            ),
                            ScrollItem(
                              icon: Icons.chair_sharp,
                              text: "Sofas",
                            ),
                            ScrollItem(
                              icon: Icons.bed_sharp,
                              text: "Chaires",
                            ),
                            ScrollItem(
                              icon: Icons.flashlight_on_outlined,
                              text: "Flash",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: width,
                      height: height * .6,
                      child: GridView.count(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        crossAxisCount: 2,
                        mainAxisSpacing: 50,
                        crossAxisSpacing: 10,
                        cacheExtent: 450,
                        children: products(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: width,
              height: height * .22,
              padding: const EdgeInsets.only(
                  top: 70, left: 20, right: 20, bottom: 0),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 15,
                    spreadRadius: 10,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "FurnitureCo.",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.mainColor,
                        ),
                      ),
                      Icon(
                        CupertinoIcons.cart,
                        size: 35,
                        color: CustomColor.mainColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  TextField(
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                    cursorColor: CustomColor.mainColor,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 20),
                      filled: true,
                      fillColor: CustomColor.inputColor,
                      hintText: "Search for furniture",
                      hintStyle: TextStyle(
                        color: CustomColor.inputTextColor,
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      suffixIcon: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: CustomColor.mainColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                      ),
                      prefixIcon: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
      ),
    );
  }

  List<Widget> products() => [
        for (Product item in DataBase.database)
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "view_product/", arguments: {"data" : item});
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Image.asset(
                    item.img,
                    width: double.infinity,
                    height: 150,
                  ),
                  Text(
                    item.name,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text("\$${item.price}"),
                ],
              ),
            ),
          ),
      ];
}
