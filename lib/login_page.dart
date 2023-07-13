import 'package:flutter/material.dart';
import 'package:yoga/main.dart';
import 'package:yoga/delayed_animation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.black,
              size: 30,
            ),
            onPressed: (){
              Navigator.pop(context);
            }
        ),
      ),


      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DelayedAnimation(
                    delay: 1000,
                    child: Text('Connect email address',
                      style: GoogleFonts.poppins(
                        color: d_red,
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 22,),
                  DelayedAnimation(
                    delay: 1000,
                    child: Text('It"s recommended to connect your email address for us to better protect your information.',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 22,),
            LoginForm(),
            SizedBox(height: 125,),
            DelayedAnimation(
              delay: 3000,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: d_red,
                  padding: EdgeInsets.symmetric(
                    horizontal: 125,
                    vertical: 13,
                  ),
                ),
                child: Text('CONFIRM',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyApp(),
                      ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;
  IconData _icon = Icons.visibility_off;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: [
          DelayedAnimation(
              delay: 2000,
              child:TextField(
                decoration: InputDecoration(
                  labelText: 'Your Email',
                  labelStyle: TextStyle(
                    color: Colors.grey[400],
                  )
                ),
              )
          ),
          SizedBox(height: 30,),
          DelayedAnimation(
              delay: 2500,
              child:TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _icon,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText= !_obscureText;
                          if(_icon==Icons.visibility){
                            _icon=Icons.visibility_off;
                          }
                          else{
                            _icon=Icons.visibility;
                          }
                        });
                      },
                    )
                ),
              )
          ),
        ],
      ),
    );
  }
}