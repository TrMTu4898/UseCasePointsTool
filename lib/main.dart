import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:usecasetool/screens/History.dart';
import 'package:usecasetool/screens/Home.dart';
import 'package:usecasetool/screens/Profile__page.dart';
import 'package:usecasetool/screens/Tool__page.dart';
import 'package:usecasetool/screens/my__page.dart';
import 'package:usecasetool/utils/themes.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Name',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PersistentTabController _controller;

  List<Widget> _buildScreens() {
    return [
      HomePage(),
      ToolPage(),
      History(),
      Profile(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: Color(0xFF50C2C9),
        inactiveColorPrimary: Colors.grey,
        contentPadding: 3.0,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.work),
        title: ("Tools"),
        activeColorPrimary: Color(0xFF50C2C9),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.history),
        title: ("History"),
        activeColorPrimary: Color(0xFF50C2C9),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        title: ("Profile"),
        activeColorPrimary: Color(0xFF50C2C9),
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: false,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(8.0),
          colorBehindNavBar: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 100),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 150),
        ),
        navBarStyle: NavBarStyle.style19,
      ),
    );
  }
}
