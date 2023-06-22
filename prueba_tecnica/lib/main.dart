import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tecnica/provider/user_provider.dart';
import 'package:prueba_tecnica/theme/theme.dart';

import 'views/screens.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Prueba técnica",
        initialRoute: "register",
        theme: ThemeApp.light,
        routes: {
          "register": (context) => RegisterScreen(),
          "home": (context) => const HomeScreen(),
          "addAddress": (context) => const AddAddressScreen(),
        },
      ),
    );
  }
}
