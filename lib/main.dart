import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'states/counter_state.dart';
import 'views/counter_view_cubit.dart';
import 'package:flutter_app_bloc/cubits/CounterCubit.dart';
void main() => runApp(CounterApp());
class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => CounterCubit(),
        child: CounterViewCubit(),
      ),
    );
  }
}