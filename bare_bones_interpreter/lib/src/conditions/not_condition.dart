import 'package:bare_bones_interpreter/src/conditions/bool_condition.dart';

class NotCondition extends BoolCondition {
  NotCondition(String variableName, int target) : super(variableName, target);

  static const String keyword = 'not';

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}
