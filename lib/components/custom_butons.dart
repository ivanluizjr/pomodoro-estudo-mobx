import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  final Widget? child;
  const CustomButtons({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: child,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(15),
        primary: Colors.red,
      ),
    );
  }
}
