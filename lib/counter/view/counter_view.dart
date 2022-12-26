import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_bloc/counter/counter.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) => Text(
            '$state',
            textAlign: TextAlign.center,
            style: textTheme.headline2,
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            key: const Key('counterView_reset_floatingActionButton'),
            tooltip: 'Reset',
            onPressed: () => context.read<CounterCubit>().reset(),
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            tooltip: 'Increment',
            onPressed: () => context.read<CounterCubit>().increment(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('counterView_decrement_floatingActionButton'),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CounterCubit>().decrement(),
          ),
        ],
      ),
    );
  }
}
