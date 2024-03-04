import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:test_app/views/home_page.dart';

class AuthController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  final addressController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> registerUser() async {
    const String url = 'http://192.168.1.115:4000/register';

    final Map<String, String> requestData = {
      "full_name": nameController.text,
      "email": emailController.text,
      "mobile_number": mobileController.text,
      "address": addressController.text,
      "password": passwordController.text
    };

    try {
      final http.Response response = await http.post(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode(requestData),
      );

      if (response.statusCode == 200) {
        // Request was successful
        print('Registration successful');
        print(response.body);
      } else {
        // Request failed
        print('Failed to register');
        print('Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (error) {
      // Error during HTTP request
      print('Error: $error');
    }
  }

  Future<void> loginUser() async {
    const String url = 'http://192.168.1.115:4000/api/auth/login';

    final Map<String, String> requestData = {
      "email": emailController.text,
      "password": passwordController.text
    };

    try {
      final http.Response response = await http.post(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode(requestData),
      );

      if (response.statusCode == 200) {
        Get.offAll(() => const MyHomePage(title: 'Welcome'));
        // Request was successful
        print('Login successful');
        print(response.body);
      } else {
        // Request failed
        print('Failed to Login');
        print('Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (error) {
      // Error during HTTP request
      print('Error: $error');
    }
  }
}
