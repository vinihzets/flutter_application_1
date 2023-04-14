import 'package:flutter_application_1/features/home/domain/entities/entity.dart';

class Dto extends Entity {
  Dto(super.object);

  factory Dto.fromJson(Map map) {
    return Dto(map['object']);
  }

  toMap() {
    return {
      'object': object,
    };
  }
}
