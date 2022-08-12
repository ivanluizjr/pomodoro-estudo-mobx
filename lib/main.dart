import 'package:flutter/material.dart';
import 'package:relogio_pomodoro_mobx/controller/pomodoro_store.dart';
import 'package:relogio_pomodoro_mobx/pages/pomodoro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(
          create: (_) => PomodoroStore(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const PomodoroPage(),
      ),
    );
  }
}
