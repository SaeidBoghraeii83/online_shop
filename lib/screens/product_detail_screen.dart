import 'dart:ui';

import 'package:flutter/material.dart';

class Product_Detail_Screen extends StatelessWidget {
  const Product_Detail_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
              sliver: SliverToBoxAdapter(child: _getAppbarDetail()),
            ),
            SliverToBoxAdapter(
              child: Text(
                'SE 2022 آیفون ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'SM',
                  fontSize: 16,
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
              sliver: SliverToBoxAdapter(child: _getImagesProductDetail()),
            ),
            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
              sliver: SliverToBoxAdapter(child: _getDetailsProduct()),
            ),
            SliverPadding(
              padding: EdgeInsetsGeometry.only(top: 20, bottom: 30),
              sliver: SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _getPriceProductButton(),
                    SizedBox(width: 15),
                    _getAddProductToBasketButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getDetailsProduct() {
    return Container(
      height: 352,
      decoration: BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _getColorProduct(),
          SizedBox(height: 20),
          _getMemoryProductItem(),
          _getSpecificationsProductItem(),
          SizedBox(height: 25),
          _getCommentBoxWithAvatars(
            images: [
              "images/p1.png",
              "images/p2.png",
              "images/p3.png",
              "images/p4.png",
            ],
          ),
        ],
      ),
    );
  }

  Widget _getColorProduct() {
    // انتخاب رنگ محصولات
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'انتخاب رنگ',
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'SM',
            fontWeight: FontWeight.w500,
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 26,
                height: 26,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              SizedBox(width: 8),
              Container(
                width: 26,
                height: 26,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              SizedBox(width: 8),
              Container(
                width: 77,
                height: 26,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _getMemoryProductItem() {
    return // حافظه دستگاه ها
    Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'انتخاب حافظه داخلی',
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'SM',
            fontWeight: FontWeight.w500,
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 74,
                height: 26,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 0.5, color: Color(0xff858585)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    '۵۱۲',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'SM',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15),

              Container(
                width: 74,
                height: 26,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 0.5, color: Color(0xff858585)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    '۲۵۶',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'SM',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15),
              Container(
                width: 74,
                height: 26,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 0.5, color: Color(0xff858585)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    '۱۲۸',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'SM',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _getSpecificationsProductItem() {
    // مشخصات محصول
    return Column(
      children: [
        Container(
          height: 46,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Color(0xff858585)),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Row(
                  children: [
                    Image.asset('images/icon_left_categroy.png'),
                    SizedBox(width: 10),
                    Text(
                      'مشاهده',
                      style: TextStyle(
                        fontFamily: 'SM',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff3B5EDF),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  ': مشخصات فنی  ',
                  style: TextStyle(
                    fontFamily: 'SM',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 25),
        Container(
          height: 46,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Color(0xff858585)),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Row(
                  children: [
                    Image.asset('images/icon_left_categroy.png'),
                    SizedBox(width: 10),
                    Text(
                      'مشاهده',
                      style: TextStyle(
                        fontFamily: 'SM',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff3B5EDF),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  ' : توضیحات محصول ',
                  style: TextStyle(
                    fontFamily: 'SM',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _getImagesProductDetail() {
    // جزِیات عکس های محصول
    return Container(
      height: 284,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 15,
            top: 15,
            child: Row(
              children: [
                Image.asset('images/icon_star.png'),
                SizedBox(width: 5),
                Text(
                  '۴.۶',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SM',
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Positioned(top: 35, child: Image.asset('images/iphone.png')),
          Positioned(
            right: 15,
            top: 15,
            child: Image.asset('images/icon_favorite_deactive.png'),
          ),

          Positioned(
            bottom: 40,
            child: Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/s1.png'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1, color: Color(0xff858585)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(width: 25),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/s1.png'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1, color: Color(0xff858585)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(width: 25),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/s1.png'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1, color: Color(0xff858585)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _getAppbarDetail() {
  // گرفتن اپ بار
  return Container(
    height: 46,
    decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('images/icon_apple_blue.png'),
          Text(
            'آیفون',
            style: TextStyle(
              color: Color(0xff3B5EDF),
              fontFamily: 'SM',
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          Image.asset('images/back.png'),
        ],
      ),
    ),
  );
}

Widget _getCommentBoxWithAvatars({
  // بخش کامنت ها
  required List<String> images,
  int maxVisible = 4,
}) {
  final visibleImages = images.take(maxVisible).toList();
  final remaining = images.length - visibleImages.length;

  return Container(
    height: 46,
    decoration: BoxDecoration(
      border: Border.all(width: 1, color: const Color(0xff858585)),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // سمت چپ
          Row(
            children: [
              Image.asset('images/icon_left_categroy.png'),
              const SizedBox(width: 10),
              const Text(
                'مشاهده',
                style: TextStyle(
                  fontFamily: 'SM',
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff3B5EDF),
                ),
              ),
            ],
          ),

          // سمت راست
          Row(
            children: [
              SizedBox(
                height: 30,
                child: Row(
                  children: [
                    ...visibleImages.asMap().entries.map((entry) {
                      final index = entry.key;
                      final path = entry.value;
                      return Transform.translate(
                        offset: Offset(-10.0 * index, 0),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage(path),
                        ),
                      );
                    }),
                  ],
                ),
              ),
              const Text(
                ': نظرات کاربران',
                style: TextStyle(
                  fontFamily: 'SM',
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _getPriceProductButton() {
  // دکمه قیمت محصول
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 160,
        height: 53,
        decoration: BoxDecoration(
          color: Color(0xff1DB68B),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'تومان',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 12,
                fontFamily: 'SM',
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '۵٬۳۵۰٬۰۰۰',
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: 'SM',
                  ),
                ),
                Text(
                  '۴۵٬۳۵۰٬۰۰۰',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'SM',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.red,
              ),
              width: 25,
              height: 15,
              child: Text(
                textAlign: TextAlign.center,
                '%5',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'SM',
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _getAddProductToBasketButton() {
  // دکمه سبد خرید
  return Container(
    width: 140,
    height: 53,
    decoration: BoxDecoration(
      color: Color(0xff3B5EDF),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Text(
        'افزودن به سبد خرید',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: 'SM',
          fontSize: 12,
        ),
      ),
    ),
  );
}
