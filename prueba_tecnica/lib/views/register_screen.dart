import 'package:flutter/material.dart';
import 'package:prueba_tecnica/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                FormWidget(
                  nameController: nameController,
                  lastNameController: lastNameController,
                  ageController: ageController,
                  formKey: formKey,
                ),
                FinishRegistryButtonWidget(
                  formKey: formKey,
                  nameController: nameController,
                  lastNameController: lastNameController,
                  ageController: ageController,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
