import 'package:flutter/material.dart';

class BlocCounterScreen extends StatelessWidget {
  const BlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc counter'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.refresh_rounded))
        ],
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Counter value: 00'),
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
