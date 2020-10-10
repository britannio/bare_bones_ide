import 'package:bare_bones_ide/components/toolbar.dart';
import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Toolbar(
          child: Text('EDITOR', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
