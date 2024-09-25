import 'package:bookly/constant.dart';
import 'package:flutter/material.dart';
import 'core/utils/app_router.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor,),
      debugShowCheckedModeBanner: false,
    );
  }
}
