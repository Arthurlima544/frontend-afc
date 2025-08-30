import 'package:awesome_financial_control/pages/home.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart'
    show ShadcnApp, runApp, ColorSchemes, ThemeData;

void main() {
  runApp(
    ShadcnApp(
      title: 'My App',
      home: HomePage(),
      theme: ThemeData(colorScheme: ColorSchemes.darkViolet, radius: 0.5),
    ),
  );
}
