import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPasswordScreen extends StatefulWidget {
  const LoginPasswordScreen({Key? key}) : super(key: key);

  @override
  _LoginPasswordScreenState createState() => _LoginPasswordScreenState();
}

class _LoginPasswordScreenState extends State<LoginPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          //height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                // color: Colors.yellowAccent,
                height: size.height * 0.05,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 10),
                      child: Container(
                        width: size.width * 0.06,
                        //color: Colors.yellowAccent,
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        alignment: Alignment.center,
                        width: size.width * 0.8,
                        //color: Colors.greenAccent,
                        child: Text(
                          "Log In",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // color: Colors.amber,

                height: size.height * 0.35,
                width: size.width * 0.5,
                child: Image.asset('images/dummy.jpeg'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 5.0),
                child: Container(
                    child: const Text("Hello!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2.0, bottom: 30.0),
                child: Container(
                    child: const Text("Pleasw Login  To Your App",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Color(0xB1B3ADB9)))),
              ),
              Container(
                  width: size.width * 0.9,
                  child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          //  labelText: "Enter Email",
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.0),
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.0),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2.0,
                            ),
                          ),
                          hintText: "Enter Password"))
                  // validator: (val) {
                  //   if (val.length == 0) {
                  //     return "Email cannot be empty";
                  //   } else {
                  //     return null;
                  //   }
                  // },
                  ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                width: size.width * 0.9,
                child: Text(
                  "Forgot password?",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 8.0),
                child: Container(
                  width: size.width * 0.9,
                  height: size.height * 0.05,
                  color: Color(0xB9B1B3AD),
                  child: Text(
                    "Log in",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
