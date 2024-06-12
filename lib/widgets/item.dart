import 'package:flutter/material.dart';
import 'package:stor_app/res/app_color.dart';
import 'package:stor_app/res/app_string.dart';
import 'package:stor_app/res/app_style.dart';

class ItemWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final String num;
  final String rate;
  ItemWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.num,
    required this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5),
      elevation: 1.5,
      child: Container(
        padding: const EdgeInsets.all(8),
        width: 193,
        height: 302,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(5),
              width: 177,
              height: 183,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: itemColor,
                  image: DecorationImage(
                    image: Image.asset(image).image,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 33,
                    height: 17,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      NEW,
                      style: newStyle,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 33,
                    height: 17,
                    decoration: BoxDecoration(
                        color: rateColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.star,
                          size: 8,
                          color: Colors.yellow.shade600,
                        ),
                        Text(
                          rate,
                          style: rateStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Text(
                title,
                style: itemStyle,
              ),
            ),
            Text(
              subTitle,
              style: subItemStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  num,
                  style: itemStyle,
                ),
                Container(
                  width: 42,
                  height: 42,
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
      ),
    );
  }
}
