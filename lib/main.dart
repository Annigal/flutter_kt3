import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Static Resources App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontFamily: 'MyFont',
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(fontFamily: 'MyFont', fontSize: 20),
        ),
      ),
      home: const ResourceScreen(),
    );
  }
}

class ResourceScreen extends StatelessWidget {
  const ResourceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Иконки и изображения')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Пример использования изображений:',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Image(image: AssetImage('assets/images/img_1.png'), width: 80),
                Image(image: AssetImage('assets/images/img_2.png'), width: 80),
                Image(image: AssetImage('assets/images/img_3.png'), width: 80),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
