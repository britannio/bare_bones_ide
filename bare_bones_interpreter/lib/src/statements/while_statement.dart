import 'package:bare_bones_interpreter/src/conditions/bool_condition.dart';
import 'package:bare_bones_interpreter/src/statements/bb_statement.dart';
import 'package:meta/meta.dart';

class WhileStatement extends BBStatement {
  WhileStatement({@required this.statements, @required this.condition});

  final List<BBStatement> statements;
  final BoolCondition condition;
}
