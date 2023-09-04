import 'package:flutter/material.dart';
import 'package:weathe_application/widgets/home.dart';

class prevision_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Prevision weather",
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}
