
import 'package:flutter/material.dart';
import 'package:salmakhaled_day2/models/customButtom.dart';
import 'package:salmakhaled_day2/models/customfiled.dart';

class RestSingUP extends StatefulWidget {
  const RestSingUP({super.key});

  @override
  State<RestSingUP> createState() => _RestSingUPState();
}

class _RestSingUPState extends State<RestSingUP> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter an email";
    }
    final emailRegex = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );
    if (!emailRegex.hasMatch(value)) {
      return "Please enter a valid email";
    }

    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is Empty";
    }
    if (value.length < 8) {
      return "Password must be at least 8 characters";
    }
    return null;
  }

  String? _validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is Empty";
    }
    if (value != _passwordController.text) {
      return "Passwords do not match";
    }
    return null;
  }

  double _sliderValue = 0;
  bool isChecked = false;
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Icon(Icons.arrow_back)),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                'Welcome Back.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Let’s sign up'),
              SizedBox(height: 8),
              CustomTextFiled(
                hittext: 'Full Name',
                prefixIcon: Icon(Icons.person),
              ),
              SizedBox(height: 8),
              CustomTextFiled(
                hittext: 'Email',
                prefixIcon: Icon(Icons.email),
                controller: _emailController,
                validator: _validateEmail,
              ),
              SizedBox(height: 8),
              CustomTextFiled(
                hittext: 'Password',
                controller: _passwordController,
                isPassword: true,
                validator: _validatePassword,
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility_off),
              ),
              SizedBox(height: 8),
              CustomTextFiled(
                hittext: 'Confirmed Password',
                isPassword: true,
                controller: _confirmPasswordController,
                validator: _validateConfirmPassword,
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility_off),
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Recover Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              Text('200 USD', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Slider(
                value: _sliderValue,
                min: 0,
                max: 100,
                activeColor: Colors.blue,
                onChanged: (double value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
              ),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value ?? false;
                      });
                    },
                  ),
                  Text('Checkbox Label', style: TextStyle(color: Colors.blue)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Switch(
                    value: isActive,
                    focusColor: Colors.blue,
                    onChanged: (bool value) {
                      setState(() {
                        isActive = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 4),
              CustomButtoms(
                text: 'Sign Up',
                color: Colors.red,
                textcolor: Colors.white,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print("Form is valid, proceed with signup");
                  }
                },
              ),

              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                      margin: EdgeInsets.only(right: 10),
                    ),
                  ),
                  Text('OR', style: TextStyle(fontWeight: FontWeight.bold)),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                      margin: EdgeInsets.only(left: 10),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              CustomButtoms(
                text: 'Continue With Google',
                color: Colors.white,
                textcolor: Colors.black,
                imagePath: 'assets/images/google 1.png',
              ),
              SizedBox(height: 8),
              CustomButtoms(
                text: 'Continue with Facebook',
                color: Colors.white,
                textcolor: Colors.black,
                imagePath: 'assets/images/image 8.png',
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "),
                  GestureDetector(
                    onTap: () {
                      print("Go to Sign In page");
                    },
                    child: Text(
                      "Sign In!",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
