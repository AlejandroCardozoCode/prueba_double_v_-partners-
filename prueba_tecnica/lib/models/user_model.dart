import 'package:prueba_tecnica/models/address_model.dart';

class UserModel {
  late String name;
  late String lastName;
  late int age;
  List<AddressModel> addresses = [];

  UserModel(this.name, this.lastName, this.age);
}
