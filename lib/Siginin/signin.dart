import 'package:authscreen/Component/component.dart';
import 'package:authscreen/Component/rounded_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignIn extends StatelessWidget {
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
                  '$icon/login.svg',
                  height: _height / 2.0,
                ),
                Positioned(
                  top: 70,
                  left: _width / 4,
                  child: Text(
                    'Welcome back ',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            roundedField(
              hint: 'Enter Your E-mail Address',
              icon: Icons.verified_user_outlined,
              icon1: null,
              obscureText: false,
            ),
            roundedField(
                hint: 'Enter Your Password',
                icon: Icons.security,
                icon1: Icons.visibility_off,
                obscureText: true,
                ontap: () {
                  print('password Shown');
                }),
            SizedBox(
              height: 50,
            ),
            roundedButton(
              title: 'Sign In',
              onTap: () => print('Sign In button clicked'),
              sWidth: _width,
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/register'),
              child: Text(
                'Create An account ?',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
