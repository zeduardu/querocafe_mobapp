// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:querocafe_mobapp/core/model_models.dart';

class CopaModel extends ModelModels {
  String name;
  String emailAdministrator;
  String qrCode;
  DateTime creationalDate;

  CopaModel({
    required this.name,
    required this.emailAdministrator,
    required this.qrCode,
    required this.creationalDate,
  });

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'emailAdministrator': emailAdministrator,
      'qrCode': qrCode,
      'creationalDate': creationalDate.millisecondsSinceEpoch,
    };
  }

  @override
  String toJson() => json.encode(toMap());

  @override
  bool checkIfAnyIsNull() {
    return [name, emailAdministrator, qrCode, creationalDate].contains(null);
  }

  factory CopaModel.fromMap(Map<String, dynamic> map) {
    return CopaModel(
      name: map['name'] as String,
      emailAdministrator: map['emailAdministrator'] as String,
      qrCode: map['qrCode'] as String,
      creationalDate: DateTime.fromMillisecondsSinceEpoch(map['creationalDate'] as int),
    );
  }

  factory CopaModel.fromJson(String source) => CopaModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
