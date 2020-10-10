import 'package:bare_bones_ide/components/toolbar.dart';
import 'package:flutter/material.dart';

class Output extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Toolbar(
          child: Text('OUTPUT', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
