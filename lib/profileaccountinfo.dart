import 'package:flutter/material.dart';

class ProfileAccountInfo extends StatefulWidget {
  const ProfileAccountInfo({Key? key}) : super(key: key);

  @override
  _ProfileAccountInfoState createState() => _ProfileAccountInfoState();
}

class _ProfileAccountInfoState extends State<ProfileAccountInfo> {
  get children => null;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff700022),
        title: Center(
          child: Container(
            width: 150,
            //color: Colors.blue,
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  child: Image.asset('images/dummy.jpeg'),
                ),
                  Text('My Profile'),

              ],
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            child: Icon(Icons.add_circle_outline),

          ),
          GestureDetector(
            child: Icon(Icons.message_outlined),

          ),

        ],
      ),
      body: Column(
        children: [


          // Container(
          //   color: Colors.red,
          //   child: Row(
          //     children: [
          //
          //       Center(
          //         child: Padding(
          //           padding: const EdgeInsets.only(left: 8),
          //           child: Container(
          //               width: size.width*0.07,
          //               height: size.height*0.08,
          //               //color: Colors.yellowAccent,
          //               child: Image.asset('images/dummy.jpeg')
          //           ),
          //         ),
          //       ),
          //       Container(
          //         // alignment: Alignment.center,
          //         width: size.width * 0.5,
          //         //color: Colors.greenAccent,
          //         child: const Text(
          //           "My Profile",
          //           style: TextStyle(
          //             fontWeight: FontWeight.w700, fontSize: 20,),
          //         ),
          //       ),
          //       Container(
          //         width: size.width * 0.06,
          //         //color: Colors.yellowAccent,
          //         child: Icon(
          //           Icons.add_circle_outline,
          //           color: Colors.black,
          //         ),
          //       ),
          //       Container(
          //         width: size.width * 0.06,
          //         //color: Colors.yellowAccent,
          //         child: Icon(
          //           Icons.textsms_outlined,
          //           color: Colors.black,
          //         ),
          //       ),
          //     ],
          //   ),
          //
          // ),
          Container(
            color: Color(0xff700022),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 8.0),
              child: Row(
                children: [
                  Container(
                    height: size.height*0.15,
                    child: Image.asset('images/women.png'),
                  ),

                  Column(
                    children: [
                      Text(
                        'Jennifer Vicksen',
                        style:TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20
                        ),
                      ),

                      Text(
                        'JenniferVicksen@gmail.com',
                        style:TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Text(
                            'Recent Activity'
                        ),
                      ),

                    ],
                  )

                ],
              ),
            ),
          ),
          Container(
            color: Color(0xff700022),
            width: size.width,
            child: Row(
              children: [
                Container(
                  width: size.width*0.5,
                  alignment: Alignment.center,
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Likes',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            color:Colors.white
                          ),
                        ),
                      ),
                      Text(
                        '20',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color:Colors.white
                        ),
                      ),

                    ],
                  ),
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Liked',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color:Colors.white
                        ),
                      ),
                    ),
                    Text(
                      '25',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color:Colors.white
                      ),
                    ),

                  ],
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
