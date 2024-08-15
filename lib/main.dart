import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            'Flutter 3D',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   'Damaged Helmet',
                //   style: Theme.of(context).textTheme.headlineLarge,
                // ),
                SizedBox(
                  height: 400,
                  width: double.maxFinite,
                  child: Flutter3DViewer(
                    src: 'assets/3d/bmw_car.glb',
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
