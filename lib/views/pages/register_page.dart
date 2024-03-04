import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/constant/auth_controller.dart';
import 'package:test_app/views/pages/login_page.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

final authController=AuthController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Registration Page',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: authController.nameController,
                  decoration: const InputDecoration(
                      hintText: 'Full Name',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(25))))),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                 controller: authController.emailController,
                  decoration: const InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(25))))),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                 controller: authController.mobileController,
                  decoration: const InputDecoration(
                      hintText: 'Mobile Number',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(25))))),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                 controller: authController.addressController,
                  decoration: const InputDecoration(
                      hintText: 'Address',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(25))))),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                 controller: authController.passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(25))))),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  authController.registerUser();
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      'Register',
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
                  const Text('Already have an Account?'),
                  TextButton(
                      onPressed: () {
                        Get.offAll(() =>  LoginPage());
                      },
                      child: const Text('Login'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
