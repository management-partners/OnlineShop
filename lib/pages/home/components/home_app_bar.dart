 import 'package:OnlineShop/components/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      centerTitle: false,
      title: Text(
        'Home',
        style: TextStyle(color: Colors.white),
      ),
      elevation: 0,
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/notification.svg',
            color: Colors.white,
          ),
          onPressed: () {},
        )
      ],
    );
  }