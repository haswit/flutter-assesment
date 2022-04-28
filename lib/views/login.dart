import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assesment/views/home.dart';
import 'package:flutter_assesment/widgets/custom_button.dart';
import 'package:flutter_assesment/widgets/custom_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _passwordVisible = false;
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Stack(children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/bg.jpg"),
                      fit: BoxFit.cover),
                ),
                padding: const EdgeInsets.all(0),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/logo.png",
                            width: 80,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            "EVU",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 5, 33, 56)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 20, color: Color.fromARGB(157, 0, 0, 0)),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomInput(
                          hint: "Enter your email",
                          showText: true,
                          controller: TextEditingController()),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 20, color: Color.fromARGB(157, 0, 0, 0)),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomInput(
                          hint: "Enter your password",
                          showText: false,
                          suffix: IconButton(
                            icon: Icon(
                              // Based on passwordVisible state choose the icon
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Theme.of(context).primaryColorDark,
                            ),
                            onPressed: () {
                              // Update the state i.e. toogle the state of passwordVisible variable

                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                          controller: TextEditingController()),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Theme(
                                data: ThemeData(
                                    unselectedWidgetColor:
                                        const Color.fromARGB(97, 77, 76, 76)),
                                child: Checkbox(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4)),
                                    activeColor: const Color(0xff00C8E8),
                                    value: checked,
                                    onChanged: (value) {
                                      setState(() {
                                        checked = value!;
                                      });
                                    }),
                              ),
                              const Text("Keep me signed in",
                                  style: TextStyle(
                                      color: Color(0xff646464),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Rubic'))
                            ],
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text("Forgot password?"))
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomButton(
                          onclickFunction: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()),
                            );
                          },
                          text: "Login"),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(children: const <Widget>[
                        Expanded(
                            child: Divider(
                          thickness: 2,
                        )),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("OR"),
                        ),
                        Expanded(
                            child: Divider(
                          thickness: 2,
                        )),
                      ]),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/google.png",
                              width: 20,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text("Continue with Google")
                          ],
                        ),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(153, 158, 158, 158),
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/facebook.png",
                              width: 25,
                            ),
                            const SizedBox(width: 15),
                            const Text("Continue with Facebook")
                          ],
                        ),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(153, 158, 158, 158),
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an Account?",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 39, 38, 38),
                                  fontSize: 15,
                                  fontFamily: 'Rubic')),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ]),
              ),
            ]),
          ),
        ));
  }
}
