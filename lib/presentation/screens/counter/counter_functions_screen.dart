import 'package:flutter/material.dart';
import 'package:flutter_udemy_mac/presentation/screens/counter/customButtom.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              'Click${clickCounter == 1 ? '' : 's'}',
              //clickCounter == 1 ? 'Click' : 'Clicks',
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        // Envuelve los botones en un Column
        mainAxisAlignment:
            MainAxisAlignment.end, // Alinea los botones en la parte inferior
        children: [
          CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () {
                clickCounter = 0;
                setState(() {});
              }),
          const SizedBox(height: 10),
          CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                if (clickCounter == 0) return;
                clickCounter--;
                setState(() {});
              }),
          const SizedBox(height: 10), // Espacio entre los dos botones
          CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                clickCounter++;
                setState(() {});
              }),
          // FloatingActionButton(
          //   shape: const StadiumBorder(),
          //   onPressed: () {
          //     clickCounter++;
          //     setState(() {});
          //   },
          //   child: const Icon(Icons.plus_one),
          // ),
          // FloatingActionButton(
          //   shape: const StadiumBorder(),
          //   onPressed: () {
          //     //clickCounter > 0 ? clickCounter-- : clickCounter;
          //     if (clickCounter == 0) return;
          //     clickCounter--;
          //     setState(() {});
          //   },
          //   child: const Icon(Icons
          //       .exposure_minus_1_outlined), // Reemplaza "second_icon" con el icono que desees
          // ),
        ],
      ),
    );
  }
}

