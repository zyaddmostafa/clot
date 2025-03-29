import 'package:clot/core/routing/app_routes.dart';
import 'package:clot/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClotApp extends StatelessWidget {
  final AppRouter appRouter;
  const ClotApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xFF8E6CEF),
          scaffoldBackgroundColor: const Color(0xFFF4F4F4),
        ),

        initialRoute: Routes.loginScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
