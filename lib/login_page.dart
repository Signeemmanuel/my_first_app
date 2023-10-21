import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Column(
        children: [
          const Text(
            "Hello, Welcome back",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Login to continue",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Username",
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              filled: true,
              fillColor: Colors.white.withOpacity(0.5),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Password",
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5),
                hintStyle: const TextStyle(color: Colors.white)),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                print("Forgot password button clicked");
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              child: const Text("Forgot password"),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            width: 250,
            child: ElevatedButton(
              onPressed: () {
                print("login Button clicked");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
              ),
              child: const Text("Login"),
            ),
          ),
          const SizedBox(
            height: 62,
          ),
          const Text(
            "Or Login with",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/google.png",
                  width: 22,
                  height: 22,
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text("Login with Google")
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print("Login with Google clicked");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/facebook.png",
                  width: 22,
                  height: 22,
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text("Login with Facebook"),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "I Don't have an account?",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextButton(
                onPressed: () {
                  print("sign up button clicked");
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.amber,
                ),
                child: const Text(
                  "Sign up",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
