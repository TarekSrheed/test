import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_text/flutter_expandable_text.dart';
import 'package:stor_app/res/app_color.dart';
import 'package:stor_app/res/app_images.dart';
import 'package:stor_app/res/app_string.dart';
import 'package:stor_app/res/app_style.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int _selectedValue = 1;
  int count = 0;
  Offset position = Offset(100, 100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: itemColor,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.only(left: 7),
            margin: const EdgeInsets.only(left: 10, top: 10),
            alignment: Alignment.center,
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                )
              ],
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(
              Icons.arrow_back_ios,
              color: primaryColor,
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10, top: 10),
            alignment: Alignment.center,
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                )
              ],
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(
              Icons.favorite_outline,
              color: primaryColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                color: itemColor,
              ),
              child: Image.asset(
                item12,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 20, top: 20, bottom: 10, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        MODERN,
                        style: appbarTitleStyle,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 35,
                        height: 20,
                        decoration: BoxDecoration(
                          color: rateColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.star,
                              size: 8,
                              color: Colors.yellow.shade600,
                            ),
                            Text(
                              '4.8',
                              style: rateStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    ARMCHAIR,
                    style: armachStyle,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: ExpandableText(
                      style: descriptionStyle,
                      linkTextStyle: TextStyle(
                          color: primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                      DESCRPTION,
                      readMoreText: 'Read more',
                      readLessText: 'Read less',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Image.asset(partchar1),
                      Image.asset(partchar2),
                      Image.asset(partchar3),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        COLOR,
                        style: colorstyle,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Row(
                        children: [
                          Radio(
                              activeColor: radio1Color,
                              fillColor: MaterialStatePropertyAll(radio1Color),
                              value: 1,
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value!;
                                });
                              }),
                          Radio(
                              fillColor: MaterialStatePropertyAll(radio2Color),
                              activeColor: radio2Color,
                              value: 2,
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value!;
                                });
                              }),
                          Radio(
                            fillColor: MaterialStatePropertyAll(red),
                            activeColor: red,
                            value: 3,
                            groupValue: _selectedValue,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue = value!;
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.all(2),
                        alignment: Alignment.center,
                        width: 66,
                        height: 21,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: counterColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {});
                                count++;
                              },
                              child: Container(
                                width: 20,
                                height: 18,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: 12,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            Text(
                              count.toString(),
                              style: TextStyle(color: primaryColor),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {});
                                if (count > 0) {
                                  count--;
                                }
                              },
                              child: Container(
                                width: 20,
                                height: 18,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  Icons.remove,
                                  size: 12,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      alignment: Alignment.center,
                      width: 370,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: primaryColor,
                      ),
                      child: Text(
                        ADDTO,
                        style: addTooStyle,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
