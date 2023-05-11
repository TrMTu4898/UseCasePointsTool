// ignore: file_names
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:usecasetool/router/auto_router.gr.dart';
import '../utilize/auth_validator.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

@RoutePage()
class HomeViewScreen extends StatefulWidget {
  const HomeViewScreen({Key? key}) : super(key: key);

  // ignore: unused_field

  @override
  State<HomeViewScreen> createState() => _HomeViewScreenState();
}

class _HomeViewScreenState extends State<HomeViewScreen> {
  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);
    
    return AutoTabsRouter.pageView(
      routes: const [
        HomeRoute(),
        UseCasePointRoute(),
        HistoryRoute(),
        ProfileRoute(),
      ],
      builder: (context, child, _) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          // appBar: AppBar(
          // title: Text(context.topRoute.name), leading: AutoLeadingButton()),
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex, 
              selectedItemColor: Color(0xff50C2C9),
              unselectedItemColor: Colors.grey,
              onTap: tabsRouter.setActiveIndex,
              backgroundColor: Colors.white,
               type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: [
                BottomNavigationBarItem(
                  label: 'Home',
                 
                  icon: Icon(Icons.home,size: 25),
                ),
                 BottomNavigationBarItem(
                  label: 'History',
                  
                  icon: Icon(Icons.toll_outlined,size: 25),
                ),
                BottomNavigationBarItem(
                  label: 'History',
                
                  icon: Icon(Icons.history,size: 25),
                ),
                BottomNavigationBarItem(
                  label: 'Profile',
                 
                  icon: Icon(Icons.person,size: 25),
                ),
              ]),
        );
      },
    );
  }
}
// items: [
//                 
//               ],
