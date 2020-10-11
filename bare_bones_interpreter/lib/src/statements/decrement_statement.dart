import 'package:bare_bones_interpreter/src/statements/bb_statement.dart';
import 'package:equatable/equatable.dart';

class DecrementStatement extends BBStatement with EquatableMixin {
  DecrementStatement(this.variableName);

  final String variableName;

  @override
  List<Object> get props => [variableName];
}
