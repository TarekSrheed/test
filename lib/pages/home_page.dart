// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stor_app/pages/detalis_page.dart';

import 'package:stor_app/res/app_color.dart';
import 'package:stor_app/res/app_images.dart';
import 'package:stor_app/res/app_string.dart';
import 'package:stor_app/res/app_style.dart';
import 'package:stor_app/widgets/item.dart';
import 'package:stor_app/widgets/item2.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> listViewItem = [
    CHAIRS,
    CUPBOARD,
    TABLES,
    LAMPS,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        title: Text(
          APPBARTITLE,
          style: appbarTitleStyle,
        ),
        actions: [
          Image.asset(person),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 362,
              height: 52,
              child: TextField(
                decoration: InputDecoration(
                  hintText: HINT,
                  hintStyle: hintStyle,
                  suffixIcon: const Icon(
                    Icons.menu,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: primaryColor,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  bottom: 15,
                  top: 15,
                ),
                child: Text(
                  CATEGORIES,
                  style: appbarTitleStyle,
                ),
              ),
            ),
            SizedBox(
              height: 35,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listViewItem.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    alignment: Alignment.center,
                    width: 93,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (index == 0) ? primaryColor : scondryColor,
                    ),
                    child: Text(
                      listViewItem[index],
                      style: (index == 0)
                          ? listViewItemOneStyle
                          : listViewItemsStyle,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => DetailsPage()),
                        ),
                      );
                    },
                    child: ItemWidget(
                      image: item1,
                      title: MODERN,
                      subTitle: ARMCHAIR,
                      num: "₹ 12,500",
                      rate: "4.8",
                    ),
                  ),
                  ItemWidget(
                    image: item2,
                    title: MINIMALIST,
                    subTitle: ARMCHAIR,
                    num: "₹ 8,300",
                    rate: "4.0",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  bEST,
                  style: bestStyle,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ListBottom(
                    image: item3,
                    title: YELLOWCHAIR,
                    num: "₹ 10,500",
                  ),
                  ListBottom(
                    image: item4,
                    title: YELLOWCHAIR,
                    num: "₹ 9,500",
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
