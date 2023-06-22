import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tecnica/models/address_model.dart';
import 'package:prueba_tecnica/widgets/address_item_widget.dart';

import '../provider/user_provider.dart';

class SearchAddressItemWidget extends StatelessWidget {
  final AddressModel address;
  const SearchAddressItemWidget({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    return GestureDetector(
      onTap: () {
        userProvider.addAddress(address);
        Navigator.pop(context);
      },
      child: AddressItemWidget(
        address: address,
      ),
    );
  }
}
