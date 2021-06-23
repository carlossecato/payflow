import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/appcolors.dart';

import 'modules/login/login_pag.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: LoginPage(),
    );
  }
}
