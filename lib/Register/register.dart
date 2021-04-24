import 'package:authscreen/Component/rounded_button.dart';
import 'package:authscreen/Component/rounded_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Register extends StatelessWidget {
  final icon = 'assets/icons';

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SvgPicture.asset(
                  '$icon/signup.svg',
                  height: _height / 2.1,
                ),
                Positioned(
                  top: 70,
                  left: _width / 5,
                  child: Text(
                    'Create An Account',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            roundedField(
              hint: 'Enter Your Name',
              icon: Icons.person_add_alt,
              icon1: null,
            ),
            roundedField(
              hint: 'Enter Your E-mail Address',
              icon: Icons.verified_user_outlined,
              icon1: null,
            ),
            roundedField(
                hint: 'Enter Your Password',
                icon: Icons.security,
                icon1: Icons.visibility_off,
                obscureText: true,
                ontap: () {
                  print('password Shown');
                }),
            roundedField(
                hint: 'Confirm Your Password',
                icon: Icons.security,
                icon1: Icons.visibility_off,
                obscureText: true,
                ontap: () {
                  print('password Shown');
                }),
            SizedBox(
              height: 30,
            ),
            roundedButton(
              title: 'Register Account',
              onTap: () => print('Register button clicked'),
              sWidth: _width,
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/login'),
              child: Text(
                'Already Have An account ?',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
