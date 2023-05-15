import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:usecasetool/bloc/use_case_point/use_case_points_bloc.dart';
import 'package:usecasetool/router/auto_router.dart';
import 'package:usecasetool/screens/%20use_case_point/uucp_screen.dart';
import 'package:usecasetool/util/uucp_calculate.dart';
import 'firebase_options.dart';
import 'package:usecasetool/screens/home/get_start.dart';
import 'package:usecasetool/screens/home/home_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:usecasetool/router/auto_router.dart' as router;
import 'package:provider/provider.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter/cupertino.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiBlocProvider(
      providers: [
        Provider<UseCasePointsBloc>(
          create:(_) => UseCasePointsBloc(),
        ),
      ],
      child: const MyApp(),
    ),
  );
  configLoading();
}
void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
    // ..customAnimation = CustomAnimation();
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
  // This widget is the root of your application.
  class _MyAppState extends State<MyApp> {
    final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false, // Thêm hoặc sửa giá trị này thành false
      title: 'Use Case Points Calculator',
      routerConfig: _appRouter.config(),
       builder: EasyLoading.init(),
    
    );
  }
  }


