import 'package:flutter/material.dart';

class Activity_screen extends StatefulWidget {
  const Activity_screen({super.key});

  @override
  State<Activity_screen> createState() => _Activity_screenState();
}

class _Activity_screenState extends State<Activity_screen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 70,
            color: Color(0xff1C1F2E),
            child: TabBar(
                indicatorPadding: EdgeInsets.symmetric(horizontal: 17),
                indicatorWeight: 2,
                indicatorColor: Colors.pink,
                controller: tabController,
                tabs: [
                  Tab(
                    text: "following",
                  ),
                  Tab(
                    text: "you",
                  ),
                ]),
          ),
          Expanded(
              child: TabBarView(controller: tabController, children: [
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: true,
                  bottom: PreferredSize(
                      child: Container(
                        height: 10,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 45, 206, 13),
                            border:
                                Border.all(color: Color(0xff1C1F2E), width: 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                      ),
                      preferredSize: Size.fromHeight(40)),
                  expandedHeight: 400,
                  // backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      "images/item1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, top: 32),
                    child: Text(
                      "New",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                  childCount: 2,
                  (context, index) {
                    return getrow(1);
                  },
                )),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, top: 32),
                    child: Text(
                      "Today",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                  childCount: 5,
                  (context, index) {
                    return getrow(2);
                  },
                )),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, top: 32),
                    child: Text(
                      "lastweek",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                  childCount: 5,
                  (context, index) {
                    return getrow(0);
                  },
                ))
              ],
            ),
            Container(
              color: Colors.blue,
            )
          ]))
        ],
      )),
    );
  }
}

Widget? getrow(int a) {
  if (a == 0) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 17),
      child: Row(children: [
        Container(
          height: 6,
          width: 6,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
        ),
        SizedBox(
          width: 7,
        ),
        Container(
          height: 40,
          width: 40,
          child: ClipRRect(
            child: Image.asset("images/amirahmad.png"),
          ),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Text(
                "amirahmad adibi",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Starting following",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(children: [
            SizedBox(
              width: 5,
            ),
            Text(
              "you",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "2 min",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ])
        ]),
        Spacer(),
        getactionImage()
      ]),
    );
  }
  if (a == 1) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 17),
      child: Row(children: [
        Container(
          height: 6,
          width: 6,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
        ),
        SizedBox(
          width: 7,
        ),
        Container(
          height: 40,
          width: 40,
          child: ClipRRect(
            child: Image.asset("images/amirahmad.png"),
          ),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Text(
                "amirahmad adibi",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Starting following",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(children: [
            SizedBox(
              width: 5,
            ),
            Text(
              "you",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "2 min",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ])
        ]),
        Spacer(),
        getactionMessage()
      ]),
    );
  }
  if (a == 2) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 17),
      child: Row(children: [
        Container(
          height: 6,
          width: 6,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
        ),
        SizedBox(
          width: 7,
        ),
        Container(
          height: 40,
          width: 40,
          child: ClipRRect(
            child: Image.asset("images/amirahmad.png"),
          ),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Text(
                "amirahmad adibi",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Starting following",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(children: [
            SizedBox(
              width: 5,
            ),
            Text(
              "you",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "2 min",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ])
        ]),
        Spacer(),
        getactionfollow()
      ]),
    );
  }
}

Widget getactionImage() {
  return Container(
    width: 40,
    height: 40,
    child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      child: FittedBox(
        fit: BoxFit.cover,
        child: Image.asset("images/item2.png"),
      ),
    ),
  );
}

Widget getactionfollow() {
  return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(6)),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
          child: Text("follow")));
}

Widget getactionMessage() {
  return OutlinedButton(
      style: ElevatedButton.styleFrom(
          side: BorderSide(color: Colors.pink),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
      onPressed: () {},
      child: Text("Message"));
}

class TabBarviewDelegate extends SliverPersistentHeaderDelegate {
  TabBarviewDelegate(this._tabBar);
  final TabBar _tabBar;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      color: Color.fromARGB(255, 104, 224, 23),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          _tabBar,
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 145;

  @override
  // TODO: implement minExtent
  double get minExtent => 145;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}
