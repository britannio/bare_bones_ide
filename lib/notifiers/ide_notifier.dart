import 'package:bare_bones_ide/unions/editing_union.dart';
import 'package:bare_bones_ide/unions/output_union.dart';
import 'package:flutter/material.dart';

class IdeNotifier extends ChangeNotifier {
  String script = '';
  Map<String, int> outputVariables;

  EditingUnion get editingUnion =>
      script != null ? EditingUnion.script(script) : EditingUnion.noScript();

  OutputUnion get outputUnion => outputVariables != null
      ? OutputUnion.output(outputVariables)
      : OutputUnion.noOutput();

  void openScript() {}
}
