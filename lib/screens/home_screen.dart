import 'package:flutter/material.dart';
import 'package:online_shop/screens/bestSellers_screen.dart';
import 'package:online_shop/widget/gettingProductItem.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var controller = PageController(viewportFraction: 0.9);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xffEEEEEE),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: _gettingAppBar(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: _getBannerSlider(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: _getCategoryItem(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: _gettingBestsellers(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GettingProductItem(),
                      );
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: _gettingMostVisited(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GettingProductItem(),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _gettingAppBar() {
    //گرفتن اپ بار محصولات
    return Container(
      width: 340,
      height: 46,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
        child: Row(
          children: [
            Image.asset('images/icon_apple_blue.png'),
            Spacer(),
            SizedBox(
              width: 200,
              height: 20,
              child: TextField(
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                  border: InputBorder.none,

                  hintTextDirection: TextDirection.rtl,
                  hint: Text(
                    'جستجوی محصولات',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'SM',
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            Image.asset('images/icon_search.png'),
          ],
        ),
      ),
    );
  }

  Widget _getBannerSlider() {
    // گرفتن اسلایدر بنر
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: 177,
          child: PageView.builder(
            itemCount: 5,
            controller: controller,

            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9),

                child: Column(
                  children: [
                    Container(
                      height: 177,

                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Positioned(
          bottom: 10,
          child: SmoothPageIndicator(
            controller: controller,
            count: 6,
            axisDirection: Axis.horizontal,
            effect: ExpandingDotsEffect(
              dotColor: Colors.white,
              activeDotColor: Colors.indigoAccent,

              expansionFactor: 6,
              dotHeight: 6,
              dotWidth: 6,
            ),
          ),
        ),
      ],
    );
  }

  Widget _gettingBestsellers() {
    // پر فروش ترین ها
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return BestSellers_Screen();
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        child: Row(
          children: [
            Row(
              children: [
                Image.asset('images/icon_left_categroy.png'),
                SizedBox(width: 12),
                Text(
                  'مشاهده همه',
                  style: TextStyle(
                    color: Color(0xff3B5EDF),
                    fontSize: 12,
                    fontFamily: 'SM',
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              'پر فروش ترین ها ',
              style: TextStyle(
                color: Color(0xff858585),
                fontSize: 12,
                fontFamily: 'SM',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  //==================================================

  Widget _gettingMostVisited() {
    // پر بازدید ها
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Row(
        children: [
          Row(
            children: [
              Image.asset('images/icon_left_categroy.png'),
              SizedBox(width: 12),
              Text(
                'مشاهده همه',
                style: TextStyle(
                  color: Color(0xff3B5EDF),
                  fontSize: 12,
                  fontFamily: 'SM',
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            'پر بازدید ترین ها',
            style: TextStyle(
              color: Color(0xff858585),
              fontSize: 12,
              fontFamily: 'SM',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

Widget _getCategoryItem() {
  // دسته بندی محصولات
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Text(
          textAlign: TextAlign.end,

          'دسته بندی',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'SM',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      Column(
        children: [
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 56,
                            height: 56,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          Icon(Icons.mouse, color: Colors.white, size: 30),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'همه',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'SM',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ],
  );
}
