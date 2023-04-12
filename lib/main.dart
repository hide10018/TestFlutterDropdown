import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hookstestproject/stateful.dart';

void main() {
  runApp( const ProviderScope(child: MyApp())//riverpodを使うために必要
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TestStateful(),
    );
  }
}
