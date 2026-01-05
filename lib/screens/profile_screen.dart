import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_vertical_product_card.dart';
import '../widgets/custom_horizontal_product_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: ScreenUtil().setHeight(60)),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // TODO: Edit the NetworkImage link into your own image
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        'assets/images/2023-100448Pic.jpg',
                      ),
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // TODO: Change the name into your own name
                        CustomText(
                          text: 'Gabriel Josh Eugenio',
                          fontSize: ScreenUtil().setSp(25),
                          color: NU_BLUE,
                          fontWeight: FontWeight.w900,
                        ),
                        SizedBox(height: ScreenUtil().setHeight(3)),
                        // TODO: Change the coin value into your own value
                        Row(
                          children: [
                            CustomText(
                              text: 'Coins ',
                              fontSize: ScreenUtil().setSp(12),
                              color: Colors.grey,
                            ),
                            CustomText(
                              text: '12500',
                              fontSize: ScreenUtil().setSp(12),
                              color: NU_YELLOW,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(15)),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(20),
                ),
                child: CustomText(
                  text: 'Recommended for you',
                  fontSize: ScreenUtil().setSp(20),
                  color: NU_BLUE,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(20),
                ),
                child: SizedBox(
                  height: ScreenUtil().setHeight(300),
                  child: GridView.count(
                    padding: EdgeInsets.zero,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 4,
                    children: const [
                      // TODO: Create 5 Recommended for you items [Use CustomVerticalProductCard]
                      CustomVerticalProductCard(
                        prodName: 'NU Jacket',
                        prodSize: 'Large',
                        prodImage: 'assets/images/nu_varsity.png',
                        prodPrice: '\₱2250.00',
                        numStars: 5,
                        quantity: 1,
                        description: 'VARSITY JACKET | NATIONAL UNIVERSITY',
                      ),
                      CustomVerticalProductCard(
                        prodName: 'NU Emblem',
                        prodSize: 'Medium',
                        prodImage: 'assets/images/nu_emblem.png',
                        prodPrice: '\₱800.00',
                        numStars: 4,
                        quantity: 1,
                        description: 'EMBLEM TEES | NATIONAL UNIVERSITY',
                      ),
                      CustomVerticalProductCard(
                        prodName: 'NU Classic',
                        prodSize: 'Medium',
                        prodImage: 'assets/images/nu_classic.png',
                        prodPrice: '\₱800.00',
                        numStars: 5,
                        quantity: 1,
                        description:
                            'VARSITY CLASSIC TEES | NATIONAL UNIVERSITY',
                      ),
                      CustomVerticalProductCard(
                        prodName: 'NU Hoodie',
                        prodSize: 'Large',
                        prodImage: 'assets/images/nu_hoodie.png',
                        prodPrice: '\₱1750.00',
                        numStars: 5,
                        quantity: 1,
                        description: 'HOODIE | NATIONAL UNIVERSITY',
                      ),
                      CustomVerticalProductCard(
                        prodName: 'NU Sweater',
                        prodSize: 'Small',
                        prodImage: 'assets/images/nu_sweater.png',
                        prodPrice: '\₱1500.00',
                        numStars: 3,
                        quantity: 1,
                        description: 'SWEATER | NATIONAL UNIVERSITY',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(10)),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(20),
                ),
                child: CustomText(
                  text: 'My Items',
                  fontSize: ScreenUtil().setSp(20),
                  color: NU_BLUE,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(10)),
              TabBar(
                indicatorColor: NU_BLUE,
                tabs: [
                  Tab(
                    child: CustomText(
                      text: 'To Pay',
                      fontSize: ScreenUtil().setSp(15),
                    ),
                  ),
                  Tab(
                    child: CustomText(
                      text: 'To Ship',
                      fontSize: ScreenUtil().setSp(15),
                    ),
                  ),
                  Tab(
                    child: CustomText(
                      text: 'To Receive',
                      fontSize: ScreenUtil().setSp(15),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(20),
                ),
                height: ScreenUtil().setHeight(1000),
                child: TabBarView(
                  children: [_toPay(), _toShip(), _toReceived()],
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(10)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _toPay() {
    return Column(
      children: [
        // TODO: Create 2 toPay CustomHorizontalProductCard [set isCheckout to true]
        CustomHorizontalProductCard(
          prodName: 'NU Varsity Jacket',
          prodSize: 'Large',
          prodImage: 'assets/images/nu_varsity.png',
          prodPrice: '\₱2250.00',
          numStars: 5,
          quantity: 1,
          description: 'VARSITY JACKET | NATIONAL UNIVERSITY',
          isCheckout: true,
        ),
      ],
    );
  }

  Widget _toShip() {
    return Column(
      children: [
        // TODO: Create 3 toShip CustomHorizontalProductCard [set isCheckout to true]
        CustomHorizontalProductCard(
          prodName: 'NU Sweater',
          prodSize: 'Small',
          prodImage: 'assets/images/nu_sweater.png',
          prodPrice: '\₱1500.00',
          numStars: 3,
          quantity: 1,
          description: 'SWEATER | NATIONAL UNIVERSITY',
        ),
      ],
    );
  }

  Widget _toReceived() {
    return Column(
      children: [
        // TODO: Create 4 toReceived CustomHorizontalProductCard [set isCheckout to true]
        CustomHorizontalProductCard(
          prodName: 'NU Hoodie',
          prodSize: 'Large',
          prodImage: 'assets/images/nu_hoodie.png',
          prodPrice: '\₱1750.00',
          numStars: 5,
          quantity: 1,
          description: 'HOODIE | NATIONAL UNIVERSITY',
        ),
      ],
    );
  }
}
