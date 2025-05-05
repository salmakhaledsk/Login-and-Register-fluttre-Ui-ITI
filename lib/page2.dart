
import 'package:flutter/material.dart';
import 'package:salmakhaled_day2/models/customButtom.dart';
import 'package:salmakhaled_day2/models/customfiled.dart';

class SingIn extends StatefulWidget {
  const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  double _sliderValue = 0;
  bool isChecked = false;
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Icon(Icons.arrow_back)),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('Let’s sign in'),
              ],
            ),

            SizedBox(height: 8),
            CustomTextFiled(hittext: 'Email', prefixIcon: Icon(Icons.email)),
            SizedBox(height: 8),
            CustomTextFiled(
              hittext: 'Password',
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
              text: 'Sign In',
              color: Colors.red,
              textcolor: Colors.white,
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
                  onTap: () {},
                  child: Text(
                    "Sign Up!",
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
    );
  }
}
