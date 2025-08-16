import 'package:flutter/material.dart';

class Category_Screen extends StatelessWidget {
  const Category_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                child: _gettingAppbarCategory(),
              ),
            ),
            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 25,
                vertical: 10,
              ),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 17,
                  childAspectRatio: 1,
                  crossAxisSpacing: 12,
                ),
                delegate: SliverChildBuilderDelegate((context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(10),
                    child: Image.asset('images/bnr.png'),
                  );
                }, childCount: 11),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // appBarCategory
  Widget _gettingAppbarCategory() {
    return Container(
      height: 46,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            'دسته بندی',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff3B5EDF),
              fontSize: 16,
              fontFamily: 'SM',
              fontWeight: FontWeight.w700,
            ),
          ),
          Positioned(
            left: 20,
            child: Image.asset('images/icon_apple_blue.png'),
          ),
        ],
      ),
    );
  }
}
