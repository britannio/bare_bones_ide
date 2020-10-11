import 'package:bare_bones_ide/components/ide/editor.dart';
import 'package:bare_bones_ide/components/ide/output.dart';
import 'package:bare_bones_ide/notifiers/ide_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BareBonesIDE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bare Bones IDE',
      theme: ThemeData(
        primarySwatch: Colors.green,
        backgroundColor: Color(0xFF282d33),
        colorScheme: ColorScheme(
          brightness: Brightness.dark,
          background: Color(0xFF282d33),
          onBackground: Colors.grey.shade300,
          primary: Colors.blueGrey,
          primaryVariant: Colors.blueGrey.shade700,
          surface: Color(0xFF00020c),
          onSurface: Colors.white,
          onPrimary: Colors.white,
          secondary: Color(0xFF50565c),
          secondaryVariant: Color(0xFF282d33),
          onSecondary: Colors.grey.shade300,
          error: Colors.red,
          onError: Colors.white,
        ),
      ),
      home: Window(),
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (c) => IdeNotifier()),
          ],
          child: child,
        );
      },
    );
  }
}

class Window extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFF282d33),
      child: Row(
        children: [
          Expanded(flex: 2, child: Editor()),
          VerticalDivider(width: 1, thickness: 1),
          Expanded(flex: 1, child: Output()),
        ],
      ),
    );
  }
}
