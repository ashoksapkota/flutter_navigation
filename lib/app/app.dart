import 'package:flutter/material.dart';
import 'package:nav/routes/app_route.dart';

import '../view/dashboard_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Course',
     initialRoute: AppRoute.dashboardRoute,
      routes: AppRoute.getApplicationRoute(),

    );
  }

}
