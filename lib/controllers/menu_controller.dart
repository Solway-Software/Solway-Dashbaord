import 'package:flutter/material.dart';
import 'package:solway_dashboard/constants.dart';
import 'package:solway_dashboard/screens/dashboard/dashboard_screen.dart';
import 'package:solway_dashboard/screens/notifications/notifications_screen.dart';
import 'package:solway_dashboard/screens/profile/profile_screen.dart';
import 'package:solway_dashboard/screens/settings/settings_screen.dart';
import 'package:solway_dashboard/screens/test/test_screen.dart';

enum NavigationTab { dashboard, test, notifications, profile, settings }

class MenuController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  // int tabHome = 0;
  NavigationTab _navigationTab = NavigationTab.dashboard;

  // void setHomeTab(int tab) {
  //   tabHome = tab;
  //   notifyListeners();
  // }
  //
  // int getHomeTab() {
  //   return tabHome;
  // }

  void setNavigationTab(NavigationTab navTab) {
    _navigationTab = navTab;
    notifyListeners();
  }

  Widget getNavigationTab() {
    switch (_navigationTab) {
      case NavigationTab.dashboard:
        return DashboardScreen();
      case NavigationTab.test:
        return TestScreen();
      case NavigationTab.notifications:
        return NotificationsScreen();
      case NavigationTab.profile:
        return ProfileScreen();
      case NavigationTab.settings:
        return SettingsScreen();
      default:
        return DashboardScreen();
    }
  }

  String getNavigationTitle({required NavigationTab navigation}) {
    switch (navigation) {
      case NavigationTab.dashboard:
        return 'home';
      case NavigationTab.test:
        return 'home';
      case NavigationTab.notifications:
        return 'home';
      case NavigationTab.profile:
        return 'home';
      case NavigationTab.settings:
        return 'home';
      default:
        return 'home';
    }
  }

  void Function() getNavigationOnPressed({required NavigationTab navigation}) {
    switch (navigation) {
      case NavigationTab.dashboard:
        return () {
          setNavigationTab(navigation);
          notifyListeners();
        };
      case NavigationTab.test:
        return () {
          setNavigationTab(navigation);
          notifyListeners();
        };
      case NavigationTab.notifications:
        return () {
          setNavigationTab(navigation);
          notifyListeners();
        };
      case NavigationTab.profile:
        return () {
          setNavigationTab(navigation);
        };
      case NavigationTab.settings:
        return () {
          setNavigationTab(navigation);
        };
      default:
        return () {
          setNavigationTab(NavigationTab.dashboard);
        };
    }
  }

  String getNavigationImageUrl({required NavigationTab navigation}) {
    switch (navigation) {
      case NavigationTab.dashboard:
        return Constants.dashboardPath;
      case NavigationTab.test:
        return Constants.dashboardPath;
      case NavigationTab.notifications:
        return Constants.notificationsPath;
      case NavigationTab.profile:
        return Constants.profilePath;
      case NavigationTab.settings:
        return Constants.settingsPath;
      default:
        return Constants.dashboardPath;
    }
  }
}
