import 'package:flutter/material.dart';
import 'package:querocafe_mobapp/routes/app_routes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/artwork.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Image(
              image: AssetImage('assets/images/coffe_talk.png'),
              height: 256,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Entrar em uma copa'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.registercopa);
                },
                child: Text('Administrar uma copa'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
