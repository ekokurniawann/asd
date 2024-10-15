import 'package:flutter/material.dart';
import 'dart:developer' as developer;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Note',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TextPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text(
          'Home Page',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Center(
          child: Text('Hello World!'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          developer.log('Floating action button pressed', name: 'FAB Event');
        },
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}

class CenterPage extends StatefulWidget {
  const CenterPage({super.key});

  @override
  State<CenterPage> createState() => _CenterPageState();
}

class _CenterPageState extends State<CenterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Center',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('This text is in the center of the screen'),
              const SizedBox(
                height: 16.0,
              ),
              Container(
                width: 200.0,
                height: 100.0,
                color: Colors.indigo,
                child: const Text(
                  'Text without center',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Container(
                width: 200.0,
                height: 100.0,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Text with center',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SizeboxPage extends StatefulWidget {
  const SizeboxPage({super.key});

  @override
  State<SizeboxPage> createState() => _SizeboxPageState();
}

class _SizeboxPageState extends State<SizeboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SizedBox',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('This text and'),
                  Text('the next text have no distance'),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('This text and'),
                  SizedBox(
                    width: 24.0,
                  ),
                  Text('the next text have no distance'),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.indigo,
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.pink,
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.indigo,
                  ),
                  const SizedBox(
                    width: 24.0,
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.indigo,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextPage extends StatefulWidget {
  const TextPage({super.key});

  @override
  State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Text',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            'Hello Wolrd',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              color: Colors.indigo,
              decoration: TextDecoration.underline,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}

class ExpandedPage extends StatefulWidget {
  const ExpandedPage({super.key});

  @override
  State<ExpandedPage> createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Text',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("The container below don't use expansion"),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}

