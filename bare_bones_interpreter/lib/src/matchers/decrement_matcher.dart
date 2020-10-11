import 'package:bare_bones_interpreter/src/matchers/variable_operation_matcher.dart';
import 'package:bare_bones_interpreter/src/statements/decrement_statement.dart';

class DecrementMatcher extends VariableOperationMatcher {
  DecrementMatcher(String line) : super(keyword: 'decr', line: line);

  DecrementStatement get statement => DecrementStatement(variableName);
}
