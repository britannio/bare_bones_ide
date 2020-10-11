import 'package:bare_bones_interpreter/src/conditions/bool_condition.dart';
import 'package:bare_bones_interpreter/src/conditions/not_condition.dart';

class WhileMatcher {
  WhileMatcher(String line) {
    _matchesStart = _regex.hasMatch(line);
    _matchesEnd = RegExp('end;').hasMatch(line);
    _condition = _conditionFromLine(line);
  }

  final RegExp _regex = RegExp(r'while (\w) (\w*) (\d) do;');

  bool get matchesStart => _matchesStart;
  bool _matchesStart;

  bool get matchesEnd => _matchesEnd;
  bool _matchesEnd;

  BoolCondition get condition => _condition;
  BoolCondition _condition;

  BoolCondition _conditionFromLine(String line) {
    if (!_regex.hasMatch(line)) return null;

    final match = _regex.firstMatch(line);
    final variableName = match.group(1);
    final condition = match.group(2);
    final target = int.tryParse(match.group(3));

    switch (condition) {
      case NotCondition.keyword:
        return NotCondition(variableName, target);
      default:
        return null;
    }
  }
}
