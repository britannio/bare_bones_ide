import 'package:bare_bones_interpreter/src/statements/bb_statement.dart';
import 'package:equatable/equatable.dart';

class ClearStatement extends BBStatement with EquatableMixin {
  ClearStatement(this.variableName);

  final String variableName;

  @override
  List<Object> get props => [variableName];
}
