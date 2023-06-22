import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tecnica/models/user_model.dart';
import 'package:prueba_tecnica/provider/user_provider.dart';

class FinishRegistryButtonWidget extends StatelessWidget {
  const FinishRegistryButtonWidget({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.lastNameController,
    required this.ageController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController lastNameController;
  final TextEditingController ageController;

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    return Align(
      alignment: Alignment.bottomRight,
      child: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            UserModel user = UserModel(
              nameController.text,
              lastNameController.text,
              int.parse(ageController.text),
            );
            userProvider.updateUser(user);
            Navigator.popAndPushNamed(context, "home");
          }
        },
        heroTag: "",
        backgroundColor: Colors.white,
        elevation: 2,
        child: const Icon(
          Icons.arrow_forward_rounded,
          color: Colors.green,
        ),
      ),
    );
  }
}
