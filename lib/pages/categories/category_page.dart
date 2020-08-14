import 'package:OnlineShop/components/constant.dart';
import 'package:OnlineShop/pages/categories/category_page%20copy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryPage extends StatefulWidget {
  final String cateName;

  const CategoryPage({Key key, this.cateName}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CategoryPage(cateName);
}

class _CategoryPage extends State<CategoryPage> {
  final _cateName;
  _CategoryPage(this._cateName);

  Icon actionIcon = Icon(Icons.search);
  Widget appTitle = new Text('');
  Widget appInitTitle = new Text('');

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    this.appInitTitle = new Text(
      _cateName.toUpperCase() + ' Product',
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        titleSpacing: 0.0,
        title: this.appTitle.toString().isNotEmpty? this.appInitTitle: this.appTitle,
        actions: [
          IconButton(
            icon: actionIcon,
            onPressed: () {
              setState(() {
                if (this.actionIcon.icon == Icons.search) {
                  this.actionIcon = new Icon(Icons.close);
                  this.appInitTitle = null;
                  this.appTitle = new TextField(
                    style: new TextStyle(
                      color: Colors.white,
                    ),
                    decoration: new InputDecoration(
                        prefixIcon: new Icon(Icons.search, color: Colors.white),
                        hintText: "Search...",
                        hintStyle: new TextStyle(color: Colors.white)),
                  );
                } else {
                  this.actionIcon = new Icon(Icons.search);
                  this.appTitle = this.appInitTitle;
                }
              });
            },
          ),
          IconButton(
            icon: SvgPicture.asset('assets/icons/cart.svg'),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
