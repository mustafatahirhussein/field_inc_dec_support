//Copyright 2021. All rights reserved

import 'package:flutter/material.dart';
import 'package:field_inc_dec_support/field_inc_dec_support.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example of Package"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              "Total Qty of product",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
            ),

            FieldIncDecSupport(
              elevation: 2,
              backColor: Theme.of(context).primaryColor,
              value: 0,
              maxLimit: 99,
              borderRadius: 12,
            ),
          ],
        ),
      ),
    );
  }
}
