import 'package:flutter/material.dart';
import 'package:querocafe_mobapp/screens/copa_register/widgets/copa_register_form.dart';
import 'package:querocafe_mobapp/shared/widgets/backbuttonbar_widget.dart';

class CopaRegisterScreen extends StatefulWidget {
  const CopaRegisterScreen({Key? key}) : super(key: key);

  @override
  State<CopaRegisterScreen> createState() => _CopaRegisterScreenState();
}

class _CopaRegisterScreenState extends State<CopaRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 248, 232, 212),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 248, 232, 212),
          body: Column(
            children: const [
              BackbuttonbarWidget(),
              RegisterCopaForm(),
            ],
          ),
        ),
      ),
    );
  }
}
