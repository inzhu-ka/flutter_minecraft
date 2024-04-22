import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minecraft',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Minecraft'),
        ),
        body: const Center(
          child: GrayContainer(),
        ),
      ),
    );
  }
}

class GrayContainer extends StatelessWidget {
  const GrayContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 300,
        height: 300,
        color: Colors.grey[300],
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MinecraftHead(),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Minecraft crash',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MinecraftHead extends StatelessWidget {
  const MinecraftHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.green,
        ),
        Positioned(
          top: 20,
          left: 20,
          child: Container(
            width: 20,
            height: 20,
            color: Colors.black,
          ),
        ),
        Positioned(
          top: 20,
          right: 20,
          child: Container(
            width: 20,
            height: 20,
            color: Colors.black,
          ),
        ),
        Positioned(
          bottom: 20,
          child: Container(
            width: 40,
            height: 10,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
