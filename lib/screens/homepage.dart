import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_demo/screens/signUp.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void login() {
    String email = emailController.text.trim();
    String pass = passwordController.text.trim();
    if (email == '' || pass == '') {
      // ScaffoldMessenger.of(context).showSnackBar(
      //     const SnackBar(content: Text('Please fill all the fields')));
      print('please fill all the fields');
    } else {
      try {
        FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: pass);
        print('loged in');
      } catch (e) {}
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
            MaterialButton(
              color: const Color.fromARGB(255, 16, 179, 25),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              onPressed: () {
                login();
              },
              child: const Text(
                'Login',
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
                const Text("Don't have an account? "),
                // Text('Register'),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                              fullscreenDialog: true,
                              builder: (context) => SignUpScreen()));
                    },
                    child: Text(
                      'Register',
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
