import 'package:flutter/material.dart';
import 'package:flutter_learning/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

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
  final _formKey = GlobalKey<FormState>(); //to use form
//method
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      // ! means currentState will never be null
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: context.canvasColor,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login1.png",
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
                        // validator: (value) {
                        //   value = value ??
                        //       ""; // value ??= ""; or value = value == null ? "" : value;
                        //   if (value.isEmpty) {
                        //     return "Username cannot be empty";
                        //   }

                        //   return null;
                        // },

                        //or
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },

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

                        validator: (value) {
                          value = value ??
                              ""; // value ??= ""; or value = value == null ? "" : value;
                          if (value.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password length should be atleast 6";
                          }

                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      //wrap container with gesture detector or inkwell to make clickable
                      Material(
                        color: context.theme.buttonColor,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          //splashColor:Colors.red,
                          onTap: () => moveToHome(context),
                          // async {
                          //   //asynchronous and await keyword in asynchronous programming.
                          //   setState(() {
                          //     changeButton = true;
                          //   });
                          //   //wait garne 1 sec then arko page kholne
                          //   // pausing the execution for 1 second using the Future.delayed method
                          //   await Future.delayed(const Duration(seconds: 1));
                          //   await Navigator.pushNamed(
                          //       context, MyRoutes.homeRoute);
                          //   setState(() {
                          //     changeButton = false;
                          //   });
                          // },
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            width: changeButton ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            // decoration: BoxDecoration(
                            //   color: Colors.deepPurple,
                            //   // shape: changeButton
                            //   //     ? BoxShape.circle
                            //   //     : BoxShape.rectangle,
                            //   borderRadius:
                            //       BorderRadius.circular(changeButton ? 50 : 8),
                            // ),
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
                        ),
                      )
                      // ElevatedButton(
                      //   style: ElevatedButton.styleFrom(
                      //       minimumSize: const Size(150, 40),
                      //       backgroundColor: Colors.green),

                      //// onPressed: ()
                      //// this can take multiple statements
                      ////   print("didi");
                      ////   print("vhai");
                      //// },

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
          ),
        ));
  }
}
