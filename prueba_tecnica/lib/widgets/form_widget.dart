import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormWidget extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController lastNameController;
  final TextEditingController ageController;
  final GlobalKey<FormState> formKey;
  const FormWidget({
    super.key,
    required this.nameController,
    required this.lastNameController,
    required this.ageController,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Registro",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            "Nombre",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: TextFormField(
              controller: nameController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                hintText: "Ingresa tu nombre",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Nombre invalido";
                }
                return null;
              },
            ),
          ),
          Text(
            "Apellido",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: TextFormField(
              controller: lastNameController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                hintText: "Ingresa tu apellido",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Apellido invalido";
                }
                return null;
              },
            ),
          ),
          Text(
            "Edad",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: TextFormField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Ingresa tu edad",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Edad invalida";
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
