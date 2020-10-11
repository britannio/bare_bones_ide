import 'package:bare_bones_interpreter/src/matchers/variable_operation_matcher.dart';
import 'package:bare_bones_interpreter/src/statements/clear_statement.dart';

class ClearMatcher extends VariableOperationMatcher {
  ClearMatcher(String line) : super(keyword: 'clear', line: line);

  ClearStatement get statement => ClearStatement(variableName);
}
