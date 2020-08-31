import 'package:flutter/material.dart';
import 'package:fyre_trade/screens/login.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
                          "Create Account",
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
                          "Fill the form below to create your account",
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
                    height: 0,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width - 40,
                          child: Text(
                            "Already have an account? Sign in",
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
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
                          "First name",
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
                          "First name",
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
                          "Last name",
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
                          "Email address",
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
                            controller: textEditingController,
                            onChanged: (String value) {
                              if (textEditingController.text.length != "") {
                                setState(() {
                                  container1 = Colors.orange[900];
                                });
                                if (textEditingController.text.length >= 5) {
                                  setState(() {
                                    container2 = Colors.green;
                                  });
                                }
                              }
                              if (textEditingController.text.length == "") {
                                setState(() {
                                  container1 =
                                      Color(0xff4066B0).withOpacity(0.1);
                                  container2 =
                                      Color(0xff4066B0).withOpacity(0.1);
                                });
                              }
                            },
                            decoration: InputDecoration.collapsed(hintText: ""),
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 5,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Color(0xff4066B0),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      Container(
                        height: 5,
                        width: 100,
                        decoration: BoxDecoration(
                          color: container1,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      Container(
                        height: 5,
                        width: 100,
                        decoration: BoxDecoration(
                          color: container2,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Visibility(
                      visible: (textEditingController.text.length > 4)
                          ? pass = false
                          : pass = true,
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: MediaQuery.of(context).size.width - 40,
                                  child: Text(
                                    "Weak password",
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
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: MediaQuery.of(context).size.width - 40,
                                  child: Text(
                                    "Things like capital letters or symbols help make stronger password.",
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
                          ],
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
                          "Confirm Password",
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
                  Transform.translate(
                    offset: Offset(-11, 0),
                    child: Row(
                      children: [
                        Checkbox(
                            value: checkboxvalue,
                            onChanged: (bool value) {
                              setState(() {
                                checkboxvalue = value;
                              });
                              value = checkboxvalue;
                            }),
                        Container(
                          child: Text(
                            "  I agree to terms and privacy policy",
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
                  ),
                  SizedBox(
                    height: 20,
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
                            "Create Account",
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
