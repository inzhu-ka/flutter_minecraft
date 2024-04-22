import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
    return Container(
      width: 400,
      height: 400,
      color: Colors.grey[300],
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MinecraftHead(),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text(
              'Minecraft crash',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
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
