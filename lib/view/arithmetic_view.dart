import 'package:flutter/material.dart';
import 'package:nav/routes/app_route.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  final key = GlobalKey<FormState>();
  final firstController = TextEditingController();
  final secondController = TextEditingController();

  add() {
    int first = int.parse(firstController.text);
    int second = int.parse(secondController.text);

    int result = first + second;

    Navigator.of(context).pushNamed(AppRoute.outputRoute, arguments: result);
  }

  sub(){
    int first = int.parse(firstController.text);
    int second = int.parse(secondController.text);

    int result = first - second;

    Navigator.of(context).pushNamed(AppRoute.outputRoute, arguments: result);
  }

  multiplication(){
    int first = int.parse(firstController.text);
    int second = int.parse(secondController.text);

    int result = first * second;

    Navigator.of(context).pushNamed(AppRoute.outputRoute, arguments: result);

  }

  division(){
    int first = int.parse(firstController.text);
    int second = int.parse(secondController.text);

    final result = first / second;

    Navigator.of(context).pushNamed(AppRoute.outputRoute, arguments: result);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Arithmetic'),
      ),

      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Form(
            key: key,
            child: Column(
              children: [
                TextFormField(
                  controller: firstController,
                  decoration: const InputDecoration(
                    labelText: 'First Number',
                  ),
                ),
                TextFormField(
                  controller: secondController,
                  decoration: const InputDecoration(
                    labelText: 'Second Number',
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        add();
                      }
                    },
                    child: const Text('Addition'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (key.currentState!.validate()){
                        sub();
                      }
                    },
                    child: const Text('Subtraction'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (key.currentState!.validate()){
                        multiplication();
                      }
                    },
                    child: const Text('Multiplication'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (key.currentState!.validate()){
                        division();
                      }
                    },
                    child: const Text('Division'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}