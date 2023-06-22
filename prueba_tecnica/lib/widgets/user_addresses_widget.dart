import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tecnica/provider/user_provider.dart';

import 'address_item_widget.dart';

class UserAddressesListWidget extends StatelessWidget {
  const UserAddressesListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: userProvider.user.addresses.length,
        itemBuilder: (context, index) {
          final reversedIndex = userProvider.user.addresses.length - 1 - index;
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: AddressItemWidget(address: userProvider.user.addresses[reversedIndex]),
          );
        },
      ),
    );
  }
}
