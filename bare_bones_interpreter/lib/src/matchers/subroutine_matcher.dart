import 'package:bare_bones_interpreter/src/statements/subroutine_statement.dart';

class SubroutineMatcher {
  SubroutineMatcher(String line) {
    _matches = _regex.hasMatch(line);
    _name = _matches ? _regex.firstMatch(line).group(1) : null;
  }

  final RegExp _regex = RegExp(r'(\w*)\(\);');

  bool get matches => _matches;
  bool _matches;

  String get name => _name;
  String _name;

  SubroutineStatement get statement => SubroutineStatement(name);
}
