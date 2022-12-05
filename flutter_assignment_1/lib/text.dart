import 'package:flutter/material.dart';

class NewText extends StatelessWidget {
  const NewText({
    Key key,
    @required String pri,
  })  : _pri = pri,
        super(key: key);

  final String _pri;

  @override
  Widget build(BuildContext context) {
    return Text(
      _pri,
      style: TextStyle(fontSize: 30),
    );
  }
}
