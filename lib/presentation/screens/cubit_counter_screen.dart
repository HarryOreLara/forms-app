import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/cubit/counter_cubit.dart';

class CubitsSounterScreen extends StatelessWidget {
  const CubitsSounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => CounterCubit(), child: const _CubitCounterView());
  }
}

class _CubitCounterView extends StatelessWidget {
  const _CubitCounterView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final counteState = context.watch<CounterCubit>().state;

    return Scaffold(
      appBar: AppBar(
        title: Text('Cubit counter: ${counteState.transactionCount}'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh_rounded))
        ],
        centerTitle: true,
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          //buildWhen: (previous, current) => current.counter != previous.counter,
          builder: (context, state) {
            return Text('Counter value:${state.counter}');
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            heroTag: 1, //esto es para poner el animacion pro defecto
            child: const Text('+3'),
          ),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            onPressed: () {},
            heroTag: 2, //esto es para poner el animacion pro defecto
            child: const Text('+3'),
          ),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            onPressed: () {},
            heroTag: 3, //esto es para poner el animacion pro defecto
            child: const Text('+3'),
          )
        ],
      ),
    );
  }
}
