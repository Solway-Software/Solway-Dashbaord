import 'package:flutter/material.dart';
import 'package:solway_dashboard/constants.dart';
import 'package:solway_dashboard/screens/home/dashboard/dashboard_screen.dart';
import 'package:solway_dashboard/screens/home/notifications/notifications_screen.dart';
import 'package:solway_dashboard/screens/home/profile/profile_screen.dart';
import 'package:solway_dashboard/screens/home/settings/settings_screen.dart';
import 'package:solway_dashboard/screens/home/test/test_screen.dart';

enum NavigationTab { dashboard, test, notifications, profile, settings }

class MenuController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  NavigationTab _navigationTab = NavigationTab.dashboard;

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
        return 'dashboard';
      case NavigationTab.test:
        return 'test';
      case NavigationTab.notifications:
        return 'notifications';
      case NavigationTab.profile:
        return 'profile';
      case NavigationTab.settings:
        return 'settings';
      default:
        return 'dashboard';
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
