import 'package:flutter/material.dart';
import 'package:sample_design/login_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key, this.title});

  final String? title;

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),

            ///Welcome text
            const Text(
              'Welcome !',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 30),

            /// Create account button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: Text(
                    'Create Account',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent,
                ),
              ),
            ),

            SizedBox(height: 18),

            /// Login button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20, color: Colors.indigoAccent),
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.indigoAccent),
                ),
              ),
            ),

            SizedBox(height: 30),

            ///Social network icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.account_circle,
                    color: Colors.indigoAccent, size: 26),
                SizedBox(width: 10),
                Icon(Icons.assistant_navigation,
                    color: Colors.indigoAccent, size: 26),
                SizedBox(width: 10),
                Icon(Icons.facebook, color: Colors.indigoAccent, size: 26),
                SizedBox(width: 10),
                Icon(Icons.flag_circle_rounded,
                    color: Colors.indigoAccent, size: 26),
              ],
            ),

            SizedBox(height: 3),

            Text(
              'Sign in with another account',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 13,
              ),
            ),

            SizedBox(height: 140),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
