import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(28),
          color: Color(0xFF229EAB),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: TextStyle(
                    color: Color(0xFFF2F3F3),
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 60),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Email',
                    fillColor: Color(0xFFF2F3F3),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xFFF2F3F3)))),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    fillColor: Color(0xFFF2F3F3),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 251, 251, 251)))),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Esqueci minha senha',
                      style: TextStyle(color: Color(0xFFF2F3F3)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {},
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF2F3F3),
                      foregroundColor: Color(0xFF229EAB),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Não tem uma conta?',
                    style: TextStyle(color: Color(0xFFF2F3F3)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Cadastre-se',
                      style: TextStyle(color: Colors.black.withOpacity(1)),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
