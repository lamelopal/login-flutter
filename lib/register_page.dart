import 'package:authentications_flutter/icons/icons.dart';
import 'package:authentications_flutter/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'costum-widget-register.dart';
import 'package:flutter_svg/flutter_svg.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Register',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 38, right: 38),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Enter Your Phone Number',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            CustomTextField(
              hintText: 'Phone number',
              keyboardType: TextInputType.phone,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              prefixIcon: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('+62'),
                    SizedBox(width: 8),
                    Icon(Icons.keyboard_arrow_down_rounded),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              suffixIcon: const Icon(
                Icons.check_circle_rounded,
                size: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Enter Your Email',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              hintText: 'Email address',
              keyboardType: TextInputType.emailAddress,
              inputFormatters: [],
              prefixIcon: Icon(Icons.email),
              suffixIcon: null,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Enter Your Password',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextField(
              hintText: '**********',
              keyboardType: TextInputType.visiblePassword,
              inputFormatters: [],
              prefixIcon: null,
              suffixIcon: Icon(
                Icons.remove_red_eye_rounded,
                size: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Re-Enter Your Password',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextField(
              hintText: '**********',
              keyboardType: TextInputType.visiblePassword,
              inputFormatters: [],
              prefixIcon: null,
              suffixIcon: Icon(
                Icons.remove_red_eye_rounded,
                size: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 151, vertical: 18),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    splashFactory: NoSplash.splashFactory,
                  ),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            const Center(
              child: Text(
                'or',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black54),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 68, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  )),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.string(google),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Continue With Google',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 68, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  )),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.string(apple),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Continue With Apple',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
