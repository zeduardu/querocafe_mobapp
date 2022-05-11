import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class ModelModels {
  ModelModels();

  Map<String, dynamic> toMap() {
    // TODO: implement toMap
    throw UnimplementedError();
  }

  factory ModelModels.fromMap(Map<String, dynamic> map) {
    // TODO: implement fromMap
    throw UnimplementedError();
  }

  String toJson() => json.encode(toMap());

  factory ModelModels.fromJson(String source) => ModelModels.fromMap(json.decode(source) as Map<String, dynamic>);

  bool checkIfAnyIsNull();
}
