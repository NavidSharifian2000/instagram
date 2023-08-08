import 'package:flutter/material.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  FocusNode negahban = FocusNode();
  bool isfoucesed = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    negahban.addListener(() {
      if (negahban.hasFocus == true) {
        setState(() {
          isfoucesed = true;
        });
      } else {
        setState(() {
          isfoucesed = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xff323A99),
            Color(0xffF98BFC),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [getImagelogin(), getbox()],
        ),
      ),
    );
  }

  Widget getbox() {
    return Column(
      children: [
        Expanded(
            flex: 5,
            child: Container(
              color: Colors.transparent,
            )),
        Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff1C1F2E),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sign in to",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Container(
                        width: 102,
                        height: 25,
                        child: Image(
                          image: AssetImage("images/minilogo.png"),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 36),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 44),
                    child: TextField(
                      focusNode: negahban,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 13, vertical: 13),
                          label: Text(
                            "email",
                            style: TextStyle(
                                color: isfoucesed ? Colors.amber : Colors.blue),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            borderSide: BorderSide(
                                color: Color(0xffF35383), width: 3.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffC5C5C5), width: 3.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)))),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 44),
                    child: Container(
                      width: 340,
                      height: 46,
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 18, vertical: 18),
                            label: Text(
                              "password",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              borderSide: BorderSide(
                                  color: Color(0xffF35383), width: 3.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffC5C5C5), width: 3.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: 129,
                      height: 46,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffF35383),
                              foregroundColor: Colors.white),
                          onPressed: () {},
                          child: Text("send"),
                        ),
                      ))
                ],
              ),
            ))
      ],
    );
  }

  Widget getImagelogin() {
    return Positioned(
        right: 0,
        left: 0,
        bottom: 0,
        top: 20,
        child: Column(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/login.png"),
                      fit: BoxFit.cover)),
            )),
            Expanded(
                child: Container(
              color: Colors.red,
            ))
          ],
        ));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    negahban.dispose();
  }
}
