// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'loadingpage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isloading = false;

  @override
  Widget build(BuildContext context) => _isloading
      ? LoadingPage()
      : Scaffold(
          body: Center(
              child: ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      _isloading = true;
                    });
                    await Future.delayed(const Duration(seconds: 5));
                    setState(() {
                      _isloading = false;
                    });
                  },
                  child: Text(
                    'Load',
                  ))));
}
