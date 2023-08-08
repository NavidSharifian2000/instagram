import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class profile_screen extends StatelessWidget {
  const profile_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1C1F2E),
        body: SafeArea(
            child: DefaultTabController(
                length: 2,
                child: NestedScrollView(
                  headerSliverBuilder: (context, isScrolled) {
                    return [
                      SliverAppBar(
                        toolbarHeight: 50,
                        bottom: PreferredSize(
                            child: Container(
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  border: Border.all(
                                      color: Color(0xff1C1F2E), width: 1),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10))),
                            ),
                            preferredSize: Size.fromHeight(10)),
                        backgroundColor: Colors.red,
                        expandedHeight: 400,
                        flexibleSpace: FlexibleSpaceBar(
                          background: Image.asset(
                            "images/item1.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      //SliverToBoxAdapter(
                      //  child: getHeaderprofile(),
                      //),

                      SliverPersistentHeader(
                          pinned: true,
                          delegate: TabBarviewDelegate(TabBar(tabs: [
                            Tab(
                              text: "text1",
                            ),
                            Tab(
                              text: "tet1",
                            ),
                          ])))
                    ];
                  },
                  body: TabBarView(
                    children: [
                      CustomScrollView(
                        slivers: [
                          SliverPadding(
                              padding:
                                  EdgeInsets.only(top: 10, left: 17, right: 17),
                              sliver: SliverGrid(
                                  delegate: SliverChildBuilderDelegate(
                                    childCount: 10,
                                    (context, index) {
                                      return Container(
                                          child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        child: FittedBox(
                                          fit: BoxFit.cover,
                                          child: Image(
                                              image: AssetImage(
                                                  "images/item$index.png")),
                                        ),
                                      ));
                                    },
                                  ),
                                  gridDelegate: SliverQuiltedGridDelegate(
                                      crossAxisCount: 3,
                                      mainAxisSpacing: 10,
                                      crossAxisSpacing: 10,
                                      repeatPattern:
                                          QuiltedGridRepeatPattern.inverted,
                                      pattern: [
                                        QuiltedGridTile(2, 1),
                                        QuiltedGridTile(2, 2),
                                        QuiltedGridTile(1, 1),
                                        QuiltedGridTile(1, 1),
                                        QuiltedGridTile(1, 1),
                                      ])))
                        ],
                      ),
                      Container(
                        color: Colors.amber,
                      )
                    ],
                  ),
                ))));
  }
}

Widget getHeaderprofile() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 70,
          height: 70,
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset("images/amirahmad.png"),
              ),
            ),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              border: Border.all(
                color: Colors.pink,
                width: 2,
              )),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          height: 70,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "نوید شریفیان",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "navidsharifian",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
        Spacer(),
        Container(
          width: 20,
          height: 20,
          child: Image.asset("images/profile_edit.png"),
        )
      ],
    ),
  );
}

class TabBarviewDelegate extends SliverPersistentHeaderDelegate {
  TabBarviewDelegate(this._tabBar);
  final TabBar _tabBar;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      color: Colors.amber,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          getHeaderprofile(),
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
