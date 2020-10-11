import 'package:bare_bones_interpreter/src/conditions/bool_condition.dart';
import 'package:bare_bones_interpreter/src/conditions/not_condition.dart';
import 'package:bare_bones_interpreter/src/exceptions/subroutine_not_defined_exception.dart';
import 'package:bare_bones_interpreter/src/exceptions/unrecognised_condition_exception.dart';
import 'package:bare_bones_interpreter/src/exceptions/unrecognised_statement_exception.dart';
import 'package:bare_bones_interpreter/src/exceptions/variable_not_found_exception.dart';
import 'package:bare_bones_interpreter/src/statements/bb_statement.dart';
import 'package:bare_bones_interpreter/src/statements/clear_statement.dart';
import 'package:bare_bones_interpreter/src/statements/decrement_statement.dart';
import 'package:bare_bones_interpreter/src/statements/increment_statement.dart';
import 'package:bare_bones_interpreter/src/statements/subroutine_definition_statement.dart';
import 'package:bare_bones_interpreter/src/statements/subroutine_statement.dart';
import 'package:bare_bones_interpreter/src/statements/while_statement.dart';

class Interpreter {
  Map<String, int> _variables;
  Map<String, List<BBStatement>> _subroutines;

  Map<String, int> interpret(List<BBStatement> statements) {
    _variables = {};
    _subroutines = {};

    evaluateStatements(statements);

    outputVariables();

    return _variables;
  }

  void evaluateStatements(List<BBStatement> statements) =>
      statements.forEach(evaluateStatement);

  void outputVariables() {
    print('┌───────────┐');
    print('│ Variables │');
    print('├─────┬─────┘');
    _variables.forEach((key, value) => print('│ $key=$value │'));
  }

  void evaluateStatement(BBStatement statement) {
    switch (statement.runtimeType) {
      case IncrementStatement:
        _evaluateIncrementStatement(statement);
        break;
      case DecrementStatement:
        _evaluateDecrementStatement(statement);
        break;
      case ClearStatement:
        _evaluateClearStatement(statement);
        break;
      case WhileStatement:
        _evaluateWhileStatement(statement);
        break;
      case SubroutineDefinitionStatement:
        _evaluateSubroutineDefinitionStatement(statement);
        break;
      case SubroutineStatement:
        _evaluateSubroutineStatement(statement);
        break;
      default:
        throw UnrecognisedStatementException();
    }
  }

  bool _evaluateCondition(BoolCondition condition) {
    switch (condition.runtimeType) {
      case NotCondition:
        final value = getVariable(condition.variableName);
        return value != condition.target;
      default:
        throw UnrecognisedConditionException();
    }
  }

  void _evaluateWhileStatement(WhileStatement statement) {
    final condition = statement.condition;

    while (_evaluateCondition(condition)) {
      evaluateStatements(statement.statements);
    }
  }

  void _evaluateIncrementStatement(IncrementStatement statement) {
    print('Incrementing ${statement.variableName}');
    final currentValue = getVariable(statement.variableName);

    if (currentValue == null) {
      throw VariableNotFoundException();
    } else {
      _variables[statement.variableName] = currentValue + 1;
    }

    print('$currentValue -> ${getVariable(statement.variableName)}');
  }

  void _evaluateDecrementStatement(DecrementStatement statement) {
    print('Decrementing ${statement.variableName}');
    final currentValue = getVariable(statement.variableName);

    if (currentValue == null) {
      throw VariableNotFoundException();
    } else {
      _variables[statement.variableName] = currentValue - 1;
    }
  }

  void _evaluateClearStatement(ClearStatement statement) {
    print('Zeroing ${statement.variableName}');
    print('${statement.variableName} -> 0');

    _variables[statement.variableName] = 0;
  }

  void _evaluateSubroutineDefinitionStatement(
      SubroutineDefinitionStatement statement) {
    print('Defining subroutine: ${statement.name}');

    _subroutines[statement.name] = statement.statements;
  }

  void _evaluateSubroutineStatement(SubroutineStatement statement) {
    print('Invoking subroutine: ${statement.name}');

    final statements = _subroutines[statement.name];

    if (statements == null) {
      throw SubroutineNotDefinedException();
    }

    evaluateStatements(statements);
  }

  int getVariable(String name) => _variables[name];
}
