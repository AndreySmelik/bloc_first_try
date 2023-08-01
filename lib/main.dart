import 'package:bloc_first_try/count_event.dart';
import 'package:bloc_first_try/count_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'count_bloc.dart';

void main() {
  runApp(BlocProvider<CountBloc>(
      create: (context) => CountBloc(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              context.read<CountBloc>().add(IncCountEvent());
            },
            icon: const Icon(Icons.plus_one),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.exposure_minus_1),
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<CountBloc, CountState>(
          builder: (context, state) {
            return Text(state.aa(), style: TextStyle(fontSize: 33));
          },
        ),
      ),
    );
  }
}
