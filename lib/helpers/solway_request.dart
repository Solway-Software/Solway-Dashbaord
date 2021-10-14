import 'dart:convert';

import 'package:http/http.dart';
import 'package:solway_dashboard/models/session.dart';
import 'package:solway_dashboard/providers/auth_provider.dart';

import 'get_It.dart';


const String domain = 'url';

class SolwayRequest {
  static SessionModel session = locator.get<AuthProvider>().session;

  static Future requestGet(String route) async {
    // print("Tokennn"+ session.token);
    final response = await get(
      Uri.parse('$domain$route'),
      headers: {
        "Content-Type": "application/json",
        if (session.role != 'guest') "Authorization": "Bearer ${session.token}"
      },
    );
    // print(response.body);
    if (response.statusCode != 200) return null;
    return jsonDecode(response.body);
  }

  static Future requestPost(String route, dynamic body) async {
    final response = await post(
      Uri.parse('$domain$route'),
      body: jsonEncode(body),
      headers: {
        "Content-Type": "application/json",
        if (session.role != 'guest') "Authorization": "Bearer ${session.token}"
      },
    );
    // print(response.body);
    if (response.statusCode != 200) return null;
    return jsonDecode(response.body);
  }

  static Future requestUpdate(String route, dynamic body) async {
    final response = await put(
      Uri.parse('$domain$route'),
      body: jsonEncode(body),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${session.token}"
      },
    );
    // print(response.body);
    if (response.statusCode != 200) return null;
    return jsonDecode(response.body);
  }

  static Future requestDelete(String route) async {
    final response = await delete(
      Uri.parse('$domain$route'),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${session.token}"
      },
    );
    // print(response.body);
    if (response.statusCode != 200) return null;
    return jsonDecode(response.body);
  }
}
