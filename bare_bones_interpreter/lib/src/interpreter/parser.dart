import 'dart:collection';

import 'package:bare_bones_interpreter/src/conditions/bool_condition.dart';
import 'package:bare_bones_interpreter/src/matchers/clear_matcher.dart';
import 'package:bare_bones_interpreter/src/matchers/decrement_matcher.dart';
import 'package:bare_bones_interpreter/src/matchers/increment_matcher.dart';
import 'package:bare_bones_interpreter/src/matchers/subroutine_definition_matcher.dart';
import 'package:bare_bones_interpreter/src/matchers/subroutine_matcher.dart';
import 'package:bare_bones_interpreter/src/matchers/while_matcher.dart';
import 'package:bare_bones_interpreter/src/statements/bb_statement.dart';
import 'package:bare_bones_interpreter/src/statements/subroutine_definition_statement.dart';
import 'package:bare_bones_interpreter/src/statements/while_statement.dart';

class Parser {
  List<BBStatement> parse(String script) {
    var rawScript = '$script';

    rawScript = _removeComments(rawScript);

    var scriptLines = rawScript.split('\n');

    scriptLines = _removeEmptyLines(scriptLines);
    scriptLines = _removeLeadingWhitespace(scriptLines);

    final iterator = HasNextIterator(scriptLines.iterator);

    return _parseLines(iterator);
  }

  String _removeComments(String script) =>
      script.replaceAll(RegExp(r'(\/\*[^*/]*\*\/)|(\/\/.*)'), '');

  List<String> _removeEmptyLines(List<String> scriptLines) =>
      [...scriptLines]..removeWhere((element) => element.trim().isEmpty);

  List<String> _removeLeadingWhitespace(List<String> scriptLines) =>
      scriptLines.map((e) => e.trim()).toList();

  List<BBStatement> _parseLines(HasNextIterator<String> iterator) {
    final statements = <BBStatement>[];

    while (iterator.hasNext) {
      final line = iterator.next();

      statements.add(_parseLine(line, iterator));
    }

    return statements;
  }

  BBStatement _parseLine(String line, HasNextIterator<String> iterator) {
    final incrementMatcher = IncrementMatcher(line);
    final decrementMatcher = DecrementMatcher(line);
    final clearMatcher = ClearMatcher(line);
    final whileMatcher = WhileMatcher(line);
    final subroutineDefinitionMatcher = SubroutineDefinitionMatcher(line);
    final subroutineMatcher = SubroutineMatcher(line);

    if (clearMatcher.matches) {
      return clearMatcher.statement;
    } else if (incrementMatcher.matches) {
      return incrementMatcher.statement;
    } else if (decrementMatcher.matches) {
      return decrementMatcher.statement;
    } else if (whileMatcher.matchesStart) {
      return _parseWhileLoop(whileMatcher.condition, iterator);
    } else if (subroutineDefinitionMatcher.matchesStart) {
      return _parseSubroutine(subroutineDefinitionMatcher.name, iterator);
    } else if (subroutineMatcher.matches) {
      return subroutineMatcher.statement;
    } else {
      throw null;
    }
  }

  WhileStatement _parseWhileLoop(
      BoolCondition condition, HasNextIterator<String> iterator) {
    final statements = <BBStatement>[];

    while (iterator.hasNext) {
      final line = iterator.next();
      final whileMatcher = WhileMatcher(line);

      if (whileMatcher.matchesEnd) {
        break;
      } else {
        statements.add(_parseLine(line, iterator));
      }
    }
    return WhileStatement(statements: statements, condition: condition);
  }

  SubroutineDefinitionStatement _parseSubroutine(
      String name, HasNextIterator<String> iterator) {
    final statements = <BBStatement>[];

    while (iterator.hasNext) {
      final line = iterator.next();
      final matcher = SubroutineDefinitionMatcher(line);

      if (matcher.matchesEnd) {
        break;
      } else {
        statements.add(_parseLine(line, iterator));
      }
    }

    return SubroutineDefinitionStatement(name, statements);
  }
}
