import 'package:flutter/material.dart';

class addcontentscreen extends StatelessWidget {
  const addcontentscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
          child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: getHeader(),
              ),
              SliverToBoxAdapter(
                child: getImageCenter(),
              ),
              SliverPadding(
                  padding: EdgeInsets.only(top: 17, left: 17, right: 17),
                  sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        childCount: 10,
                        (context, index) {
                          return ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              child: FittedBox(
                                fit: BoxFit.cover,
                                child: Image.asset("images/item$index.png"),
                              ));
                        },
                      ),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10)))
            ],
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xff272B40),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                )),
            width: double.infinity,
            height: 83,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Draft",
                    style: TextStyle(color: Colors.pink),
                  ),
                  Text(
                    "Gallery",
                    style: TextStyle(color: Colors.pink),
                  ),
                  Text(
                    "Take",
                    style: TextStyle(color: Colors.pink),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

Widget getHeader() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 25),
    child: Row(
      children: [
        Text(
          "Post",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(
          width: 15,
        ),
        Image(image: AssetImage("images/arrowdown.png")),
        Spacer(),
        Text(
          "Next",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(
          width: 15,
        ),
        Image(image: AssetImage("images/next.png"))
      ],
    ),
  );
}

Widget getImageCenter() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 17),
    child: Container(
      width: double.infinity,
      height: 375,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: FittedBox(
          fit: BoxFit.cover,
          child: Image.asset("images/item8.png"),
        ),
      ),
    ),
  );
}
