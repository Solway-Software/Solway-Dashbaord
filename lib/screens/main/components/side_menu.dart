import 'package:provider/provider.dart';
import 'package:solway_dashboard/Utilities/ThemeOf.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:solway_dashboard/controllers/menu_controller.dart';
import 'package:solway_dashboard/helpers/Language.dart';
import 'package:solway_dashboard/helpers/responsive.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
    required this.isDrawer,
  }) : super(key: key);

  final bool isDrawer;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: theme(context).accentColor,
      child: ListView(
        children: [
          Responsive.isDesktop(context) || isDrawer
              ? DrawerHeader(
                  // child: Image.asset("assets/images/logo.png"),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: SvgPicture.asset(
                      "assets/images/logo.svg",
                      color: theme(context).primaryColor,
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10, right: 2),
                  child: SvgPicture.asset(
                    "assets/images/logoIcon.svg",
                    color: theme(context).primaryColor,
                    height: 30,
                  ),
                ),
          // Provider.of<MenuController>(context)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: NavigationTab.values
                .map((val) => NavigationSelecter(navigation: val,isDrawer: isDrawer,))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class NavigationSelecter extends StatelessWidget {
  NavigationSelecter({required this.navigation,required this.isDrawer});
  final NavigationTab navigation;
  final bool isDrawer;
  @override
  Widget build(BuildContext context) {
    final menuController = Provider.of<MenuController>(context);
    return DrawerListTile(
      title: menuController.getNavigationTitle(navigation: navigation),
      url: menuController.getNavigationImageUrl(navigation: navigation),
      press: menuController.getNavigationOnPressed(navigation: navigation),
      isDrawer: isDrawer,
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.url,
    required this.press,
    required this.isDrawer,
  }) : super(key: key);

  final String title, url;
  final VoidCallback press;
  final bool isDrawer;

  @override
  Widget build(BuildContext context) {
    return isDrawer
        ? ListTile(
            onTap: press,
            horizontalTitleGap: 0.0,
            leading: SvgPicture.asset(
              url,
              color: theme(context).hintColor,
              height: 16,
            ),
            title: Text(words(context)['home']),
          )
        : Responsive.isDesktop(context)
            ? ListTile(
                onTap: press,
                horizontalTitleGap: 0.0,
                leading: SvgPicture.asset(
                  url,
                  color: theme(context).hintColor,
                  height: 16,
                ),
                title: Text(words(context)['home']),
              )
            : ListTile(
                onTap: press,
                horizontalTitleGap: 0.0,
                leading: SvgPicture.asset(
                  url,
                  color: theme(context).hintColor,
                  height: 16,
                ),
              );
  }
}
