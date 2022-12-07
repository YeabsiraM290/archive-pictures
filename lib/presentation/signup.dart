import 'package:flutter/scheduler.dart';
import 'package:flutter/material.dart';

import 'package:archiver/presentation/constants/colors.dart';
import 'package:archiver/presentation/login.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _UsernameFeildController = TextEditingController();
  final _passwordFeildController = TextEditingController();
  final _ConfirmPasswordFeildController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(children: [
            Container(
              margin: const EdgeInsets.only(top: 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SIGNUP",
                    style: TextStyle(
                      color: white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(bottom: 20, top: 20),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      width: 0.0,
                                      color: white,
                                    ),
                                  ),
                                  // focusColor: storeBg,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    // borderSide: BorderSide(color: storeBg),
                                  ),
                                  prefixIcon: // add padding to adjust icon
                                      Icon(
                                    Icons.person,
                                    color: black,
                                    size: 20,
                                  ),
                                  hintStyle: const TextStyle(fontSize: 14),
                                  floatingLabelStyle: TextStyle(
                                      height: 2,
                                      color: black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17),
                                  labelStyle: TextStyle(
                                      color: black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      backgroundColor: white),
                                  prefixIconColor: black,
                                  hintText: "Username",
                                  labelText: 'Username',
                                  filled: true,
                                  fillColor: white,
                                  contentPadding: const EdgeInsets.all(25),
                                  isDense: true,
                                ),
                                controller: _UsernameFeildController,
                                keyboardType: TextInputType.visiblePassword,
                                autocorrect: false,
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter username';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 30),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      width: 0.0,
                                      color: white,
                                    ),
                                  ),
                                  // focusColor: storeBg,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    // borderSide: BorderSide(color: storeBg),
                                  ),
                                  prefixIcon: // add padding to adjust icon
                                      Icon(
                                    Icons.lock,
                                    color: black,
                                    size: 20,
                                  ),
                                  hintStyle: const TextStyle(fontSize: 14),
                                  floatingLabelStyle: TextStyle(
                                      height: 2,
                                      color: black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17),
                                  labelStyle: TextStyle(
                                      color: black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      backgroundColor: white),
                                  prefixIconColor: black,
                                  hintText: "password",
                                  labelText: 'Password',
                                  filled: true,
                                  fillColor: white,
                                  contentPadding: const EdgeInsets.all(25),
                                  isDense: true,
                                ),
                                controller: _UsernameFeildController,
                                keyboardType: TextInputType.visiblePassword,
                                autocorrect: false,
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter username';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 30),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      width: 0.0,
                                      color: white,
                                    ),
                                  ),
                                  // focusColor: storeBg,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    // borderSide: BorderSide(color: storeBg),
                                  ),
                                  prefixIcon: // add padding to adjust icon
                                      Icon(
                                    Icons.lock,
                                    color: black,
                                    size: 20,
                                  ),
                                  hintStyle: const TextStyle(fontSize: 14),
                                  floatingLabelStyle: TextStyle(
                                      height: 2,
                                      color: black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17),
                                  labelStyle: TextStyle(
                                      color: black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      backgroundColor: white),
                                  prefixIconColor: black,
                                  hintText: "password",
                                  labelText: 'Confirm password',
                                  filled: true,
                                  fillColor: white,
                                  contentPadding: const EdgeInsets.all(25),
                                  isDense: true,
                                ),
                                controller: _UsernameFeildController,
                                keyboardType: TextInputType.visiblePassword,
                                autocorrect: false,
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter username';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: purpule,
                                  borderRadius: BorderRadius.circular(10)),
                              margin: const EdgeInsets.only(top: 20),
                              padding: const EdgeInsets.all(10),
                              width: screenWidth,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Signup',
                                  style: TextStyle(
                                      color: white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  SchedulerBinding.instance
                                      .addPostFrameCallback((_) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginPage()),
                                    );
                                  });
                                },
                                child: Text(
                                  "Already have an account? login",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 12,
                                    color: textBlue,
                                  ),
                                ))
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
