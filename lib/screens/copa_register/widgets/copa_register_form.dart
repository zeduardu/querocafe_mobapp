import 'package:flutter/material.dart';
import 'package:querocafe_mobapp/services/copa_service.dart';

class RegisterCopaForm extends StatefulWidget {
  const RegisterCopaForm({Key? key}) : super(key: key);

  @override
  State<RegisterCopaForm> createState() => _RegisterCopaFormState();
}

class _RegisterCopaFormState extends State<RegisterCopaForm> {
  final _formKey = GlobalKey<FormState>();
  final copaNameController = TextEditingController();
  final administratorEmailController = TextEditingController();
  final CopaService copaService = CopaService();

  @override
  void dispose() {
    copaNameController.dispose();
    administratorEmailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              const Text(
                "Bem vindo!",
                style: TextStyle(
                    fontFamily: "SF UI Display",
                    fontWeight: FontWeight.w500,
                    fontSize: 32,
                    color: Color.fromRGBO(140, 116, 106, 1)),
              ),
              const Text(
                "Vamos criar sua Copa a partir dos dados informados abaixo",
                style: TextStyle(
                    fontFamily: "SF UI Display",
                    fontWeight: FontWeight.w500,
                    fontSize: 32,
                    color: Color.fromRGBO(140, 116, 106, 1)),
                textAlign: TextAlign.center,
              ),
              Column(
                children: [
                  TextFormField(
                    controller: copaNameController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.coffee),
                      hintText: 'Iforme um nome sugestivo',
                      labelText: 'Nome da copa',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor digite um nome sugestivo para a copa.';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: administratorEmailController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: 'Informe o seu e-mail',
                      labelText: 'E-mail do administrador',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor digite o e-mail do administrador da copa.';
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    copaService.addCopa(
                      copaNameController.text,
                      administratorEmailController.text,
                    );
                  }
                },
                child: const Text("Criar Copa"),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    textStyle: const TextStyle(
                      fontFamily: "SF UI Display",
                      fontSize: 16,
                    ),
                    primary: Color.fromRGBO(185, 128, 104, 1)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
