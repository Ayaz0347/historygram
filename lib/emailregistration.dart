import 'package:flutter/material.dart';

enum ResetPasswordBy {PhoneNumber, Email}
class EmailRegistration extends StatefulWidget {
  const EmailRegistration({Key? key}) : super(key: key);

  @override
  _EmailRegistrationState createState() => _EmailRegistrationState();
}

class _EmailRegistrationState extends State<EmailRegistration> {
  ResetPasswordBy _resetPasswordBy = ResetPasswordBy.Email;
  bool status = false;
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height*0.1,
                ),
                Container(
                  width: size.width*0.5,
                  height: size.height*0.3,
                  child: Image.asset('images/dummy.jpeg'),
                  ),
                SizedBox(height: size.height*0.01,),
                Container(
                    child: const Text("Hello!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                        ))),
                SizedBox(height: size.height*0.01,),
                Container(
                    child: const Text(
                        "Please register with email or phone number",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Color(0xB1B3ADB9)))),
                SizedBox(height: size.height*0.03,),
                Container(
                  width: size.width*0.85,
                  height: size.height*0.05,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
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
                      hintText: "First Name",
                        hintStyle: TextStyle(
                            color: Colors.grey
                        )
                    ),
                  ),
                ),
                SizedBox(height: size.height*0.03,),
                Container(
                  width: size.width*0.85,
                  height: size.height*0.05,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
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
                        hintText: "Last Name",
                        hintStyle: TextStyle(
                          color: Colors.grey
                        )
                    ),
                  ),
                ),

                SizedBox(height: size.height*0.03),


                Column(
                  children: [
                    Container(
                      width: devSize.width*0.85,
                      height: devSize.height*0.04,
                      child: Text('Sign Up with', style: TextStyle(color: Colors.grey, fontSize: 15,
                          fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      height: devSize.height*0.05,
                      width: devSize.width*0.75,
                      child: Row(
                        children: [
                          Container(
                            width: devSize.width*0.08,
                            child: Radio(
                              activeColor: Colors.lime,
                              value: ResetPasswordBy.PhoneNumber,
                              groupValue: _resetPasswordBy,
                              onChanged: (ResetPasswordBy? value) {
                                setState(() {
                                  _resetPasswordBy = value!;
                                  status = false;
                                });
                              },
                            ),
                          ),
                          Container(
                            width: devSize.width*0.3,
                            child: const Text('Phone Number', style: TextStyle(fontSize: 13,),),
                          ),
                          SizedBox(
                            width: devSize.width*0.08,
                          ),

                          Container(
                            width: devSize.width*0.08,
                            child: Radio(
                              activeColor: Colors.lime,
                              value: ResetPasswordBy.Email,
                              groupValue: _resetPasswordBy,
                              onChanged: (ResetPasswordBy? value) {
                                setState(() {
                                  _resetPasswordBy = value!;
                                  status = true;
                                });
                              },
                            ),
                          ),
                          Container(
                            width: devSize.width*0.12,
                            child: const Text('Email',style: TextStyle(fontSize: 13,),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height*0.03,),
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
                            hintText: status == true ? "Enter Email Address" : "Enter Phone  number",
                            hintStyle: TextStyle(
                                color: Colors.grey
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: size.height*0.01,),
                    status == true ?
                    Container(
                      width: size.width*0.85,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Enter email associated with this account',
                        style: TextStyle(
                          color: Colors.lime
                        ),
                      ),
                    ) :
                    Container(
                      width: size.width*0.85,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Enter phone number associated with this account',
                        style: TextStyle(
                            color: Colors.lime
                        ),
                      ),
                    ),
                    SizedBox(height: size.height*0.05,),

                    Container(
                      width: size.width*0.85,
                      height: size.height*0.05,
                      alignment: Alignment.center,
                      color: Color(0xFF71000F),
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    )


                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
