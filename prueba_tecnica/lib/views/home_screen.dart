import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tecnica/provider/user_provider.dart';
import 'package:prueba_tecnica/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: UserInfoWidget(nombreCompleto: "${userProvider.user.name} ${userProvider.user.lastName}", edad: "${userProvider.user.age}"),
              ),
              Text(
                "Tus direcciones",
                style: GoogleFonts.inter(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const AddAddressButtonWidget(),
              const UserAddressesListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
