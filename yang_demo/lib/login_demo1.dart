import 'package:flutter/material.dart';

import 'package:base_packages/base_packages.dart';

import 'login_page.dart';
import 'main_page.dart';

class MyAppDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LogUtil.e("sp is init ${SpUtil.isInitialized()}");
    return new MaterialApp(
      routes: {
        BaseConstant.routeMain: (ctx) => MainPage(),
        BaseConstant.routeLogin: (ctx) => LoginPage(),
      },
      home: Util.isLogin() ? MainPage() : LoginPage(),
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.deepPurpleAccent,
      ),
    );
  }
}
