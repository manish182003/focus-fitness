import 'package:flutter/material.dart';
import 'package:focus_fitness/utils/app_colors.dart';

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
            margin: EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
            // color: AppColors.subtitle,
            decoration: BoxDecoration(
                color: AppColors.icons.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(10),
            child: Form(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: "Email"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Senha",
                    ),
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
                        const Text("Entrar", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        const SizedBox(width: 10,),
                        const Icon(Icons.login, size: 25,),
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
                        onPressed: () {},
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
