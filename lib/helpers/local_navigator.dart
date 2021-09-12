import 'package:flutter/material.dart';

import '../constants/controller.dart';
import '../routers/router.dart';
import '../routers/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: HomePageRoute,
      onGenerateRoute: generateRoute,
    );
