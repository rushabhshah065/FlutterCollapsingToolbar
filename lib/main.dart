import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Collapsing Toolbar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var descriptionTextStyleBold = GoogleFonts.roboto(
    textStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 16,
    ),
  );

  var descriptionTextStyle = GoogleFonts.roboto(
    textStyle: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
  );

  var headerTextStyle = GoogleFonts.roboto(
    textStyle: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
  );

  Widget getOfferWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text("Event Date", style: descriptionTextStyle),
            Text("March 3, 2021", style: descriptionTextStyleBold),
          ],
        ),
        Container(
            height: 40,
            padding: EdgeInsets.only(top: 6, bottom: 6),
            child: VerticalDivider(color: Colors.black)),
        Column(
          children: [
            Text("Event Price", style: descriptionTextStyle),
            Text("₹ " + "700", style: descriptionTextStyleBold),
          ],
        ),
        Container(
            height: 40,
            padding: EdgeInsets.only(top: 6, bottom: 6),
            child: VerticalDivider(color: Colors.black)),
        Column(
          children: [
            Text("Event Capacity", style: descriptionTextStyle),
            Text("50 People", style: descriptionTextStyleBold),
          ],
        ),
      ],
    );
  }

  Widget getHorizontalBar() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: [
          Expanded(
              child: Divider(
            height: 10,
            color: Colors.black38,
          )),
        ],
      ),
    );
  }

  Widget getEventDetails() {
    return Container(
      padding: EdgeInsets.only(top: 5, left: 20.0, right: 20, bottom: 5),
      child: Table(
        //border: TableBorder.all(color: Colors.black),
        children: [
          TableRow(children: [
            Container(
                padding: EdgeInsets.only(top: 1, bottom: 1),
                alignment: Alignment.centerLeft,
                child: Text("Last Date : ", style: descriptionTextStyle)),
            Container(
              padding: EdgeInsets.only(top: 1, bottom: 1),
              alignment: Alignment.centerLeft,
              child: Text("March 7, 2021", style: descriptionTextStyleBold),
            ),
          ]),
          TableRow(children: [
            Container(
                padding: EdgeInsets.only(top: 1, bottom: 1),
                alignment: Alignment.centerLeft,
                child: Text("Event Place : ", style: descriptionTextStyle)),
            Container(
              padding: EdgeInsets.only(top: 1, bottom: 1),
              alignment: Alignment.centerLeft,
              child: Text("Mumbai, IN", style: descriptionTextStyleBold),
            ),
          ]),
          TableRow(children: [
            Container(
                padding: EdgeInsets.only(top: 1, bottom: 1),
                alignment: Alignment.centerLeft,
                child: Text("Event Timing : ", style: descriptionTextStyle)),
            Container(
              padding: EdgeInsets.only(top: 1, bottom: 1),
              alignment: Alignment.centerLeft,
              child: Text("6PM to 8PM", style: descriptionTextStyleBold),
            ),
          ]),
          TableRow(children: [
            Container(
                padding: EdgeInsets.only(top: 1, bottom: 1),
                alignment: Alignment.centerLeft,
                child: Text("Organiser : ", style: descriptionTextStyle)),
            Container(
                padding: EdgeInsets.only(top: 1, bottom: 1),
                alignment: Alignment.centerLeft,
                child: Text("GDG-Mumbai", style: descriptionTextStyleBold)),
          ]),
        ],
      ),
    );
  }

  Widget getEventTiming() {
    return Container(
      padding: EdgeInsets.only(top: 5, left: 20.0, right: 20, bottom: 5),
      child: Table(
        //border: TableBorder.all(color: Colors.black),
        children: [
          TableRow(children: [
            Container(
                padding: EdgeInsets.only(top: 1, bottom: 1),
                alignment: Alignment.centerLeft,
                child: Text("6:00 PM - 6:30 PM: ", style: descriptionTextStyle)),
            Container(
              padding: EdgeInsets.only(top: 1, bottom: 1),
              alignment: Alignment.centerLeft,
              child: Text("Introduction to Flutter", style: descriptionTextStyleBold),
            ),
          ]),
          TableRow(children: [
            Container(
                padding: EdgeInsets.only(top: 1, bottom: 1),
                alignment: Alignment.centerLeft,
                child: Text("6:30 PM - 7:00 PM: ", style: descriptionTextStyle)),
            Container(
              padding: EdgeInsets.only(top: 1, bottom: 1),
              alignment: Alignment.centerLeft,
              child: Text("Firebase authentication", style: descriptionTextStyleBold),
            ),
          ]),
          TableRow(children: [
            Container(
                padding: EdgeInsets.only(top: 1, bottom: 1),
                alignment: Alignment.centerLeft,
                child: Text("7:00 PM - 7:30 PM: ", style: descriptionTextStyle)),
            Container(
              padding: EdgeInsets.only(top: 1, bottom: 1),
              alignment: Alignment.centerLeft,
              child: Text("Drag and drop in Flutter", style: descriptionTextStyleBold),
            ),
          ]),
          TableRow(children: [
            Container(
                padding: EdgeInsets.only(top: 1, bottom: 1),
                alignment: Alignment.centerLeft,
                child: Text("7:30 PM - 7:45 PM: ", style: descriptionTextStyle)),
            Container(
                padding: EdgeInsets.only(top: 1, bottom: 1),
                alignment: Alignment.centerLeft,
                child: Text("QnA", style: descriptionTextStyleBold)),
          ]),
        ],
      ),
    );
  }


  _getBody() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          getOfferWidget(),
          getHorizontalBar(),
          getEventDetails(),
          getHorizontalBar(),
          getEventTiming(),
          getHorizontalBar(),
          Text("About Event", style: headerTextStyle),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Another month, another meetup! If you are new or an experienced developer Flutter Montreal has something for everyone. In the first half of 2021 we'll do a recap of all things Flutter. We're going to demo some of the new tools and updates rolled out in the Flutter-verse this year and you'll get a chance to ask any Flutter questions you may have.We also have a line up of great speakers joining us this year and will be presenting some pretty neat Flutter tips and tricks to help you write effective apps and bring your ideas to life!Thanks to all our awesome Flutter fans and devs and hope to see you all in the chat of our live stream.",
                style: descriptionTextStyle),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: NestedScrollView(headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                var top = constraints.biggest.height;
                return FlexibleSpaceBar(
                    title: AnimatedOpacity(
                      duration: Duration(milliseconds: 10),
                      opacity: top == 56.0 ? 1.0 : 0.0,
                      child: Text("Collapsing Toolbar",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold)),
                    ),
                    background: Image.asset(
                      "images/flutter_logo.jpeg",
                      fit: BoxFit.cover,
                    ));
              }),
            ),
          )
        ];
      }, body: Builder  (
        builder: (BuildContext context) {
          return CustomScrollView(
            key: PageStorageKey<String>(""),
            slivers: <Widget>[
              SliverOverlapInjector(
                // This is the flip side of the SliverOverlapAbsorber
                // above.
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(8.0),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return _getBody();
                    },
                    childCount: 1,
                  ),
                ),
              ),
            ],
          );
        },
      ))),
    );
  }
}
