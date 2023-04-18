// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:sigif2/components/custom_button.dart';
import 'package:sigif2/theme/Palette.dart';
import 'package:sigif2/theme/app_fonts.dart';
import 'package:sigif2/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SIGIF2',
      // theme: AppTheme.theme,
      home: Components(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 3,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Components extends StatelessWidget {
  const Components({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SIGIF2"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                  title: "Petit bouton",
                  onTap: () {
                    print("Petit bouton");
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  title: "Bouton moyen",
                  onTap: () {
                    print("Bouton moyen");
                  },
                  height: 50,
                  borderRadius: 12,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  title: "Grand bouton",
                  onTap: () {
                    print("Grand bouton");
                  },
                  height: 60,
                  borderRadius: 15,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  title: "Text",
                  onTap: () {
                    print("Text");
                  },
                  textColor: Palette.blackColor,
                  backgroundColor: Colors.white,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  title: "Bordure",
                  onTap: () {
                    print("Bordure");
                  },
                  bordered: true,
                  textColor: Palette.blackColor,
                  backgroundColor: Colors.white,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  title: "Petit bouton",
                  onTap: () {
                    print("Petit bouton");
                  },
                  opacity: 0.7,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  title: "Bouton rouge",
                  textColor: Palette.errorRedColor,
                  backgroundColor: Colors.white,
                  bordered: true,
                  borderColor: Palette.errorRedColor,
                  onTap: () {
                    print("Bouton rouge");
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  title: "Bouton rouge",
                  backgroundColor: Palette.errorRedColor,
                  circularIndicator: true,
                  onTap: () {
                    print("Bouton rouge");
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
              ]),
        ),
      ),
    );
  }
}
