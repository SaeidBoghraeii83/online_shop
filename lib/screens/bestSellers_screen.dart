import 'package:flutter/material.dart';
import 'package:online_shop/widget/gettingProductItem.dart';

class BestSellers_Screen extends StatelessWidget {
  // صفحه پر فروش ترین ها
  const BestSellers_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              sliver: SliverToBoxAdapter(
                child: Container(
                  height: 46,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('images/search.png'),
                      Text(
                        'پر فروش ترین ها ',
                        style: TextStyle(
                          color: Color(0xff3B5EDF),
                          fontFamily: 'SM',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Image.asset('images/back.png'),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 14),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.7,
                ),
                delegate: SliverChildBuilderDelegate((context, index) {
                  return GettingProductItem();
                }, childCount: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
