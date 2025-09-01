import 'package:awesome_financial_control/pages/register/bloc/register_bloc.dart';
import 'package:awesome_financial_control/pages/register/register.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart'
    show ShadcnApp, runApp, ColorSchemes, ThemeData;

void main() async {
  await dotenv.load(fileName: ".env");

  runApp(
    ShadcnApp(
      debugShowCheckedModeBanner: dotenv.env['FLUTTER_ENV'] == 'development'
          ? true
          : false,
      title: 'My App',
      home: BlocProvider(
        create: (context) => RegisterBloc(),
        child: RegisterPage(),
      ),
      theme: ThemeData(colorScheme: ColorSchemes.darkViolet, radius: 0.5),
    ),
  );
}
