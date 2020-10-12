import 'package:bare_bones_ide/unions/editing_union.dart';
import 'package:bare_bones_ide/unions/output_union.dart';
import 'package:bare_bones_interpreter/bare_bones_interpreter.dart';
import 'package:flutter/material.dart';

class IdeNotifier extends ChangeNotifier {
  final _parser = Parser();
  final _interpreter = Interpreter();

  String _script = defaultScript;
  set script(String script) => _script = script;

  Map<String, int> _outputVariables;
  String _error;

  EditingUnion get editingUnion =>
      _script != null ? EditingUnion.script(_script) : EditingUnion.noScript();

  OutputUnion get outputUnion => _outputVariables != null
      ? OutputUnion.output(_outputVariables)
      : _error != null
          ? OutputUnion.error(_error)
          : OutputUnion.noOutput();

  void runScript() {
    try {
      final statements = _parser.parse(_script);
      final variables = _interpreter.interpret(statements);
      _outputVariables = variables;
    } catch (e) {
      _outputVariables = null;
      _error = e.toString();
      print(e);
    }

    notifyListeners();
  }
}

const defaultScript = '''
// Multiplies X by Y and stores the result in Z
multiplyXY() do;
    clear Z;
    while X not 0 do;
        clear W;
        while Y not 0 do;
            incr Z;
            incr W;
            decr Y;
        end;
        while W not 0 do;
            incr Y;
            decr W;
        end;
        decr X;
    end;
    clear Y;
end;

// Sets X to 3
clear X;
incr X;
incr X;
incr X;

// Sets Y to 4
clear Y;
incr Y;
incr Y;
incr Y;
incr Y;

multiplyXY();

''';
