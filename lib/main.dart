import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myoapp/bluetooth/screen.dart';
import 'package:myoapp/provider/theme_provider.dart';
import 'package:provider/provider.dart';

import 'core/helper_methods.dart';
import 'splash/view.dart';

bool darkMode = false;

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              navigatorKey: navigatorKey,
              themeMode: themeProvider.themeMode,
              theme: MyThemes.lightTheme,
              darkTheme: MyThemes.darkTheme,
              home: child,
            );
          },
          child: const FlutterBlueApp(),
        );
      },
    );
  }
}
