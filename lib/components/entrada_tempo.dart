import 'package:flutter/material.dart';
import 'package:relogio_pomodoro_mobx/components/custom_butons.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;

  const EntradaTempo({
    Key? key,
    required this.titulo,
    required this.valor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            const CustomButtons(
              child: Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
            ),
            Text(
              '${this.valor} min',
              style: const TextStyle(fontSize: 18),
            ),
            const CustomButtons(
              child: Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
            )
          ],
        ),
      ],
    );
  }
}
