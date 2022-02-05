import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: size.width * 0.5,
              height: size.height * 0.07,
            ),
            Container(
              height: size.height * 0.3,
              width: size.width * 0.6,
              child: Image.asset('images/dummy.jpeg'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
              child: Container(
                  child: const Text("Login Now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0, bottom: 12.0),
              child: Container(
                  child: const Text(
                      "Please login now to continue using our app",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Color(0xB1B3ADB9)))),
            ),
            Center(
              child: Container(
                width: size.width * 0.8,
                height: size.height * 0.07,
                color: Color(0xFF71000F),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                      child: Container(
                        // color:Colors.yellow,
                        width: size.width * 0.1,
                        child: const Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    Container(
                      //color: Colors.red,
                      width: size.width * 0.6,
                      child: const Text(
                        "Use  your email/phone number",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Container(
                  width: size.width * 0.8,
                  height: size.height * 0.07,
                  decoration: BoxDecoration(
                      //  color:Colors.red,
                      border: Border.all(width: 0, color: Colors.black)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                        child: Container(
                            // color:Colors.yellow,
                            height: size.height * 0.03,
                            width: size.width * 0.1,
                            child: Image.asset('images/facebook.png')),
                      ),
                      Container(
                        // color: Colors.green,
                        width: size.width * 0.6,
                        child: const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Center(
                            child: Text(
                              "Continue with facebook",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 2.0, bottom: 3.0),
                child: Container(
                  width: size.width * 0.8,
                  height: size.height * 0.07,
                  decoration: BoxDecoration(
                      //  color:Colors.red,
                      border: Border.all(width: 0, color: Colors.black)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 10.0),
                        child: Container(
                            //color:Colors.yellow,
                            height: size.height * 0.03,
                            width: size.width * 0.1,
                            child: Image.asset(
                              'images/google.png',
                              fit: BoxFit.scaleDown,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Container(
                          //color: Colors.red,
                          width: size.width * 0.6,
                          child: const Padding(
                            padding: EdgeInsets.only(right: 25),
                            child: Center(
                              child: Text(
                                "Continue with Google",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            /*    Center(
              child: Container(
                width: size.width*0.85,
                child: Row(
                  children: [
                    Container(
                    // width: size.width*0.8,
                      child: Text(
                        "By continuing you agree to United Black ",
                        style: TextStyle(
                          fontSize: 12.0
                        ),
                      ),
                    ),
                    Text(
                      "term of use",
                      style: TextStyle(
                          fontSize: 12.0,
                        color: Color(0xFF71000F),
                          fontWeight: FontWeight.w900,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Text(
                      " and",
                      style: TextStyle(
                          fontSize: 12.0
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                width: size.width*0.9,
                child: Row(
                  children: [
                    Container(
                      // width: size.width*0.8,
                      child: Text(
                        "Confirm that you have read united black  ",
                        style: TextStyle(
                            fontSize: 13.0
                        ),
                      ),
                    ),
                    Text(
                      "Privacy policy",
                      style: TextStyle(
                          fontSize: 13.0,
                          color: Color(0xFF71000F),
                        fontWeight: FontWeight.w900,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),*/
            Container(
              width: size.width * 0.9,
              child: RichText(
                  text: TextSpan(
                      text: 'By continuing you agree to United Black Library ',
                      style: TextStyle(color: Colors.black, fontSize: 12.0),
                      children: [
                    TextSpan(
                      text: 'term of use ',
                      style: TextStyle(
                          fontSize: 12.0,
                          color: Color(0xff700022),
                          decoration: TextDecoration.underline),
                    ),
                    TextSpan(
                      text: 'and Confirm that you have read united black ',
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                    TextSpan(
                      text: 'Privacy policy',
                      style: TextStyle(
                          fontSize: 12.0,
                          color: Color(0xff700022),
                          decoration: TextDecoration.underline),
                    ),
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 0.0),
              child: Container(
                width: size.width,
                height: size.height*0.1,
                alignment: Alignment.center,
                color: Color(0xC9AAE8F8),
                child: RichText(
                  text: TextSpan(
                      text: "Don\'t have any account? ",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                            text: "Signup",
                            style: TextStyle(color: Color(0xFF71000F)))
                      ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
