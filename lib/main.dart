import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_single_statemanagement_ex_one/provider_homepage.dart';

import 'countProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<countp>(
      create: (_) => countp(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: providerhomepage(),
      ),
    );
  }

}

