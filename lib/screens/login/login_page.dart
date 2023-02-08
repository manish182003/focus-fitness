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
        title: const Text(
          'LoginPage',
          style: TextStyle(
            color: AppColors.secondary,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
            child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Email"),
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Senha",
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style:
                  ElevatedButton.styleFrom(backgroundColor: AppColors.swatch4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Entrar"), Icon(Icons.login)],
              ),
            )
          ],
        )),
      ),
    );
  }
}
