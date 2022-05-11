import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:querocafe_mobapp/firebase_options.dart';
import 'package:querocafe_mobapp/routes/app_routes.dart';
import 'package:querocafe_mobapp/screens/copa_qrcode/copa_qrcode.dart';
import 'package:querocafe_mobapp/screens/copa_register/copa_register_screen.dart';
import 'package:querocafe_mobapp/screens/splashcreen/splash_screen.dart';
import 'package:querocafe_mobapp/screens/welcome/welcome_screen.dart';

class QueroCafeApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  QueroCafeApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quero Café',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 248, 232, 212),
      ),
      initialRoute: AppRoutes.splashscreen,
      routes: {
        AppRoutes.welcome: (context) => const WelcomeScreen(),
        AppRoutes.registercopa: (context) => const CopaRegisterScreen(),
        AppRoutes.copaQrcode: (context) => const CopaQrcode(),
      },
      home: CopaQrcode(),
      // home: FutureBuilder(
      //   future: _fbApp,
      //   builder: (context, snapshot) {
      //     if (snapshot.hasError) {
      //       print('Algum erro aconteceu: ${snapshot.error.toString()}');
      //       return const Text('Algo deu errado!');
      //     } else if (snapshot.hasData) {
      //       return const Splashscreen();
      //     } else {
      //       return const Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     }
      //   },
      // ),
    );
  }
}
