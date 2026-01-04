import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_horizontal_product_card.dart';
import '../widgets/custom_vertical_product_card.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.fromLTRB(ScreenUtil().setSp(20),
            ScreenUtil().setSp(60), ScreenUtil().setSp(20), 0),
        color: Colors.white,
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                radius: ScreenUtil().setSp(30),
                backgroundColor: NU_YELLOW,
                child: Padding(
                  padding: EdgeInsets.all(ScreenUtil().setSp(12.5)),
                  child: Image.asset('assets/images/nubdexchange_logo.png'),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'Hello, Cyrus',
                fontSize: ScreenUtil().setSp(20),
                color: NU_BLUE,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text:
                    'Lorem ipsum odor amet, consectetuer adipiscing elit. Egestas vulputate mattis accumsan ridiculus semper augent.',
                fontSize: ScreenUtil().setSp(12),
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'Barked',
                fontSize: ScreenUtil().setSp(15),
                color: NU_BLUE,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(800),
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // TODO: Create 5 Barked Items [Use CustomVerticalProductCard Widget]
                  ],
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'On Sale',
                fontSize: ScreenUtil().setSp(15),
                color: NU_YELLOW,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            // TODO: Create 10 On Sale Items [Use CustomHorizontalProductCard]
          ],
        ),
      ),
    );
  }
}
