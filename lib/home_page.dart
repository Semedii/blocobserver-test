import 'package:blocktest/state/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              context.read<CounterState>().increment();
            }, child: Text('click here')),
            Text('data from cubit'),
            BlocBuilder<CounterState, int>(
              builder: (context, state) {
               return Text(state.toString());
              },
            )
          ],
        ),
      ),
    );
  }
}