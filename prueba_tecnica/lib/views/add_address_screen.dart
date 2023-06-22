import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prueba_tecnica/models/address_model.dart';
import 'package:prueba_tecnica/services/location_services.dart';
import 'package:prueba_tecnica/widgets/widgets.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({super.key});

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  List<AddressModel> possibleAddresses = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Agregar dirección",
                style: GoogleFonts.inter(fontSize: 34, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                onSubmitted: (addressName) async {
                  LocationServices locationServices = LocationServices();
                  // encontrar localizaciones con este nombre
                  List<Location?> locationsList = await locationServices.getLocationsByText(addressName);
                  // para cada localización encontrar su dirección exacta
                  for (var i = 0; i < locationsList.length; i++) {
                    possibleAddresses.clear();
                    String currentAddress = await locationServices.getAddressByLatLong(locationsList[i]!.latitude, locationsList[i]!.longitude);
                    AddressModel addressModel = AddressModel(locationsList[i]!, currentAddress);
                    possibleAddresses.add(addressModel);
                    setState(() {});
                  }
                },
                keyboardType: TextInputType.streetAddress,
                decoration: const InputDecoration(
                  hintText: "Ingresa una dirección",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: possibleAddresses.length,
                  itemBuilder: (context, index) {
                    return SearchAddressItemWidget(address: possibleAddresses[index]);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
