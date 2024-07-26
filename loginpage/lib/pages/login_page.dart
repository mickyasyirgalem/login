import 'package:flutter/material.dart';
import 'package:loginpage/components/my_button.dart';
import 'package:loginpage/components/my_text_field.dart';
import 'package:loginpage/components/square_tile.dart';
import 'package:loginpage/services/auth_service.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 197, 195, 195),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Icon(
                Icons.home,
                size: 100,
              ),
              const SizedBox(height: 10),
              Text(
                'Welcome Back You\'ve been missed',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextField(
                controller: userNameController,
                hint: 'Email Address',
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                  controller: passwordController,
                  hint: 'Password',
                  obscureText: true),
              const SizedBox(
                height: 5,
              ),
              TextButton(
                onPressed: () async {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Mybutton(
                onTap: () async {},
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[600],
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[600],
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(
                    imagePath: 'lib/image/google.png',
                    onTap: () => AuthService().signInwithGoogle(),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  SquareTile(
                    imagePath: 'lib/image/face2.jpg',
                    onTap: () {},
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  TextButton(
                    onPressed: () async {},
                    child: const Text('Register now',
                        style: TextStyle(
                          color: Color.fromARGB(255, 30, 72, 151),
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
