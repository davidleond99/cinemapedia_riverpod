import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  Stream<String> getMessageLoader() {
    const message = <String>[
      'Cargando Películas',
      'Cargando Populares',
      'Comprando Palomitas',
      'En espera',
    ];
    return Stream.periodic(const Duration(milliseconds: 1200), (step) {
      return message[step];
    }).take(message.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Espere por favor'),
          const SizedBox(
            height: 10,
          ),
          const CircularProgressIndicator(
            strokeWidth: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          StreamBuilder(
              stream: getMessageLoader(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return const Text('Cargando');
                return Text(snapshot.data!);
              })
        ],
      ),
    );
  }
}
