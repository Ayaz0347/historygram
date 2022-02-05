import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Colors.greenAccent,
      // appBar: AppBar(
      //
      //   backgroundColor: Colors.amber,
      //   title: Text("splash screen"),
      // ),

      body: Center(
        child: Container(
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Container(
                // color: Colors.amber,

                 height: size.height*0.35,
                 width: size.width*0.5,
                 child: getImage(),
                 ),



              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      "Books | Movies | News | History ",
                      style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),


      );

  }
}

Widget getImage(){
  AssetImage assetImage = AssetImage("images/dummy.jpeg");
  Image image = Image(image: assetImage,);

  return image;

}
