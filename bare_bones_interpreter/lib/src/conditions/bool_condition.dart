import 'package:equatable/equatable.dart';

abstract class BoolCondition with EquatableMixin {
  BoolCondition(this.variableName, this.target);

  final String variableName;
  final int target;
}
