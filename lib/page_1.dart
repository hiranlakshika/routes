import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key, this.title}) : super(key: key);
  final title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: IconButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
          },
          icon: Icon(Icons.home),
        ),
      ),
    );
  }
}
