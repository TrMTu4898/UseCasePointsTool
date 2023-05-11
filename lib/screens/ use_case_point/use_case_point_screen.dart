import 'package:flutter/material.dart';
import 'package:usecasetool/bloc/use_case_point/use_case_points_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:usecasetool/router/auto_router.gr.dart';
import '../../data/models/use_case_points.dart';

@RoutePage()
class UseCasePointScreen extends StatelessWidget {
  const UseCasePointScreen({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context){
    // return AutoTabsRouter.pageView(
    //     routes: const [
    //       UUCPRoute(),
    //       UAWRoute()
    //     ],
    //     builder: (context, child, _){
    //       final tabsRouter = AutoTabsRouter.of(context);
    //       return Scaffold(
    //         appBar: AppBar(
    //             title: const Text('Use Case Points'),
    //             leading: const AutoLeadingButton()
    //         ),
    //         body: child,
    //         bottomNavigationBar: BottomNavigationBar(
    //           currentIndex: tabsRouter.activeIndex,
    //           onTap: tabsRouter.setActiveIndex,
    //           items:const [
    //             BottomNavigationBarItem(
    //                 icon: Icon(Icons.calculate),
    //                 label: 'UUCP Screen'
    //             ),
    //             BottomNavigationBarItem(
    //                 icon: Icon(Icons.calculate),
    //                 label: 'UAW Screen'
    //             ),
    //           ],
    //         ),
    //       );
    //     }
    // );
    return Center(child: Text('hi'),);
  }
}
