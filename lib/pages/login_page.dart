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
                    fontFamily: 'Roboto',
                    color: Color(0xFFF2F3F3),
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 60),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        fontFamily: 'Roboto',
                        color: Color(0xFF1C1B1F),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    fillColor: Color(0xFFF2F3F3),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xFFF2F3F3)))),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        fontFamily: 'Roboto',
                        color: Color(0xFF1C1B1F),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
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
                      style: TextStyle(
                          color: Color(0xFFF2F3F3),
                          fontSize: 15,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    // navegar para a proxima tela
                    Navigator.of(context).pushReplacementNamed('/inforesumo');
                  },
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
                    style: TextStyle(
                        color: Color(0xFFF2F3F3),
                        fontSize: 15,
                        fontFamily: 'Roboto'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Cadastre-se',
                      style: TextStyle(
                        color:
                            Color.fromARGB(255, 238, 200, 149).withOpacity(1),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
