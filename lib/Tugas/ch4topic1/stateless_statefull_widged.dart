import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StatelessStatefullWidged extends StatefulWidget {
  const StatelessStatefullWidged({super.key});

  @override
  State<StatelessStatefullWidged> createState() =>
      _StatelessStatefullWidgedState();
}

class _StatelessStatefullWidgedState extends State<StatelessStatefullWidged> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Binar - stateless statefull"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: const [
              Text("Show text stateless"),
              SizedBox(
                height: 30,
              ),
              ChangeTextWidged(),
            ],
          ),
        ),
      ),
    );
  }
}

class ChangeTextWidged extends StatefulWidget {
  const ChangeTextWidged({super.key});

  @override
  State<ChangeTextWidged> createState() => _ChangeTextWidgedState();
}

class _ChangeTextWidgedState extends State<ChangeTextWidged> {
  String text = "Binar";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$text - Statefull",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 12,
        ),
        ElevatedButton(
          onPressed: () {
            String newText = DateTime.now().toIso8601String();
            setState(() {
              text = newText;
            });
          },
          child: const Text("Change Text"),
        ),
      ],
    );
  }
}
