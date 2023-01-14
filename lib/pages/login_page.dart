import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  //final _name = ""; name is private type variable
  @override
  State<LoginPage> createState() => _LoginPageState();
}

//underscore before class,variable makes them private type inside dart
class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                      onChanged: (value) {
                        name = value;
                        setState(() {
                          //like calling build (redraw or change the state of UI )
                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true, //password hidden garna
                      decoration: const InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    //wrap container with ...detector or inkwell to make clickable
                    InkWell(
                      onTap: () async {
                        //asynchronous and await keyword in asynchronous programming.
                        setState(() {
                          changeButton = true;
                        });
                        //wait garne 1 sec then arko page kholne
                        // pausing the execution for 1 second using the Future.delayed method
                        await Future.delayed(const Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          // shape: changeButton
                          //     ? BoxShape.circle
                          //     : BoxShape.rectangle,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8),
                        ),
                        //color: Colors.deepPurple,
                        child: changeButton
                            ? const Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : const Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                      ),
                    )
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //       minimumSize: const Size(150, 40),
                    //       backgroundColor: Colors.green),

                    // onPressed: ()
                    // this can take multiple statements
                    //   print("didi");
                    //   print("vhai");
                    // },

                    //   // this takes only one statement
                    //   // onPressed: () => print("didi"),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   child: const Text("LOGIN"),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
