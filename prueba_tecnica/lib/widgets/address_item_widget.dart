import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:prueba_tecnica/models/address_model.dart';

class AddressItemWidget extends StatelessWidget {
  final AddressModel address;
  const AddressItemWidget({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const HeroIcon(
              HeroIcons.mapPin,
              size: 30,
              style: HeroIconStyle.outline,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                address.address,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          color: Colors.grey,
        )
      ],
    );
  }
}
