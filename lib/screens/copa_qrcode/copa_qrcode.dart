import 'package:flutter/material.dart';

class CopaQrcode extends StatelessWidget {
  final String? qrCode;

  const CopaQrcode({Key? key, this.qrCode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text("QR Code da Copa"),
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(185, 128, 104, 1),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Imprimir plaquinha"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Compartilhar código"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
