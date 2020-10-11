import 'package:bare_bones_interpreter/src/matchers/variable_operation_matcher.dart';
import 'package:bare_bones_interpreter/src/statements/increment_statement.dart';

class IncrementMatcher extends VariableOperationMatcher {
  IncrementMatcher(String line) : super(keyword: 'incr', line: line);

  IncrementStatement get statement => IncrementStatement(variableName);
}
