import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'cart/Cart.dart';
import 'category/Category.dart';
import 'home/Home.dart';
import 'mine/Mine.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '首页',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.category_outlined),
      label: '分类',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.add_shopping_cart),
      label: '购物车',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: '我的',
    ),
  ];

  final pages = [
    /*(Home(),
    Category(),
    Mine(),
    Cart(),*/
    {
      "appBar": CustomAppBar(title: '首页'),
      "widget": Home(),
    },
    {
      "appBar": CustomAppBar(title: '分类'),
      "widget": Category2(),
    },
    {
      "appBar": CustomAppBar(title: '购物车'),
      "widget": Cart(),
    },
    {
      "appBar": CustomAppBar(title: '我的'),
      "widget": Mine(),
    }
  ];


  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: pages[currentIndex]['appBar'] as PreferredSizeWidget,
      appBar: AppBar(title: Text(bottomNavItems[currentIndex].label!),),
      bottomNavigationBar: BottomNavigationBar(
          items: bottomNavItems,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            _changePage(index);
          }),
      body: pages[currentIndex]['widget'] as Widget,
    );
  }

  _changePage(index) {
      if (index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  CustomAppBar({Key? key, required this.title}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(this.title),
      elevation: 0.0,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
