import 'package:flutter/material.dart';


enum ResetPasswordBy {PhoneNumber, Email}

class ResetPasswordThrough extends StatefulWidget {
  const ResetPasswordThrough({Key? key}) : super(key: key);

  @override
  _ResetPasswordThroughState createState() => _ResetPasswordThroughState();
}

class _ResetPasswordThroughState extends State<ResetPasswordThrough> {
  ResetPasswordBy _resetPasswordBy = ResetPasswordBy.Email;
  bool status  = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),

              Container(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 1),
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
                          "Reset Password",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.07,
              ),

              Container(
                width: size.width * 0.85,
                height: size.height * 0.07,
                alignment: Alignment.topLeft,
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Container(
                width: size.width * 0.85,
                height: size.height * 0.1,
                alignment: Alignment.topLeft,
                child: Text(
                  'Enter the phone number associated with the email account ans we will send you the code to reset your pass',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    width: size.width*0.85,
                    child: Text(
                      'Reset password by',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.85,
                    child: Row(
                      children: [
                        Radio(
                            activeColor: Colors.lime,
                            value: ResetPasswordBy.PhoneNumber,
                            groupValue: _resetPasswordBy,
                            onChanged: (ResetPasswordBy? value) {
                          setState(() {
                            _resetPasswordBy=value!;
                            status = true;
                          });
                        }),
                        Container(
                          child: Text(
                              'Phone number',
                            style: TextStyle(
                              fontSize: 16
                            ),
                          ),
                        ),
                        Radio(
                            activeColor: Colors.lime,
                            value: ResetPasswordBy.Email,
                            groupValue: _resetPasswordBy,
                            onChanged: (ResetPasswordBy? value) {
                          setState(() {
                            _resetPasswordBy=value!;
                            status = false;
                          });
                        }),
                        Container(
                          child: Text(
                            'Email',
                            style: TextStyle(
                                fontSize: 16
                          ),
                        ),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    width: size.width*0.85,
                    height: size.height*0.05,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        //labelText: "Enter email associated with this account",
                          contentPadding: EdgeInsets.all(10.0),
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2.0),
                              borderSide: BorderSide(
                                  color: Colors.red
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.0),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                          ),
                          hintText: status == false ? "Enter Email Address" : "Enter Phone  number",
                          hintStyle: TextStyle(
                              color: Colors.grey
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height*0.1,
                  ),
                  Container(
                    width: size.width*0.85,
                    height: size.height*0.05,
                    alignment: Alignment.center,
                    color: Colors.grey,
                    child: Text(
                      'Send reset Link',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17.0,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
