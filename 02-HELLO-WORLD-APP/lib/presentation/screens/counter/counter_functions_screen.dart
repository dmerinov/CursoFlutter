import "package:flutter/material.dart";

class CounterFuncitonsScreen extends StatefulWidget {
  const CounterFuncitonsScreen({super.key});

  @override
  State<CounterFuncitonsScreen> createState() => _CounterFuncitonsScreenState();
}

class _CounterFuncitonsScreenState extends State<CounterFuncitonsScreen> {
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
                }),
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
                (clickCounter <= 1 ? 'Click' : 'Clicks'),
                style: const TextStyle(fontSize: 25),
              )
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                clickCounter++;
                //needed to update the counter.
                setState(() {});
              },
              child: const Icon(Icons.plus_one),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                clickCounter--;
                //needed to update the counter.
                setState(() {});
              },
              child: const Icon(Icons.exposure_minus_1_outlined),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                clickCounter--;
                //needed to update the counter.
                setState(() {});
              },
              child: const Icon(Icons.exposure_minus_1_outlined),
            )
          ],
        ));
  }
}
