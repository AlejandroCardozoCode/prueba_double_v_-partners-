import 'package:flutter/material.dart';
import 'package:prueba_tecnica/models/address_model.dart';
import 'package:prueba_tecnica/models/user_model.dart';

class UserProvider extends ChangeNotifier {
  late UserModel _user;

  UserModel get user => _user;

  void updateUser(UserModel newUser) {
    _user = newUser;
    notifyListeners();
  }

  void addAddress(AddressModel newAddress) {
    _user.addresses.add(newAddress);
    notifyListeners();
  }
}
