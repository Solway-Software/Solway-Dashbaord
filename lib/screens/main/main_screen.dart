import 'package:solway_dashboard/Utilities/ThemeOf.dart';
import 'package:solway_dashboard/controllers/MenuController.dart';
import 'package:solway_dashboard/helpers/responsive.dart';
import 'package:solway_dashboard/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return !Responsive.isDesktop(context)
        ? Scaffold(
            backgroundColor: theme(context).backgroundColor,
            key: context.read<MenuController>().scaffoldKey,
            body: SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (Responsive.isMiniDesktop(context))
                    const Expanded(flex: 1, child: SideMenu()),
                  Expanded(
                    flex: 20,
                    child: DashboardScreen(),
                  ),
                ],
              ),
            ),
          )
        : Scaffold(
            backgroundColor: theme(context).backgroundColor,
            key: context.read<MenuController>().scaffoldKey,
            body: SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (Responsive.isDesktop(context))
                    const Expanded(child: SideMenu()),
                  Expanded(
                    flex: 6,
                    child: DashboardScreen(),
                  )
                ],
              ),
            ),
          );
  }
}

// if (Responsive.isMiniDesktop(context))
// const Expanded(
// flex: 1,
// child: SideMenu(),
// ),
// // We want this side menu only for large screen
// if (Responsive.isDesktop(context))
// const Expanded(
// flex: 5,
// child: SideMenu(),
// ),
// Expanded(
// // It takes 5/6 part of the screen
// flex: 20,
// child: DashboardScreen(),
// ),if (Responsive.isMiniDesktop(context))
// const Expanded(
// flex: 1,
// child: SideMenu(),
// ),
// // We want this side menu only for large screen
// if (Responsive.isDesktop(context))
// const Expanded(
// flex: 5,
// child: SideMenu(),
// ),
// Expanded(
// // It takes 5/6 part of the screen
// flex: 20,
// child: DashboardScreen(),
// ),
