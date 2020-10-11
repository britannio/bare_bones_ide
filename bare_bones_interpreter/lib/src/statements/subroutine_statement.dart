import 'package:bare_bones_interpreter/src/statements/bb_statement.dart';
import 'package:equatable/equatable.dart';

class SubroutineStatement extends BBStatement with EquatableMixin {
  SubroutineStatement(this.name);

  final String name;

  @override
  List<Object> get props => [name];
}
