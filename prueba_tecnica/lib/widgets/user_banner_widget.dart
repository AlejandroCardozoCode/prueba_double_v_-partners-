import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserInfoWidget extends StatelessWidget {
  final String nombreCompleto;
  final String edad;
  const UserInfoWidget({super.key, required this.nombreCompleto, required this.edad});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.person_outline,
          size: 50,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nombreCompleto,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              "$edad años",
              style: GoogleFonts.inter(fontSize: 18),
            )
          ],
        )
      ],
    );
  }
}
