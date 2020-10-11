import 'package:bare_bones_interpreter/src/statements/bb_statement.dart';
import 'package:equatable/equatable.dart';

class IncrementStatement extends BBStatement with EquatableMixin {
  IncrementStatement(this.variableName);

  final String variableName;

  @override
  List<Object> get props => [variableName];
}
