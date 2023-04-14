import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/injector/inject.dart';
import 'package:flutter_application_1/features/home/presentation/ui/view.dart';

void main() {
  Injector.inject();

  
  runApp(
    const MaterialApp(
      home: View(),
    ),
  );
}
