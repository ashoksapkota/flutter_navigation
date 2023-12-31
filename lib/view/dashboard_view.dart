import 'package:flutter/material.dart';
import 'package:nav/routes/app_route.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoute.arithmeticRoute );
                  },
                  child: const Text('Arithmetic'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
