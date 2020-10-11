import 'package:meta/meta.dart';

abstract class VariableOperationMatcher {
  VariableOperationMatcher({
    @required String keyword,
    @required String line,
  }) : _regex = RegExp(keyword + r' (\w)') {
    _matches = _regex.hasMatch(line);
    _variableName = _matches ? _regex.firstMatch(line).group(1) : null;
  }

  bool _matches;
  bool get matches => _matches;

  String _variableName;
  String get variableName => _variableName;
  final RegExp _regex;
}
