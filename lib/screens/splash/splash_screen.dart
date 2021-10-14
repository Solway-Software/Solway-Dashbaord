// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:solway_dashboard/helpers/GetIt.dart';
// import 'package:solway_dashboard/helpers/language.dart';
// import 'package:solway_dashboard/models/session.dart';
// import 'package:solway_dashboard/providers/auth_provider.dart';
// import 'package:solway_dashboard/screens/home/main/main_screen.dart';
// import 'package:solway_dashboard/screens/login/login_screen.dart';
//
// class SplashScreen extends StatelessWidget {
//   static const String route = '/';
//   const SplashScreen({Key? key}) : super(key: key);
//
//   Future<SessionModel> _fetchData(BuildContext context) async {
//     // await Provider.of<AppStates>(context, listen: false).getMode();
//     // await Provider.of<Language>(context, listen: false)
//     //     .getLanguageDataInLocal();
//     return await locator.get<AuthProvider>().getSessionData();
//   }
//   @override
//   Widget build(BuildContext context) {
//     // SessionModel session = locator.get<AuthService>().session;
//     // print(session.role);
//     return Scaffold(
//       body: FutureBuilder<SessionModel>(
//         future: _fetchData(context),
//         builder: (context, snapshot) => !snapshot.hasData
//             ? const Center(
//           child: CircularProgressIndicator(),
//         )
//             : snapshot.data!.role == 'null'
//             ? LoginScreen()
//             : MainScreen(),
//       ),
//     );
//   }
// }
