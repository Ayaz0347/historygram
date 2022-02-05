import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum ResetPasswordBy {PhoneNumber, Email}
class ResetPasswordSelectmethod extends StatefulWidget {
  const ResetPasswordSelectmethod({Key? key}) : super(key: key);

  @override
  _ResetPasswordSelectmethodState createState() => _ResetPasswordSelectmethodState();
}

class _ResetPasswordSelectmethodState extends State<ResetPasswordSelectmethod> {
  ResetPasswordBy _resetPasswordBy = ResetPasswordBy.Email;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.08,
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
              SizedBox(
                height: size.height * 0.05,
              ),

              Container(
                width: size.width*0.85,
                height: size.height*0.05,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
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
                      hintText: "Enter Phone Number"
                  ),
                ),
              ),
              SizedBox(
                height: size.height*0.03,
              ),
          Column(
            children: [
              Container(
                width: size.width*0.85,
                child: Text(
                  'Select Method',
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
                            //status = true;
                          });
                        }),
                    Container(
                      width: size.width*0.3,
                      child: Text(
                        'Call',
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
                            //status = false;
                          });
                        }),
                    Container(
                      child: Text(
                        'SMS',
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                    ),


                  ],
                ),
              ),
              SizedBox(
                height: size.height*0.06,
              ),
              Container(
                width: size.width*0.85,
                height: size.height*0.05,
                alignment: Alignment.center,
                color: Color(0xD1D2C7D6),
                child: Text(
                  'Send reset Code',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                ),
              )

            ],
          ),
        ]),
    ),
      ));
  }
}
