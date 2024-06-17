import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(),

            ///Welcome back text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'back !',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),

            SizedBox(height: 30),

            /// Username text field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  isDense: true,
                  filled: true,
                  hintText: "Username",
                  fillColor: Colors.grey.shade200,
                  hintStyle:
                      TextStyle(fontSize: 23, fontWeight: FontWeight.w300),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 15),

            /// Password text field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  isDense: true,
                  filled: true,
                  hintText: "Password",
                  fillColor: Colors.grey.shade200,
                  hintStyle:
                      TextStyle(fontSize: 23, fontWeight: FontWeight.w300),
                  /// Use prefixIcon if your icon is before the text in the text field
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Radio(
                        value: false,
                        groupValue: false,
                        onChanged: (_) {},
                        visualDensity: VisualDensity.compact,
                        activeColor: Colors.indigoAccent,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Remember me',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                  Text(
                    'Forget password?',
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),

            /// Login button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: OutlinedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
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

            SizedBox(height: 8),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New user?',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                SizedBox(width: 5),
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 16, color: Colors.indigoAccent),
                )
              ],
            ),

            /// OR separator
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 20),
              child: Row(
                children: [
                  Expanded(child: Divider(height: 2)),
                  SizedBox(width: 5),
                  Text(
                    'OR',
                    style: TextStyle(fontSize: 15, color: Colors.indigoAccent),
                  ),
                  SizedBox(width: 5),
                  Expanded(child: Divider(height: 2))
                ],
              ),
            ),

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

            SizedBox(height: 5),

            Text(
              'Sign in with another account',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 12),
            ),

            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
