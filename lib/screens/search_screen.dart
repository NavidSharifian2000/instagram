import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class search_screen extends StatelessWidget {
  const search_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1C1F2E),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: getsearchbox(),
              ),
              SliverToBoxAdapter(
                child: getlistHashtag(),
              ),
              SliverPadding(
                  padding: EdgeInsets.only(top: 10, left: 17, right: 17),
                  sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        childCount: 10,
                        (context, index) {
                          return Container(
                              child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image(
                                  image: AssetImage("images/item$index.png")),
                            ),
                          ));
                        },
                      ),
                      gridDelegate: SliverQuiltedGridDelegate(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          repeatPattern: QuiltedGridRepeatPattern.inverted,
                          pattern: [
                            QuiltedGridTile(2, 1),
                            QuiltedGridTile(2, 2),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                          ])))
            ],
          ),
        ));
  }
}

Widget getsearchbox() {
  return Padding(
    padding: EdgeInsets.only(left: 18, right: 18, top: 12),
    child: Container(
      height: 46,
      child: Row(
        children: [
          Icon(
            Icons.search,
            size: 40,
            color: Colors.white,
          ),
          Expanded(
              child: TextField(
            decoration: InputDecoration(
                hintText: "search",
                hintStyle: TextStyle(color: Colors.white),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none),
          )),
          Icon(Icons.telegram_sharp),
          SizedBox(
            width: 16,
          )
        ],
      ),
      decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.4),
          borderRadius: BorderRadius.all(Radius.circular(13))),
    ),
  );
}

Widget getlistHashtag() {
  return Container(
    margin: EdgeInsets.only(top: 10),
    height: 20,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, int Index) {
          return Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
                color: Color(0xff272B40),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Text(
                "navidsharifian $Index",
                style: TextStyle(color: Colors.amber),
              ),
            ),
          );
        }),
  );
}
