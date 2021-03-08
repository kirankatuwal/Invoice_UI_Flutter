import 'package:billingsystem/constants.dart';
import 'package:billingsystem/screens/invoice/invoice.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Invoice',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme: GoogleFonts.averiaLibreTextTheme()
                .apply(bodyColor: Colors.white, displayColor: iPrimaryColor)),
        home: Scaffold(
          backgroundColor: iPrimaryColor,
          body: Invoice(),
        ));
  }
}
