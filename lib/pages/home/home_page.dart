import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/home_app_bar.dart';
import 'details/home_body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: buildAppBar(),
      body: HomeBody(),
    );
  }
}
