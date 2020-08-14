import 'package:OnlineShop/components/constant.dart';
import 'package:OnlineShop/models/category.dart';
import 'package:OnlineShop/pages/categories/category_page.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    this.index,
    this.cate,
  }) : super(key: key);

  final index;
  final Category cate;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.only(top: 20.0),
      height: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: index.isEven ? kPrimaryColor : kSecondaryColor,
          boxShadow: [kDefaultShadown]),
      child: InkWell(
        borderRadius: BorderRadius.circular(22),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext contaxt) => CategoryPage(cateName: cate.name,),
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.all(20.0),
          margin: index.isEven
              ? EdgeInsets.only(right: 6.0, bottom: 1.0)
              : EdgeInsets.only(left: 6.0, bottom: 1.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
          ),
          child: index.isEven
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          cate.name.toUpperCase(),
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          child: Text(
                            cate.description,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Image.asset(
                      cate.image,
                    ),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      cate.image,
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          cate.name.toUpperCase(),
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          child: Text(
                            cate.description,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
