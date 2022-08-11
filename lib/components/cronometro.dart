import 'package:flutter/material.dart';
import 'package:relogio_pomodoro_mobx/components/cronometro_botao.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Hora de Trabalhar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            '25:00',
            style: TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: CronometroBotao(
                  text: 'Iniciar',
                  icon: Icons.play_arrow,
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.only(right: 10),
              //   child: CronometroBotao(
              //     text: 'Parar',s
              //     icon: Icons.stop,
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: CronometroBotao(
                  text: 'Reiniciar',
                  icon: Icons.refresh,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
