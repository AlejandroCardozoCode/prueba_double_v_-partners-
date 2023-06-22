import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddAddressButtonWidget extends StatelessWidget {
  const AddAddressButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, "addAddress");
            },
            backgroundColor: Colors.white,
            elevation: 2,
            child: const Icon(
              Icons.add,
              size: 30,
              color: Colors.green,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            "Agregar",
            style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
