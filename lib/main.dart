import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expandable Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          toolbarHeight: 60,
          backgroundColor: Colors.orangeAccent,
          title: Text(
            'தொடர்பு விபரங்கள்',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'tamil',
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        body: Container(
          width: 500.0,
          height: 800.0,
          color: Colors.black12,
          child: Scrollbar(
            thumbVisibility: true,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: <Widget>[
                Card1(),
                Card2(),
                Card3(),
                Card4(),
                Card5(),
                Card6(),
                Card7(),
                Card8(),
                Card9(),
                Card10(),
                Card11(),
                Card12(),
                Card13(),
                Card14(),
                Card15(),
                Card16(),
              ],
            ),
          ),
        ));
  }
}

const loremIpsum =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

List<ExpandableController> controllerList = [
  ExpandableController(),
  ExpandableController(),
  ExpandableController(),
  ExpandableController(),
  ExpandableController(),
  ExpandableController(),
  ExpandableController(),
  ExpandableController(),
  ExpandableController(),
  ExpandableController(),
  ExpandableController(),
  ExpandableController(),
  ExpandableController(),
  ExpandableController(),
  ExpandableController(),
  ExpandableController(),
];

int currentIndex = -1;

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 40, 10, 20),
      child: Card(
        color: Colors.blue,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                controller: controllerList[0],
                theme: const ExpandableThemeData(
                  iconColor: Colors.white,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: InkWell(
                  onTap: () {
                    currentIndex = 0;
                    for (int i = 0; i < controllerList.length; i++) {
                      if (i == currentIndex) {
                        controllerList[i].expanded = true;
                      } else {
                        controllerList[i].expanded = false;
                      }
                    }
                  },
                  child: Container(
                    color: Colors.blue,
                    height: 60.0,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Expanded(flex: 1, child: Container()),
                            Expanded(
                              flex: 7,
                              child: Center(
                                child: Text(
                                  "மருத்துவமனை",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'tamil',
                                    //fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Dr.கிருஷ்ணன் கிளினிக்(பூதலூர்)",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+9104362288445');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 0.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "சூர்யா மருத்துவமனை(பூதலூர்)",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919842446113');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 0.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "கால் நடை டாக்டர்",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919486313145');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                builder: (_, collapsed, expanded) {
                  return Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Card(
        color: Colors.blue,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                controller: controllerList[1],
                theme: const ExpandableThemeData(
                  iconColor: Colors.white,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: InkWell(
                  onTap: () {
                    currentIndex = 1;
                    for (int i = 0; i < controllerList.length; i++) {
                      if (i == currentIndex) {
                        controllerList[i].expanded = true;
                      } else {
                        controllerList[i].expanded = false;
                      }
                    }
                  },
                  child: Container(
                    color: Colors.blue,
                    height: 60.0,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Center(
                                child: Text(
                                  "பஞ்சாயத்து அலுவலகம்",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'tamil',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "ஆவாரம்பட்டி ஊராட்சி",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+918637655527');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                builder: (_, collapsed, expanded) {
                  return Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Card(
        color: Colors.blue,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                controller: controllerList[2],
                theme: const ExpandableThemeData(
                  iconColor: Colors.white,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: InkWell(
                  onTap: () {
                    currentIndex = 2;
                    for (int i = 0; i < controllerList.length; i++) {
                      if (i == currentIndex) {
                        controllerList[i].expanded = true;
                      } else {
                        controllerList[i].expanded = false;
                      }
                    }
                  },
                  child: Container(
                    color: Colors.blue,
                    height: 60.0,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Center(
                                child: Text(
                                  " இ சேவை மையம்",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'tamil',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "ஆவாரம்பட்டி ",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919943507295');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                builder: (_, collapsed, expanded) {
                  return Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Card(
        color: Colors.blue,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                controller: controllerList[3],
                theme: const ExpandableThemeData(
                  iconColor: Colors.white,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: InkWell(
                  onTap: () {
                    currentIndex = 3;
                    for (int i = 0; i < controllerList.length + 1; i++) {
                      if (i == currentIndex) {
                        controllerList[i].expanded = true;
                      } else {
                        controllerList[i].expanded = false;
                      }
                    }
                  },
                  child: Container(
                    color: Colors.blue,
                    height: 60.0,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(flex: 1, child: Container()),
                            Expanded(
                              flex: 4,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "பிரதான் மந்திரி கிஷா சம்ரிதி கேந்திரா",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'tamil',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "மாதா நிறுவனம்",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919442188849');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                builder: (_, collapsed, expanded) {
                  return Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Card(
        color: Colors.blue,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                controller: controllerList[4],
                theme: const ExpandableThemeData(
                  iconColor: Colors.white,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: InkWell(
                  onTap: () {
                    currentIndex = 4;
                    for (int i = 0; i < controllerList.length; i++) {
                      if (i == currentIndex) {
                        controllerList[i].expanded = true;
                      } else {
                        controllerList[i].expanded = false;
                      }
                    }
                  },
                  child: Container(
                    color: Colors.blue,
                    height: 60.0,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(flex: 1, child: Container()),
                            Expanded(
                              flex: 4,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "தாலுகா அலுவலகம்",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'tamil',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "பூதலூர் தாலுகா",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+9104362288410');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                builder: (_, collapsed, expanded) {
                  return Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Card(
        color: Colors.blue,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                controller: controllerList[5],
                theme: const ExpandableThemeData(
                  iconColor: Colors.white,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: InkWell(
                  onTap: () {
                    currentIndex = 5;
                    for (int i = 0; i < controllerList.length; i++) {
                      if (i == currentIndex) {
                        controllerList[i].expanded = true;
                      } else {
                        controllerList[i].expanded = false;
                      }
                    }
                  },
                  child: Container(
                    color: Colors.blue,
                    height: 60.0,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(flex: 1, child: Container()),
                            Expanded(
                              flex: 4,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "        ஆம்புலன்ஸ்",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'tamil',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "ஐயம்மாள் சேவை மையம்",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919750309299');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 0.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "அரசு",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+91108');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                builder: (_, collapsed, expanded) {
                  return Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Card(
        color: Colors.blue,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                controller: controllerList[6],
                theme: const ExpandableThemeData(
                  iconColor: Colors.white,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: InkWell(
                  onTap: () {
                    currentIndex = 6;
                    for (int i = 0; i < controllerList.length; i++) {
                      if (i == currentIndex) {
                        controllerList[i].expanded = true;
                      } else {
                        controllerList[i].expanded = false;
                      }
                    }
                  },
                  child: Container(
                    color: Colors.blue,
                    height: 60.0,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Text(
                                "                       மருந்தகம்",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'tamil',
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "அன்னபூர்ணா(பூதலூர்)",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+918825814005');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "சைமெடிக்கல்ஸ்(பூதலூர்)",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919363260402');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "கவிதா மெடிக்கல்ஸ்(பூதலூர்)",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+917010396466');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                builder: (_, collapsed, expanded) {
                  return Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Card(
        color: Colors.blue,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                controller: controllerList[7],
                theme: const ExpandableThemeData(
                  iconColor: Colors.white,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: InkWell(
                  onTap: () {
                    currentIndex = 7;
                    for (int i = 0; i < controllerList.length; i++) {
                      if (i == currentIndex) {
                        controllerList[i].expanded = true;
                      } else {
                        controllerList[i].expanded = false;
                      }
                    }
                  },
                  child: Container(
                    color: Colors.blue,
                    height: 60.0,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(flex: 1, child: Container()),
                            Expanded(
                              flex: 4,
                              child: Text(
                                "        வங்கிகள்",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'tamil',
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              " எஸ்பிஐ(ஆவாரம்பட்டி) ",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919843943010');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              " எஸ்பிஐ (திருக்காட்டுப்பள்ளி) ",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919445862469');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "புடலூர் மத்திய கூட்டுறவு வங்கி",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+9104362288602');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "IDFC FIRST Bharat Limited",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+9109597083239');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                builder: (_, collapsed, expanded) {
                  return Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Card(
        color: Colors.blue,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                controller: controllerList[8],
                theme: const ExpandableThemeData(
                  iconColor: Colors.white,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: InkWell(
                  onTap: () {
                    currentIndex = 8;
                    for (int i = 0; i < controllerList.length + 1; i++) {
                      if (i == currentIndex) {
                        controllerList[i].expanded = true;
                      } else {
                        controllerList[i].expanded = false;
                      }
                    }
                  },
                  child: Container(
                    color: Colors.blue,
                    height: 60.0,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Center(
                                child: Text(
                                  "ஆட்டோ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'tamil',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "(ஆவாரம்பட்டி) ரமேஷ் ஆட்டோ",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919786111271');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "சந்துரு(பூதலூர்)",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+917339565944');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "ஸ்ரீதர்(பூதலூர்)",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+918610174633');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "நால் ரோடுபோட்டோ ஸ்டாண்ட்",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919943848337');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "திருமுருகன் ஆட்டோ(பூதலூர்)",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919500799750');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "ஸ்ரீராம்(பூதலூர்)",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919677673781');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "சுதாகர்(பூதலூர்)",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+917358818191');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "குமார் ஆட்டோ(பூதலூர்)",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+917339159266');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                builder: (_, collapsed, expanded) {
                  return Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Card(
        color: Colors.blue,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                controller: controllerList[9],
                theme: const ExpandableThemeData(
                  iconColor: Colors.white,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: InkWell(
                  onTap: () {
                    currentIndex = 9;
                    for (int i = 0; i < controllerList.length; i++) {
                      if (i == currentIndex) {
                        controllerList[i].expanded = true;
                      } else {
                        controllerList[i].expanded = false;
                      }
                    }
                  },
                  child: Container(
                    color: Colors.blue,
                    height: 60.0,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Center(
                                child: Text(
                                  "EB & பிளம்பர்",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'tamil',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "எலக்ட்ரீஷியன்",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+918525837765');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 0.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "சுதாகர் பிளம்பர் ",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+918973247542');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                builder: (_, collapsed, expanded) {
                  return Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Card(
        color: Colors.blue,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                controller: controllerList[10],
                theme: const ExpandableThemeData(
                  iconColor: Colors.white,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: InkWell(
                  onTap: () {
                    currentIndex = 10;
                    for (int i = 0; i < controllerList.length; i++) {
                      if (i == currentIndex) {
                        controllerList[i].expanded = true;
                      } else {
                        controllerList[i].expanded = false;
                      }
                    }
                  },
                  child: Container(
                    color: Colors.blue,
                    height: 60.0,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Center(
                                child: Text(
                                  "டாக்ஸி",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'tamil',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Pkt டாக்ஸி(பூதலூர்) ",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+91768086533');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 0.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "தஞ்சை அம்மன் டாக்ஸி(பூதலூர்) ",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919585786224');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 0.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "சலீம் ராஜா(பூதலூர்)",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919943643393');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                builder: (_, collapsed, expanded) {
                  return Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Card(
        color: Colors.blue,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                controller: controllerList[11],
                theme: const ExpandableThemeData(
                  iconColor: Colors.white,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: InkWell(
                  onTap: () {
                    currentIndex = 11;
                    for (int i = 0; i < controllerList.length; i++) {
                      if (i == currentIndex) {
                        controllerList[i].expanded = true;
                      } else {
                        controllerList[i].expanded = false;
                      }
                    }
                  },
                  child: Container(
                    color: Colors.blue,
                    height: 60.0,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Center(
                                child: Text(
                                  "வழக்கறிஞர்",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'tamil',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "ஜெயக்குமார் ",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919489760769');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                builder: (_, collapsed, expanded) {
                  return Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Card(
        color: Colors.blue,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                controller: controllerList[12],
                theme: const ExpandableThemeData(
                  iconColor: Colors.white,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: InkWell(
                  onTap: () {
                    currentIndex = 12;
                    for (int i = 0; i < controllerList.length; i++) {
                      if (i == currentIndex) {
                        controllerList[i].expanded = true;
                      } else {
                        controllerList[i].expanded = false;
                      }
                    }
                  },
                  child: Container(
                    color: Colors.blue,
                    height: 60.0,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Center(
                                child: Text(
                                  "சர்வீசஸ்",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'tamil',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: [
                            Center(
                              child: Text(
                                "                      மொபைல் சர்வீசஸ்",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "பாரதி",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919597403671');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "ஆர்கே மொபைல்ஸ்",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919585938493');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                        Row(
                          children: [
                            Center(
                              child: Text(
                                "                       மோட்டார் சர்வீசஸ்",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "அன்னை ஹார்டுவேர்ஸ்",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919150555928');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "பைக் சர்வீசஸ்",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+916374866145');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                builder: (_, collapsed, expanded) {
                  return Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Card(
        color: Colors.blue,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                controller: controllerList[13],
                theme: const ExpandableThemeData(
                  iconColor: Colors.white,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: InkWell(
                  onTap: () {
                    currentIndex = 13;
                    for (int i = 0; i < controllerList.length + 1; i++) {
                      if (i == currentIndex) {
                        controllerList[i].expanded = true;
                      } else {
                        controllerList[i].expanded = false;
                      }
                    }
                  },
                  child: Container(
                    color: Colors.blue,
                    height: 60.0,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Center(
                                child: Text(
                                  "ஸ்டோர்ஸ்",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'tamil',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: [
                            Center(
                              child: Text(
                                "                            பொது கடைகள்",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "(ஆவாரம்பட்டி)பழனிகுமார் கடை",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+917708770738');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "பொது அங்காடி(ஆவாரம்பட்டி)",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919843943010');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                        Row(
                          children: [
                            Center(
                              child: Text(
                                "                                அரிசி கடை",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              " (பூதலூர்)விநாயகா ரைஸ்",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919688241007');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                        Row(
                          children: [
                            Center(
                              child: Text(
                                "                    எலக்ட்ரிக்கல்ஸ் (பூதலூர்)",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              " மின்னல் ",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919750889626');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "இந்திய எலக்ட்ரிக்கல்ஸ் ",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919626633025');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "பிஸ்மில்லா traders ",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919943032215');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              " அன்னை ",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+918940780833');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                      ],
                    ),
                  ),
                ),
                builder: (_, collapsed, expanded) {
                  return Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Card(
        color: Colors.blue,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                controller: controllerList[14],
                theme: const ExpandableThemeData(
                  iconColor: Colors.white,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: InkWell(
                  onTap: () {
                    currentIndex = 14;
                    for (int i = 0; i < controllerList.length; i++) {
                      if (i == currentIndex) {
                        controllerList[i].expanded = true;
                      } else {
                        controllerList[i].expanded = false;
                      }
                    }
                  },
                  child: Container(
                    color: Colors.blue,
                    height: 60.0,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(flex: 1, child: Container()),
                            Expanded(
                              flex: 4,
                              child: Text(
                                "திருமண திட்டமிடுபவர்கள்",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'tamil',
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "SLV இவெண்ட் ப்ளன்னேர்ஸ்",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+919952389828');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                      ],
                    ),
                  ),
                ),
                builder: (_, collapsed, expanded) {
                  return Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Card(
        color: Colors.blue,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                controller: controllerList[15],
                theme: const ExpandableThemeData(
                  iconColor: Colors.white,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: InkWell(
                  onTap: () {
                    currentIndex = 15;
                    for (int i = 0; i < controllerList.length; i++) {
                      if (i == currentIndex) {
                        controllerList[i].expanded = true;
                      } else {
                        controllerList[i].expanded = false;
                      }
                    }
                  },
                  child: Container(
                    color: Colors.blue,
                    height: 60.0,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Center(
                                child: Text(
                                  "அவசர சேவை",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'tamil',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "காவல் நிலையம்",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:+9104362277061');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "தீயணைப்பு சேவைகள்",
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Uri phoneno = Uri.parse('tel:04362238301');
                                  if (await launchUrl(phoneno)) {
                                    //dialer opened
                                  } else {
                                    //dailer is not opened
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: Icon(Icons.phone)),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                      ],
                    ),
                  ),
                ),
                builder: (_, collapsed, expanded) {
                  return Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
