import 'package:flutter/material.dart';
import 'package:instagram/screens/Activity_screen.dart';
import 'package:instagram/screens/addcontent_screen.dart';
import 'package:instagram/screens/home_screen.dart';
import 'package:instagram/screens/profile_screen.dart';
import 'package:instagram/screens/search_screen.dart';

class Main_screen extends StatefulWidget {
  const Main_screen({super.key});

  @override
  State<Main_screen> createState() => _Main_screenState();
}

class _Main_screenState extends State<Main_screen> {
  int _selectedBottomNavigation = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            child: BottomNavigationBar(
              currentIndex: _selectedBottomNavigation,
              onTap: (int index) {
                setState(() {
                  _selectedBottomNavigation = index;
                });
              },
              selectedFontSize: 20,
              unselectedItemColor: Colors.blue,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color(0xff1C1F2E),
              items: [
                BottomNavigationBarItem(
                    activeIcon: Image.asset("images/icon_active_home.png"),
                    icon: Image.asset("images/icon_home.png"),
                    label: "home"),
                BottomNavigationBarItem(
                    activeIcon:
                        Image.asset("images/icon_search_navigation_active.png"),
                    icon: (Image.asset("images/icon_search_navigation.png")),
                    label: "search"),
                BottomNavigationBarItem(
                    activeIcon:
                        Image.asset("images/icon_add_navigation_active.png"),
                    icon: (Image.asset("images/icon_add_navigation.png")),
                    label: "add"),
                BottomNavigationBarItem(
                    activeIcon: Image.asset(
                        "images/icon_activity_navigation_active.png"),
                    icon: (Image.asset("images/icon_activity_navigation.png")),
                    label: "like"),
                BottomNavigationBarItem(
                    activeIcon: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          border: Border.all(
                            color: Colors.pink,
                            width: 2,
                          )),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        child: FittedBox(
                          child: Image.asset("images/amirahmad.png"),
                        ),
                      ),
                    ),
                    icon: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          )),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        child: FittedBox(
                          child: Image.asset("images/amirahmad.png"),
                        ),
                      ),
                    ),
                    label: "like")
              ],
            ),
          )),
      body: getwidgets().elementAt(_selectedBottomNavigation),
    );
  }

  List<Widget> getwidgets() {
    return <Widget>[
      Home_Screen(),
      search_screen(),
      addcontentscreen(),
      Activity_screen(),
      profile_screen(),
    ];
  }
}
