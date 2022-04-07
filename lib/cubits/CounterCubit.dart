import 'package:bloc/bloc.dart';
import 'package:flutter_app_bloc/states/counter_state.dart';
/// {@template counter_cubit}
/// A [Cubit] which manages an [int] as its state.
/// {@endtemplate}
class CounterCubit extends Cubit<CounterState> {
  /// {@macro counter_cubit}
  CounterCubit () : super(CounterInitial(0));


  /// Add 1 to the current state.
  void increment() => emit(CounterInitial(state.counter + 1));

  /// Subtract 1 from the current state.
  void decrement() => emit(CounterInitial(state.counter - 1));
}