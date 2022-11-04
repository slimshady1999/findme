import 'package:findme/introscreen/splashPage.dart';
import 'package:findme/themes/themeData.dart';
import 'package:flutter/material.dart';

import 'customerPanel/pages/dashboard/bottomNavigationBarSection/bottomNavigationBarSection.dart';
import 'customerPanel/pages/userAuthentications/loginORsignupPage.dart';
import 'customerPanel/pages/userPersonalData.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomerBottomNavigationBarSection(),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light));
}
