import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_demo/screens/homepage.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confpasswordController = TextEditingController();

  void signUp() {
    String email = emailController.text.trim();
    String pass = passwordController.text.trim();
    String cnfpass = confpasswordController.text.trim();
    if (email == '' || pass == '' || cnfpass == '') {
      // ScaffoldMessenger.of(context).showSnackBar(
      //     const SnackBar(content: Text('Please fill all the fields')));
      print('please fill all the fields');
    } else {
      try {
        FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: pass);
      } on FirebaseAuthException catch (e) {
        print(e.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.grey[300],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Icon(
              Icons.face,
              size: 60,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Hello',
              style: TextStyle(fontSize: 40, fontFamily: 'Lobster'),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                        hintText: 'email', border: InputBorder.none),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: 'password', border: InputBorder.none),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    controller: confpasswordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: 'confirm password', border: InputBorder.none),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              color: const Color.fromARGB(255, 16, 179, 25),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              onPressed: () {
                signUp();
              },
              child: const Text(
                'Sign Up',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? "),
                // Text('Register'),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                              fullscreenDialog: true,
                              builder: (context) => HomePage()));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.blue[300]),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
