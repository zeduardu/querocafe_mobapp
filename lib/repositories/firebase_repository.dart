// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:querocafe_mobapp/core/ibread_interface.dart';
import 'package:querocafe_mobapp/core/model_models.dart';

class FirebaseRepository<T extends ModelModels> implements Ibread<T> {
  late CollectionReference collection;

  FirebaseRepository({required String path}) {
    collection = FirebaseFirestore.instance.collection(path);
  }

  @override
  Stream<QuerySnapshot<Object?>> browse() {
    // TODO: implement browse
    throw UnimplementedError();
  }

  @override
  Future<T> read(String id) {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  Future<void> editOneParameter(String id, String parameter, String value) {
    return collection.doc(id).set({parameter: value});
  }

  @override
  Future<void> editAllParameters(String id, T item) {
    return collection.doc(id).set(item.toMap());
  }

  @override
  Future<DocumentReference> add(T item) {
    return collection.add(item.toMap());
  }

  @override
  Future<T> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
