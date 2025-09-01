import 'package:awesome_financial_control/pages/login/bloc/login_bloc.dart';
import 'package:awesome_financial_control/pages/login/login.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../pages/register/bloc/register_bloc.dart';
import '../../pages/register/register.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: <RouteBase>[
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
          create: (context) => LoginBloc(),
          child: LoginPage(),
        );
      },
    ),
    GoRoute(
      path: '/register',
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
          create: (context) => RegisterBloc(),
          child: RegisterPage(),
        );
      },
    ),
  ],
);
