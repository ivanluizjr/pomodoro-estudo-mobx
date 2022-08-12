import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:relogio_pomodoro_mobx/components/cronometro.dart';
import 'package:relogio_pomodoro_mobx/components/entrada_tempo.dart';
import 'package:relogio_pomodoro_mobx/controller/pomodoro_store.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(child: Cronometro()),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Observer(
                builder: (context) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    EntradaTempo(
                      titulo: 'Trabalho',
                      valor: store.tempoTrabalho,
                      increment: store.incrementTempoTrabalho,
                      decrement: store.decrementTempoTrabalho,
                    ),
                    EntradaTempo(
                      titulo: 'Descanso',
                      valor: store.tempoDescanso,
                      increment: store.incrementTempoDescanso,
                      decrement: store.decrementTempoDescanso,
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
