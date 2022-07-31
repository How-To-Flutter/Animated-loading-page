// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 227, 227),
      body: Center(
        child: SpinKitDoubleBounce(
          itemBuilder: (context, index) => Image.network(
              fit: BoxFit.cover,
              'https://pbs.twimg.com/media/Eu7e3mQVgAImK2o.png'),
          size: 70,
        ),
      ),
    );

  }
}

