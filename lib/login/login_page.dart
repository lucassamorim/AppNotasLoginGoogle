import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                GoogleSignIn _googleSignIn = GoogleSignIn(
                  scopes: [
                    'email',
                  ],
                );
                try {
                  var loginGoogle;
                  loginGoogle = await _googleSignIn.signIn();
                  print(loginGoogle);
                  Navigator.pushReplacementNamed(context, '/home');
                } catch (error) {
                  print(error);
                }
              },
              child: Container(
                width: 175,
                child: Row(
                  children: [
                    Image.asset('assets/images/google-icon.png'),
                    SizedBox(width: 10),
                    Text(
                      'Logar com Google',
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFFE1F0FF),
                elevation: 10,
                padding: EdgeInsets.all(20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
