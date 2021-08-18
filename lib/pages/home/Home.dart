import 'package:flutter/material.dart';

import 'home_swiper.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();

    //调用借口
    /*G.api.home.getSlide().then((value) {
      print(value);
    });*/
  }

  @override
  Widget build(BuildContext context) {
    //return Container();
    return ListView(
      children: [
        Container(
          child: HomeSwiper(),
        ),
      ],
    );
  }
}
