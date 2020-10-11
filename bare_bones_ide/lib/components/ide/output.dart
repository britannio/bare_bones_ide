import 'package:bare_bones_ide/components/toolbar.dart';
import 'package:bare_bones_ide/notifiers/ide_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Output extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ideNotifier = context.watch<IdeNotifier>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Toolbar(
          child: Text('OUTPUT', style: TextStyle(color: Colors.white)),
        ),
        Expanded(
          child: ideNotifier.outputUnion.when(
            noOutput: () => _OutputPlaceholder(),
            output: (variables) => _VariablesList(variables: variables),
            error: (error) => Text(error),
          ),
        ),
      ],
    );
  }
}

class _OutputPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _VariablesList extends StatelessWidget {
  const _VariablesList({Key key, @required this.variables}) : super(key: key);
  final Map variables;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (final variable in variables.entries)
            Text('${variable.key}=${variable.value}'),
        ],
      ),
    );
  }
}
