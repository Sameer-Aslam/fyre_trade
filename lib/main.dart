import 'package:flutter/material.dart';
import 'package:fyre_trade/Strings.dart';
import 'package:fyre_trade/screens/prelogin.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pageController;
  int index = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(0)),
              Container(
                padding: EdgeInsets.all(70),
                child: Image.asset(
                  "assets/images/title.png",
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Container(
                height: 400,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    PageView(
                      onPageChanged: (int page) {
                        setState(() {
                          index = page;
                        });
                      },
                      controller: pageController,
                      children: [
                        makePage(
                          image: "assets/images/Group.png",
                          title: Strings.t1,
                          content: Strings.c1,
                        ),
                        makePage(
                          reverse: false,
                          image: "assets/images/i2.png",
                          title: Strings.t2,
                          content: Strings.c2,
                        ),
                        makePage(
                          image: "assets/images/i3.png",
                          title: Strings.t3,
                          content: Strings.c3,
                        ),
                      ],
                    ),
                    Container(
                      width: 150,
                      margin: EdgeInsets.only(bottom: 50),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SmoothPageIndicator(
                                controller: pageController, // PageController
                                count: 3,
                                effect: SlideEffect(
                                    spacing: 0.0,
                                    radius: 2.0,
                                    dotWidth: 50.0,
                                    dotHeight: 7.0,
                                    paintStyle: PaintingStyle.stroke,
                                    strokeWidth: 1.5,
                                    dotColor: Colors.transparent,
                                    activeDotColor:
                                        Colors.indigo), // your preferred effect
                                onDotClicked: (index) {})
                          ]),
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
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
                        "Next",
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PreLogin()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makePage({image, title, content, reverse = false}) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(
              image,
              height: 200,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            title,
            style: TextStyle(
              fontFamily: "Gilroy",
              fontSize: 20,
              color: Color(0xff0C0A3E),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            content,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Gilroy",
              fontSize: 15,
              color: Color(0xff0C0A3E).withOpacity(0.4),
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
