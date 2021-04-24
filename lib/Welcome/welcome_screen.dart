import 'package:authscreen/Component/component.dart';
import 'package:authscreen/Register/register.dart';
import 'package:authscreen/Siginin/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import '../Component/component.dart';

class WelcomeScreen extends StatelessWidget {
  final icon = 'assets/icons';
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SvgPicture.asset(
              '$icon/welcomepage.svg',
              height: _height / 2.0,
            ),
            SizedBox(
              height: _height / 4,
            ),
            roundedButton(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignIn();
                  },
                ),
              ),
              title: 'Already have an Account ?',
              sWidth: _width,
            ),
            roundedButton(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Register();
                  },
                ),
              ),
              title: 'Want to Create an Account ?',
              sWidth: _width,
            ),
          ],
        ),
      ),
    );
  }
}
