import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import '../widgets/custom_horizontal_product_card.dart';
import '../widgets/custom_text.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        ScreenUtil().setWidth(20),
        ScreenUtil().setHeight(60),
        ScreenUtil().setWidth(20),
        0,
      ),
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: Column(
        children: [
          CustomText(
            text: 'Cart',
            fontSize: ScreenUtil().setSp(25),
            color: NU_BLUE,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: ScreenUtil().setHeight(10)),
          Expanded(
            flex: 1,
            child: SizedBox(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  CustomHorizontalProductCard(
                    prodName: 'Test 1',
                    prodSize: 'test',
                    prodPrice: '\₱499.99',
                    btnName: 'Check Out',
                    numStars: 5,
                    description: 'test description',
                    isCart: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
