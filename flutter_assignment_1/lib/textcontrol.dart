import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function _selectText;

  const TextControl({
    Key key,
    @required Function selectText,
  })  : _selectText = selectText,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _selectText,
      child: const Text('Change'),
    );
  }
}
