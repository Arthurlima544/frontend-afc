import 'package:awesome_financial_control/models/form.dart';
import 'package:awesome_financial_control/pages/register/bloc/register_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late final TextEditingController nameController;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final TextEditingController repeatPasswordController;
  final FocusNode focusNode = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();
  final FocusNode focusNode4 = FocusNode();

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    repeatPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    repeatPasswordController.dispose();
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
              child: BlocBuilder<RegisterBloc, RegisterState>(
                builder: (context, state) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: AlignmentGeometry.centerLeft,
                        child: Text("Register").h3,
                      ),
                      SizedBox(height: 50),
                      TextField(
                        placeholder: const Text('Enter your name'),
                        controller: nameController,

                        onEditingComplete: () {
                          context.read<RegisterBloc>().add(
                            RegisterEvent.validate(
                              type: TextFieldType.name,
                              value: nameController.text,
                            ),
                          );
                          FocusScope.of(context).nextFocus();
                        },
                        focusNode: focusNode,
                      ),
                      SizedBox(height: 10),
                      AnimatedOpacity(
                        duration: Duration(milliseconds: 400),
                        opacity: (state.showError(TextFieldType.name))
                            ? 1.0
                            : 0.0,
                        child: Text(
                          state.nameError ?? '',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.destructive,
                          ),
                        ).textSmall,
                      ),
                      SizedBox(height: 40),
                      TextField(
                        placeholder: Text('Enter your email'),
                        controller: emailController,
                        onSubmitted: (str) {
                          context.read<RegisterBloc>().add(
                            RegisterEvent.validate(
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
                        onEditingComplete: () {
                          context.read<RegisterBloc>().add(
                            RegisterEvent.validate(
                              type: TextFieldType.password,
                              value: passwordController.text,
                            ),
                          );
                          FocusScope.of(context).nextFocus();
                        },
                        focusNode: focusNode3,
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
                      TextField(
                        placeholder: Text('Repeat Password'),
                        controller: repeatPasswordController,
                        obscureText: true,
                        onChanged: (str) {
                          context.read<RegisterBloc>().add(
                            RegisterEvent.validate(
                              type: TextFieldType.repeatPassword,
                              value: repeatPasswordController.text,
                            ),
                          );
                        },
                        onEditingComplete: () {
                          FocusScope.of(context).unfocus();
                        },
                        focusNode: focusNode4,
                      ),
                      SizedBox(height: 10),
                      AnimatedOpacity(
                        duration: Duration(milliseconds: 400),
                        opacity: (state.showError(TextFieldType.repeatPassword))
                            ? 1.0
                            : 0.0,
                        child: Text(
                          state.repeatPasswordError ?? '',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.destructive,
                          ),
                        ).textSmall,
                      ),
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
                                        context.read<RegisterBloc>().add(
                                          const RegisterEvent.submit(),
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
