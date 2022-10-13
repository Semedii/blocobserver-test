import 'package:blocktest/state/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'global_observer.dart';
import 'home_page.dart';

void main() {
  BlocOverrides.runZoned(
    (){
  runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: BlocProvider(
        create: (_) => CounterState(),
        child: MyHomePage(),
      ),
    );
  }
}


