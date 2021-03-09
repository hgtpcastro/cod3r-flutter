import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  AdaptativeButton({this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(this.label),
            onPressed: this.onPressed,
          )
        : RaisedButton(
            color: Theme.of(context).primaryColor,
            textColor: Theme.of(context).textTheme.button.color,
            child: Text(this.label),
            onPressed: this.onPressed,
          );
  }
}