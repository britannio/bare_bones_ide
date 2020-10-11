import 'package:bare_bones_interpreter/src/statements/bb_statement.dart';
import 'package:equatable/equatable.dart';

class SubroutineDefinitionStatement extends BBStatement with EquatableMixin {
  SubroutineDefinitionStatement(this.name, this.statements);

  final List<BBStatement> statements;
  final String name;

  @override
  List<Object> get props => [statements, name];
}
