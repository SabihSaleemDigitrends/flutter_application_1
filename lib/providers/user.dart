import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/endpoints.dart';
import 'package:flutter_application_1/services/Api_Services.dart';

class User extends ChangeNotifier {
  // User({
  //   this.UserValue = 0,
  // });

  void create(String firstName, String lastName, int age) {
    final Map payload = {
      'firstName': firstName,
      'lastName': lastName,
      'age': age,
    };
    ApiServices().postData(Endpoints().endpoints['createUser'], payload);
    notifyListeners();
  }
}
