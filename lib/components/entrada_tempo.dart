import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:relogio_pomodoro_mobx/components/custom_butons.dart';
import 'package:relogio_pomodoro_mobx/controller/pomodoro_store.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final Function()? increment;
  final Function()? decrement;

  const EntradaTempo({
    Key? key,
    required this.titulo,
    required this.valor,
    this.decrement,
    required this.increment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          this.titulo,
          style: const TextStyle(fontSize: 25),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButtons(
              child: const Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
              onpressed: decrement!,
            ),
            Text(
              '${this.valor} min',
              style: const TextStyle(fontSize: 18),
            ),
            CustomButtons(
              child: const Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
              onpressed: increment!,
            )
          ],
        ),
      ],
    );
  }
}
