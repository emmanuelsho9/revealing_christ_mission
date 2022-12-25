import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class screenUtilConstant extends StatelessWidget {
  screenUtilConstant({
    Key? key, this.Cbody, this.appBar, this.backgroundColor,
    this.bottomNavigationBar, this.floatingActionButton, this.bottomSheet,
    this.drawer
  }) : super(key: key);

  Widget? Cbody;
  PreferredSizeWidget? appBar;
  Color? backgroundColor;
  Widget? bottomNavigationBar;
  Widget? floatingActionButton;
  Widget? bottomSheet;
  Widget? drawer;


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Scaffold(
          body: Cbody,
          appBar: appBar,
          drawer: drawer,
          backgroundColor: backgroundColor,
          bottomNavigationBar: bottomNavigationBar,
          floatingActionButton: floatingActionButton,
          bottomSheet: bottomSheet,
        );
      },);
  }
}
