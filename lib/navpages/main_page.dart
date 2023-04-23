import 'package:flutter/material.dart';
import 'package:moodbean/navpages/navbar.dart';
import 'home_page.dart';
import 'insights_page.dart';
import 'more_page.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List pages = [
    HomePage(),
    Insights(),
    More(),
  ];
  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Center(
          child: Text('MOOD BEAN'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // showSearch(
              //   // context: context,
              //   // delegate: MySearch Delegate(),
              // );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.green[200],
        showUnselectedLabels: true,
        showSelectedLabels: true,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'Insights',
              icon: Icon(Icons.insights)),
          BottomNavigationBarItem(
              label: 'More',
              icon: Icon(Icons.app_shortcut)),
        ],
      ),
    );
  }
}
