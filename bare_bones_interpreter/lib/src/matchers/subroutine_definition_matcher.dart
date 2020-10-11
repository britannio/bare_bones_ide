class SubroutineDefinitionMatcher {
  SubroutineDefinitionMatcher(String line) {
    _matchesStart = _regex.hasMatch(line);
    _matchesEnd = RegExp('end;').hasMatch(line);
    _name = _matchesStart ? _regex.firstMatch(line).group(1) : null;
  }

  final RegExp _regex = RegExp(r'(\w*)\(\) do;');

  bool get matchesStart => _matchesStart;
  bool _matchesStart;

  bool get matchesEnd => _matchesEnd;
  bool _matchesEnd;

  String get name => _name;
  String _name;
}
