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
            CustomFAB(
              icon: Icons.refresh,
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFAB(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFAB(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                setState(() {
                  clickCounter--;
                });
              },
            ),
          ],
        ));
  }
}

class CustomFAB extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CustomFAB({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: () {
        onPressed();
      },
      child: Icon(icon),
    );
  }
}
