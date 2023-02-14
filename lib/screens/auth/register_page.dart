import 'package:flutter/material.dart';
import 'package:focus_fitness/utils/app_colors.dart';
import 'package:focus_fitness/utils/app_routes.dart';
import 'package:focus_fitness/widgets/auth_text_form_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Cadastre-se',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Crie a sua conta, é gratis',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
              decoration: BoxDecoration(
                color: const Color(0xffffffff).withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Form(
                child: Column(
                  children: [
                    AuthTextFormField(
                      label: 'Nome Completo',
                      validator: (value) {},
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AuthTextFormField(
                      label: 'Email',
                      validator: (value) {},
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AuthTextFormField(
                      label: 'Senha',
                      validator: (value) {},
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AuthTextFormField(
                      label: 'Repetir Senha',
                      validator: (value) {},
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.swatch4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            'Criar Conta',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.living_outlined,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Já possui sua conta?',
                          style: TextStyle(
                              color: AppColors.subtitle,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              AppRoutes.login,
                            );
                          },
                          child: const Text(
                            'Entrar Agora',
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
      ),
    );
  }
}
