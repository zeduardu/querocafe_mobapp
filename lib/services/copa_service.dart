import 'package:querocafe_mobapp/repositories/firebase_repository.dart';
import 'package:querocafe_mobapp/models/copa_model.dart';

class CopaService {
  FirebaseRepository firebaseRepository = FirebaseRepository<CopaModel>(path: "copas");

  bool addCopa(String copaName, String administratorEmail) {
    bool added = true;
    CopaModel copaModel = CopaModel(
      name: copaName,
      emailAdministrator: administratorEmail,
      qrCode: "qrCode",
      creationalDate: DateTime.now(),
    );
    firebaseRepository
        .add(copaModel)
        .then((value) => {
              copaModel.qrCode = value.id,
              firebaseRepository.editAllParameters(value.id, copaModel),
            })
        .onError((error, stackTrace) => {
              added = false,
            });

    return added;
  }
}
