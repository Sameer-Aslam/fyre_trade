import 'package:flutter/material.dart';

class PreLogin extends StatefulWidget {
  @override
  _PreLoginState createState() => _PreLoginState();
}

class _PreLoginState extends State<PreLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xff0C0A3E),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Get Started",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Gilroy",
                fontSize: 20,
                color: Colors.grey[200],
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "If you’re new here please create an account, but if you already have an account, please use the login option.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Gilroy",
                  fontSize: 15,
                  color: Colors.grey[200],
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(15)),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
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
                        fontWeight: FontWeight.w600,
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
            Padding(padding: EdgeInsets.all(10)),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.grey[200],
                  ),
                  child: Center(
                    child: Text(
                      "Log In",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Gilroy",
                        fontSize: 15,
                        color: Color(0xff4066B0),
                        fontWeight: FontWeight.w600,
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
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Text(
                    "Go Back",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Gilroy",
                      fontSize: 15,
                      color: Colors.grey[200],
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
