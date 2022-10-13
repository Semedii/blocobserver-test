import 'package:bloc/bloc.dart';

class CounterState extends Cubit<int>{
  CounterState(): super(0);
  
  void increment() => emit(state+1);
}