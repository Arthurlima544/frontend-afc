import 'package:awesome_financial_control/models/form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

import 'bloc/login_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  final FocusNode focusNode = FocusNode();
  final FocusNode focusNode2 = FocusNode();

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.minHeight),
              child: BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: AlignmentGeometry.centerLeft,
                        child: Text("Login").h3,
                      ),
                      SizedBox(height: 50),

                      TextField(
                        placeholder: Text('Enter your email'),
                        controller: emailController,
                        onSubmitted: (str) {
                          context.read<LoginBloc>().add(
                            LoginEvent.validate(
                              type: TextFieldType.email,
                              value: emailController.text,
                            ),
                          );
                          FocusScope.of(context).nextFocus();
                        },
                        focusNode: focusNode2,
                      ),
                      SizedBox(height: 10),
                      AnimatedOpacity(
                        duration: Duration(milliseconds: 400),
                        opacity: (state.showError(TextFieldType.email))
                            ? 1.0
                            : 0.0,
                        child: Text(
                          state.emailError ?? '',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.destructive,
                          ),
                        ).textSmall,
                      ),
                      SizedBox(height: 40),
                      TextField(
                        placeholder: Text('Enter your password'),
                        controller: passwordController,
                        obscureText: true,
                        onChanged: (str) {
                          context.read<LoginBloc>().add(
                            LoginEvent.validate(
                              type: TextFieldType.password,
                              value: passwordController.text,
                            ),
                          );
                        },
                        onEditingComplete: () {
                          FocusScope.of(context).unfocus();
                        },
                      ),
                      SizedBox(height: 10),
                      AnimatedOpacity(
                        duration: Duration(milliseconds: 400),
                        opacity: (state.showError(TextFieldType.password))
                            ? 1.0
                            : 0.0,
                        child: Text(
                          state.passwordError ?? '',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.destructive,
                          ),
                        ).textSmall,
                      ),
                      SizedBox(height: 40),
                      SizedBox(height: 40),
                      (state.isSubmitting)
                          ? CircularProgressIndicator(size: 25)
                          : AnimatedSwitcher(
                              duration: const Duration(milliseconds: 200),

                              transitionBuilder:
                                  (Widget child, Animation<double> animation) {
                                    return FadeTransition(
                                      opacity: animation,
                                      child: child,
                                    );
                                  },
                              child: state.isFormValid
                                  ? PrimaryButton(
                                      key: const ValueKey('PrimaryButton'),
                                      onPressed: () {
                                        context.read<LoginBloc>().add(
                                          const LoginEvent.submit(),
                                        );
                                      },
                                      trailing: const Icon(
                                        BootstrapIcons.sendFill,
                                      ),
                                      child: const Text('Send'),
                                    )
                                  : OutlineButton(
                                      key: const ValueKey('OutlineButton'),
                                      trailing: const Icon(
                                        BootstrapIcons.sendFill,
                                      ),
                                      child: const Text('Send'),
                                    ),
                            ),
                    ],
                  ).withPadding(all: 10);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

List<Color> colors = [Colors.red, Colors.green];
