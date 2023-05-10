import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:usecasetool/bloc/use_case_point/use_case_points_bloc.dart';
import 'package:usecasetool/router/auto_router.dart';
import 'package:usecasetool/screens/%20use_case_point/use_case_point_screen.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';

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
        BlocProvider<UseCasePointsFormBloc>(
          create:(_) => UseCasePointsFormBloc(useCasePointsBloc: UseCasePointsBloc()),
        )
      ],
      child: const MyApp(),
    ),
  );
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
      title: 'Use Case Points Calculator',
      routerConfig: _appRouter.config(),
    );
  }
  }


