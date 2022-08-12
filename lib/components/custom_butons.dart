import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:relogio_pomodoro_mobx/controller/pomodoro_store.dart';

class CustomButtons extends StatelessWidget {
  final Widget? child;
  final Function() onpressed;
  final ButtonStyle? style;

  const CustomButtons(
      {Key? key, required this.child, required this.onpressed, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return ElevatedButton(
      onPressed: onpressed,
      child: child,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(15),
        primary: store.estaTrabalhando() ? Colors.red : Colors.green,
      ),
    );
  }
}
