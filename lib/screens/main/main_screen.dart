import 'package:solway_dashboard/Utilities/theme_of.dart';
import 'package:solway_dashboard/controllers/menu_controller.dart';
import 'package:solway_dashboard/helpers/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  static const String route = '/main';

  @override
  Widget build(BuildContext context) {
    final menuController = Provider.of<MenuController>(context,listen: true);
    return !Responsive.isDesktop(context)
        ? Scaffold(
            backgroundColor: theme(context).backgroundColor,
            key: context.read<MenuController>().scaffoldKey,
            drawer: const SideMenu(isDrawer: true,),
            body: SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (Responsive.isMiniDesktop(context))
                    const Expanded(flex: 1, child: SideMenu(isDrawer: false)),
                  Expanded(
                    flex: 20,
                    child: menuController.getNavigationTab(),
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
                    const Expanded(child: SideMenu(isDrawer: false)),
                  Expanded(
                    flex: 6,
                    child: menuController.getNavigationTab(),
                  )
                ],
              ),
            ),
          );
  }
}
