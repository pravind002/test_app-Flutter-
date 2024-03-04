import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/constant/auth_controller.dart';

import 'register_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final authController = AuthController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Login Page',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: authController.emailController,
                decoration: const InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))))),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: authController.passwordController,
              obscureText: true,
                decoration: const InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))))),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                authController.loginUser();
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Login ',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an Account?'),
                TextButton(
                    onPressed: () {
                      Get.to(() => RegisterPage());
                    },
                    child: const Text('Register'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
