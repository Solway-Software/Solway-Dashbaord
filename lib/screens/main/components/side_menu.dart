import 'package:solway_dashboard/Utilities/ThemeOf.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:solway_dashboard/helpers/responsive.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: theme(context).accentColor,
      child: ListView(
        children: [
          Responsive.isDesktop(context)
              ? DrawerHeader(
                  // child: Image.asset("assets/images/logo.png"),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: SvgPicture.asset(
                      "assets/images/logo.svg",
                      color: theme(context).primaryColor,
                    ),
                  ),
                )
              : Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 10,right: 2),
                child: SvgPicture.asset(
                    "assets/images/logoIcon.svg",
                    color: theme(context).primaryColor,
                    height: 30,
                  ),
              ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Tests",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Tests",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Tests",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Tests",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Notification",
            svgSrc: "assets/icons/menu_notification.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Profile",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Settings",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? ListTile(
            onTap: press,
            horizontalTitleGap: 0.0,
            leading: SvgPicture.asset(
              svgSrc,
              color: theme(context).hintColor,
              height: 16,
            ),
            title: Text(
              title,
              style: TextStyle(color: theme(context).hintColor),
            ),
          )
        : ListTile(
            onTap: press,
            horizontalTitleGap: 0.0,
            leading: SvgPicture.asset(
              svgSrc,
              color: theme(context).hintColor,
              height: 16,
            ),
          );
  }
}
