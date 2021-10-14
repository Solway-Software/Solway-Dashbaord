// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:solway_dashboard/controllers/menu_controller.dart';
//
// import 'language.dart';
//
// class ProviderGenerator extends StatelessWidget {
//   final Widget child;
//   // ignore: use_key_in_widget_constructors
//   const ProviderGenerator({required this.child});
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider.value(
//           value: Auth(),
//         ),
//         ChangeNotifierProxyProvider<Auth, CountryProvider>(
//           create: (context) => CountryProvider(),
//           update: (context, auth, previousCountryProvider) => previousCountryProvider!..setUpdates(auth.getToken),
//         ),
//       ],
//       child: child,
//     );
//   }
// }
