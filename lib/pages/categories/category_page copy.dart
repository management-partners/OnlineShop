import 'package:OnlineShop/components/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryPage extends StatelessWidget {
  final String cateName;

  const CategoryPage({Key key, this.cateName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: false,
        titleSpacing: 0.0,
        title: Text(
          cateName.toUpperCase() + ' Product',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/search.svg'),
            onPressed: () {
              Center(
                child: Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 5.0),
                  width: size.width * 0.8,
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        icon: SvgPicture.asset(
                          'assets/icons/search.svg',
                          fit: BoxFit.cover,
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                        )),
                  ),
                ),
              );
            },
          ),
          IconButton(
            icon: SvgPicture.asset('assets/icons/cart.svg'),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 5.0),
              width: size.width * 0.8,
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    icon: SvgPicture.asset(
                      'assets/icons/search.svg',
                      fit: BoxFit.cover,
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
