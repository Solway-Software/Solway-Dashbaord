import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:solway_dashboard/helpers/solway_request.dart';
import 'package:solway_dashboard/models/session.dart';

class AuthProvider with ChangeNotifier {
  String currentName = "";
  String currentPassword = "";
  String currentPhoneNumber = "";
  int otpCode = 0;

  Future<void> setCurrentUserDetails({
    required String name,
    required String password,
    required String phone,
  }) async {
    currentName = name;
    currentPassword = password;
    currentPhoneNumber = phone;
    notifyListeners();
  }

  SessionModel session =
      SessionModel(userId: 'null', token: 'null', role: 'null');

  Future<void> requestLogin(Map bodyRoute) async {
    final data = await SolwayRequest.requestPost('/auth/login', {
      "password": bodyRoute['password'],
      "phone_number": bodyRoute['phoneNumber'],
      "role": "user"
    });

    if (data == null) {
      throw 'error';
    }

    session = SessionModel(
      userId: data['user_id'],
      token: data['token'],
      role: 'user',
    );

    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('session', jsonEncode(session));
  }

  Future<bool> sendOTPCode({required int phoneNumber}) async {
    final data = await SolwayRequest.requestPost(
        '/auth/verifyUser', {"phone_number": currentPhoneNumber});
    print(data);
    if (data == null) {
      return false;
    }
    if (data["success"] &&
        data["verify_code"] != null &&
        data["verify_code"] != "") {
      otpCode = data["verify_code"];
      notifyListeners();
      return true;
    } else {
      return false;
    }
  }

  Future<bool> requestOTP({required int phoneNumber}) async {
    final data = await SolwayRequest.requestPost(
        '/auth/verifyUser', {"phone_number": currentPhoneNumber});
    print(data);
    if (data == null) {
      return false;
    }

    if (data["success"] &&
        data["verify_code"] != null &&
        data["verify_code"] != "") {
      return true;
    } else {
      return false;
    }
  }

  Future<void> requestSignUp() async {
    final data = await SolwayRequest.requestPost('/auth/registerUser', {
      "name": currentName,
      "password": currentPassword,
      "phone_number": currentPhoneNumber,
      "role": "user"
    });
    print(data);
    if (data == null) {
      throw 'error';
    }
    session = SessionModel(
      userId: DateTime.now().toIso8601String(),
      token: data['token'],
      role: 'user',
    );

    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('session', jsonEncode(session));
  }

  Future<void> setGuestUser() async {
    SessionModel sessionGuest =
        SessionModel(userId: 'null', token: 'null', role: 'guest');
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('session', jsonEncode(sessionGuest));
  }

  Future<SessionModel> getSessionData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    final data = preferences.getString('session');
    if (data == null) {
      return SessionModel(userId: 'null', token: 'null', role: 'null');
    }
    session = SessionModel.fromJson(jsonDecode(data));
    notifyListeners();
    return session;
  }

  Future<void> logOutUser() async {
    SessionModel sessionNull =
        SessionModel(userId: 'null', token: 'null', role: 'null');
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('session', jsonEncode(sessionNull));
  }
}
