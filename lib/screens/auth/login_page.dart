import 'package:flutter/material.dart';
import 'package:focus_fitness/utils/app_colors.dart';
import 'package:focus_fitness/utils/app_routes.dart';
import 'package:focus_fitness/widgets/auth_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /* title: const Text(
          'LoginPage',
          style: TextStyle(
            color: AppColors.secondary,
          ),
        ), */
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'faça login com a sua conta',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 400,
            height: 300,
            margin:
                const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
            // color: AppColors.subtitle,
            decoration: BoxDecoration(
                color: const Color(0xffffffff).withOpacity(0.5),
                borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(10),
            child: Form(
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  AuthTextFormField(
                    label: 'Email',
                    hintText: 'Digite o seu endereço de email',
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {},
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AuthTextFormField(
                    label: "Senha",
                    hintText: "Digite a senha",
                    validator: (value) {},
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.swatch4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Entrar",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.login,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Não possui uma conta?',
                        style: TextStyle(
                            color: AppColors.subtitle,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(AppRoutes.register, );
                        },
                        child: const Text(
                          'Cadastre-se',
                          style: TextStyle(
                              color: AppColors.swatch4,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
