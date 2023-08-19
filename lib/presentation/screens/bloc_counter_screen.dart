import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/counter_bloc/counter_bloc.dart';

class BlocCounterScreen extends StatelessWidget {
  const BlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: const BlocCounterView(),
    );
  }
}

class BlocCounterView extends StatelessWidget {
  const BlocCounterView({
    super.key,
  });

  void increseCounterBy(BuildContext context, [int value = 1]) {
    //context.read<CounterBloc>().add(CounterIncreased(value));//Primera opcion de llamado
    context.read<CounterBloc>().increaseBy(value);//Segunda opcion de llamado
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.select((CounterBloc counterBloc) =>
            Text('Bloc Counter ${counterBloc.state.transactionCount}')),
        actions: [
          IconButton(
              onPressed: () {
                context.read<CounterBloc>().add(CounterReset());//Primera forma de llamado
                //context.read<CounterBloc>().resetCounter();

              },
              icon: const Icon(Icons.refresh_rounded))
        ],
        centerTitle: true,
      ),
      body: Center(
          child: context.select(
        (CounterBloc counterBloc) =>
            Text('Counter value: ${counterBloc.state.counter}'),
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              increseCounterBy(context, 3);
            },
            heroTag: 1, //esto es para poner el animacion pro defecto
            child: const Text('+3'),
          ),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            onPressed: () {
              increseCounterBy(context, 2);
            },
            heroTag: 2, //esto es para poner el animacion pro defecto
            child: const Text('+2'),
          ),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            onPressed: () {
              increseCounterBy(context);
            },
            heroTag: 3, //esto es para poner el animacion pro defecto
            child: const Text('+3'),
          )
        ],
      ),
    );
  }
}
