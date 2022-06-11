import 'package:book_station/controller/controller.dart';
import 'package:book_station/controller/provider.dart';
import 'package:book_station/view/navpages/everything.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../navpages/home_page.dart';
import '../navpages/book_mark.dart';

class Mainpages extends HookWidget {
  Mainpages({Key? key}) : super(key: key);
  List pages = [
    Home_page(),
    Book_mark(),
    Everything(),
  ];

  @override
  Widget build(BuildContext context) {
    var _currentindex = useState(0);
    return Scaffold(
      body: pages[_currentindex.value],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentindex.value,
        elevation: 0.1,
        backgroundColor: Colors.white60,
        onDestinationSelected: (value) {
          _currentindex.value= value;
        },
        destinations:[
          const NavigationDestination(
            icon:Icon(Icons.home),
            label: "Home",
          ),
          const NavigationDestination(
            icon: Icon(Icons.bookmark_border),
            label: "bookmark",
          ),
          const NavigationDestination(
            icon: Icon(Icons.account_balance),
            label: "Everything",
          )
        ],
      ),
    );
  }
}
