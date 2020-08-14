import 'package:OnlineShop/api/category.dart';
import 'package:OnlineShop/components/constant.dart';
import 'package:flutter/material.dart';

import 'category_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 10),
      curve: Curves.easeIn,
      child: Container(
        color: kPrimaryColor.withOpacity(0.1),
        width: double.infinity,
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  ListView.builder(
                    itemCount: homeCategories.length,
                    itemBuilder: (context, index) => CategoryCard(
                      index: index,
                      cate: homeCategories[index],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
