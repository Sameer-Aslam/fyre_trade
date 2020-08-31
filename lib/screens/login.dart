import 'package:flutter/material.dart';
import 'package:fyre_trade/screens/create_account.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController textEditingController = TextEditingController();
  Color container1 = Color(0xff4066B0).withOpacity(0.1);
  Color container2 = Color(0xff4066B0).withOpacity(0.1);

  bool pass = true;
  bool checkboxvalue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Container(
              // width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xff4066B0).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  size: 15,
                                  color: Color(0xff4066B0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Login Account",
                          textAlign: TextAlign.start,
                          maxLines: 2,
                          style: TextStyle(
                              fontFamily: "Gilroy",
                              fontSize: 20,
                              color: Color(0xff0C0A3E),
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width - 40,
                        child: Text(
                          "Quickly create an account by signing up with google or facebook",
                          maxLines: 2,
                          style: TextStyle(
                            fontFamily: "Gilroy",
                            fontSize: 12,
                            color: Color(0xff9E9DB2),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 130,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff4066B0).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xff4066B0).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Center(
                                  child: Image.asset(
                                "assets/images/g.png",
                                height: 25,
                              )),
                            ),
                            Text(
                              "Google",
                              maxLines: 2,
                              style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 12,
                                color: Color(0xff9E9DB2),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        )),
                      ),
                      Container(
                        width: 130,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff4066B0).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xff4066B0).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Center(
                                  child: Image.asset(
                                "assets/images/f.png",
                                height: 25,
                              )),
                            ),
                            Text(
                              "Facebook",
                              maxLines: 2,
                              style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 12,
                                color: Color(0xff9E9DB2),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 40,
                        child: Divider(
                          color: Color(0xff4066B0),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0, -20),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 50,
                            width: 50,
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Or",
                                  textAlign: TextAlign.start,
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontFamily: "Gilroy",
                                      fontSize: 15,
                                      color: Color(0xff4066B0),
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width - 40,
                        child: Text(
                          "Enter your credentials below to login your account.",
                          maxLines: 2,
                          style: TextStyle(
                            fontFamily: "Gilroy",
                            fontSize: 12,
                            color: Color(0xff9E9DB2),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width - 40,
                        child: Text(
                          "Email Address",
                          maxLines: 2,
                          style: TextStyle(
                            fontFamily: "Gilroy",
                            fontSize: 12,
                            color: Color(0xff9E9DB2),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width - 40,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff4066B0).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: TextField(
                            decoration: InputDecoration.collapsed(hintText: ""),
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width - 40,
                        child: Text(
                          "Password",
                          maxLines: 2,
                          style: TextStyle(
                            fontFamily: "Gilroy",
                            fontSize: 12,
                            color: Color(0xff9E9DB2),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width - 40,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff4066B0).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: TextField(
                            decoration: InputDecoration.collapsed(hintText: ""),
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 40,
                      padding: EdgeInsets.only(left: 0, right: 0),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 0,
                                offset: Offset(0, 3))
                          ],
                          borderRadius: BorderRadius.circular(3),
                          color: Color(0xff4066B0),
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Gilroy",
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => PreLogin()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 30,
                          child: Text(
                            "Don't have an account? Sign up",
                            maxLines: 2,
                            style: TextStyle(
                              fontFamily: "Gilroy",
                              fontSize: 12,
                              color: Color(0xff4066B0),
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateAccount()));
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
