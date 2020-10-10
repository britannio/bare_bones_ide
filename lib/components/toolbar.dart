import 'package:flutter/material.dart';

class Toolbar extends StatelessWidget {
  const Toolbar({Key key, @required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 8),
        child: child,
      ),
      elevation: 8,
    );
  }
}
