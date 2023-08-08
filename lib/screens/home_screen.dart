import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      appBar: AppBar(
        actions: [
          Container(
            width: 24,
            height: 24,
            margin: EdgeInsets.only(right: 18, left: 18),
            child: Image(image: AssetImage("images/icon_direct.png")),
          )
        ],
        elevation: 0,
        backgroundColor: Color(0xff1C1F2E),
        title: Container(
          child: Image(image: AssetImage("images/minilogo.png")),
        ),
      ),
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      barrierColor: Colors.transparent,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (BuildContext context) {
                        return Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: DraggableScrollableSheet(
                              maxChildSize: 0.7,
                              minChildSize: 0.2,
                              initialChildSize: 0.4,
                              builder: (BuildContext context,
                                  ScrollController controller) {
                                return getBottmSheet(controller);
                              }),
                        );
                      });
                },
                child: Text("bottemshett")),
          ),
          SliverToBoxAdapter(
            child: getlistStory(),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                getHeaderContent(),
                SizedBox(
                  height: 10,
                ),
                getContentPost()
              ],
            );
          }))
        ],
      )),
    );
  }
}

Widget getlistStory() {
  return SizedBox(
    height: 90,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, int Index) {
          if (Index == 0) {
            return getaddstory();
          } else {
            return getstory();
          }
        }),
  );
}

Widget getBottmSheet(ScrollController controller) {
  return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
              height: 300,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: getgridOfBottemSheet(controller)))));
}

Widget getgridOfBottemSheet(ScrollController controller) {
  return Stack(
    alignment: Alignment.bottomCenter,
    children: [
      CustomScrollView(
        controller: controller,
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 67,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                ),
                SizedBox(
                  height: 22,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "share",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      Icon(
                        Icons.download_done_rounded,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    width: 340,
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
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none),
                        ))
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.4),
                        borderRadius: BorderRadius.all(Radius.circular(13))),
                  ),
                ),
                SizedBox(
                  height: 32,
                )
              ],
            ),
          ),
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return getstoryForbouttomSheet();
                },
                childCount: 12,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 110)),
          SliverPadding(padding: EdgeInsets.only(bottom: 40))
        ],
      ),
      Positioned(
          bottom: 0,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Text("share"),
              ))),
    ],
  );

  // return GridView.builder(
  //     controller: controller,
  //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //         crossAxisCount: 4, crossAxisSpacing: 20, mainAxisSpacing: 20),
  //     itemBuilder: (context, index) {
  //       return Container(
  //         child: getstoryForHeaderOfPosts(),
  //       );
  //     });
}

Widget getListPosts() {
  return ListView.builder(
      itemCount: 9,
      itemBuilder: (context, int index) {
        return Column(
          children: [
            SizedBox(
              height: 10,
            ),
            getHeaderContent(),
            SizedBox(
              height: 10,
            ),
            getContentPost()
          ],
        );
      });
}

Widget getContentPost() {
  return Container(
    width: 394,
    height: 440,
    child: Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Positioned(
          top: 0,
          left: 10,
          right: 10,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: AssetImage("images/zaban.png"),
              height: 394,
              width: 427,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            top: 3,
            right: 10,
            child: Icon(
              Icons.video_call_rounded,
              color: Colors.white,
              size: 50,
            )),
        Positioned(
          bottom: 10,
          left: 44,
          right: 44,
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 9.0, sigmaY: 9.0),
                child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          Color.fromRGBO(255, 255, 255, 0.5),
                          Color.fromRGBO(255, 255, 255, 0.2)
                        ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight)),
                    width: 340,
                    height: 46,
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset("images/heart.png"),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "2.6K",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.message,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "2.6K",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            Icon(
                              Icons.telegram,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.safety_check,
                              color: Colors.white,
                            )
                          ],
                        ))),
              )),
        )
      ],
    ),
  );
}

Widget getHeaderContent() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 17),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        getstoryForHeaderOfPosts(),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "amirahmad",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text("برنامه نویس موبایل", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        Spacer(),
        Icon(
          Icons.menu,
          color: Colors.amber,
        ),
      ],
    ),
  );
}

Widget getaddstory() {
  return Container(
    margin: EdgeInsets.only(left: 10, right: 5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 2,
        ),
        Container(
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                width: 60,
                height: 60,
                child: Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0xff1C1F2E),
                      ),
                      child: Image(image: AssetImage("images/plus.png"))),
                ))),
        SizedBox(
          height: 10,
        ),
        Text(
          "addstory",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ],
    ),
  );
}

Widget getstory() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    child: Column(
      children: [
        SizedBox(
          height: 2,
        ),
        Container(
          child: DottedBorder(
              color: Color(0xffF35383),
              strokeWidth: 2,
              borderType: BorderType.RRect,
              radius: Radius.circular(15),
              dashPattern: [50, 1],
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff1C1F2E),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                width: 56,
                height: 56,
                child: Padding(
                    padding: EdgeInsets.all(2),
                    child: Container(
                        width: 54,
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: Color(0xff1C1F2E),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          child: Image.asset("images/amirahmad.png"),
                        ))),
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Text("you", style: TextStyle(color: Colors.amber)),
      ],
    ),
  );
}

Widget getstoryForHeaderOfPosts() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    child: Column(
      children: [
        SizedBox(
          height: 2,
        ),
        Container(
          child: DottedBorder(
              color: Color(0xffF35383),
              strokeWidth: 2,
              borderType: BorderType.RRect,
              radius: Radius.circular(15),
              dashPattern: [50, 1],
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff1C1F2E),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                width: 56,
                height: 56,
                child: Padding(
                    padding: EdgeInsets.all(2),
                    child: Container(
                        width: 54,
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: Color(0xff1C1F2E),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          child: Image.asset("images/amirahmad.png"),
                        ))),
              )),
        ),
      ],
    ),
  );
}

Widget getstoryForbouttomSheet() {
  return Container(
      width: 60,
      height: 60,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            child: Image(image: AssetImage("images/amirahmad.png")),
          ),
          Text(
            "username",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          )
        ],
      ));
}
