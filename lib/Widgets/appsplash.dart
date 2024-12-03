import 'package:flutter/material.dart';
import 'package:training/function/autho.dart';

class Autho extends StatefulWidget {
  const Autho({super.key});

  @override
  State<Autho> createState() => _AuthoState();
}

class _AuthoState extends State<Autho> {
  final _formKey = GlobalKey<FormState>();
  bool isLogin = false; // Moved outside of the build method
  String email = '';
  String password = '';
  String username = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          'Email Authentication',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!isLogin)
                TextFormField(
                  key: ValueKey('username'), // Updated to a custom key
                  decoration: InputDecoration(
                    hintText: 'Enter the Username',
                  ),
                  validator: (value) {
                    if (value.toString().length < 3) {
                      return 'username is small';
                    } else
                      return null;
                  },
                  onSaved: (value) {
                    setState(() {
                      username = value!;
                    });
                  },
                ),
              TextFormField(
                key: ValueKey('email'), // Updated to a custom key
                decoration: InputDecoration(
                  hintText: 'Enter the Email',
                ),
                validator: (value) {
                  if (!(value.toString().contains('@'))) {
                    return 'Email is invalid ';
                  } else
                    return null;
                },
                onSaved: (value) {
                  setState(() {
                    email = value!;
                  });
                },
              ),
              TextFormField(
                obscureText: true,
                key: ValueKey('password'), // Updated to a custom key
                decoration: InputDecoration(
                  hintText: 'Enter the Password',
                ),
                validator: (value) {
                  if (value.toString().length < 5) {
                    return 'password is small';
                  } else
                    return null;
                },
                onSaved: (value) {
                  setState(() {
                    password = value!;
                  });
                },
              ),
              SizedBox(height: 10),
              Container(
                height: 35,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(Colors.purpleAccent),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      signup(email, password);
                    }
                  },
                  child: Text(
                    isLogin ? 'Login' : 'Sign up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isLogin = !isLogin;
                  });
                },
                child: Text(
                  isLogin
                      ? "Don't have an account? Sign up"
                      : 'Already signed up? Login',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
