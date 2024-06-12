import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stor_app/res/app_color.dart';
import 'package:stor_app/res/app_string.dart';
import 'package:stor_app/res/app_style.dart';

class ListBottom extends StatelessWidget {
  String image;
  String title;

  String num;

  ListBottom({
    Key? key,
    required this.image,
    required this.title,
    required this.num,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5),
      elevation: 1.5,
      child: Container(
        width: 262,
        height: 107,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(3),
              alignment: Alignment.bottomRight,
              width: 106,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: itemColor,
                image: DecorationImage(
                  image: Image.asset(image).image,
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                width: 33,
                height: 17,
                decoration: BoxDecoration(
                    color: rateColor, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.star,
                      size: 8,
                      color: Colors.yellow.shade600,
                    ),
                    Text(
                      "4.5",
                      style: rateStyle,
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: itemStyle,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  ARMCHAIR,
                  style: subItemStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 27, left: 15),
                      child: Text(
                        num,
                        style: itemStyle,
                      ),
                    ),
                    Container(
                      width: 33,
                      height: 33,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: primaryColor,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
