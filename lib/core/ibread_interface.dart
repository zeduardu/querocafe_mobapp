import 'package:cloud_firestore/cloud_firestore.dart';

abstract class Ibread<T> {
  Stream<QuerySnapshot> browse();
  Future<T> read(String id);
  Future<void> editOneParameter(String id, String parameter, String value);
  Future<void> editAllParameters(String id, T item);
  Future<DocumentReference> add(T item);
  Future<T> delete(String id);
}
