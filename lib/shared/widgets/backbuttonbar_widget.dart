import 'package:flutter/material.dart';

class BackbuttonbarWidget extends StatelessWidget {
  const BackbuttonbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: Align(
        alignment: Alignment.centerLeft,
        child: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
