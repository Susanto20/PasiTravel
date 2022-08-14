import 'package:coba_flutter/page/signup_page.dart';
import 'package:coba_flutter/page/taxi_page.dart';
import 'package:flutter/material.dart';
import 'package:cool_alert/cool_alert.dart';

class LoginPage extends StatelessWidget {
  TextEditingController _controller = TextEditingController();
  String value = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3AA0CB),
      body: ListView(
        children: [
          SizedBox(
            height: 35,
          ),
          Container(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'Betukang \nTravel',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  fontSize: 34,
                  color: Color(0xffE5E5E5)),
            ),
          ),
          Container(
              width: double.infinity,
              height: 220,
              child: Image(image: AssetImage('assets/images/travel.png'))),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            margin: EdgeInsets.symmetric(horizontal: 40),
            height: 40,
            child: TextField(
              onChanged: (text) {
                value = text;
              },
              controller: _controller,
              style: TextStyle(fontFamily: 'Poppins'),
              showCursor: true,
              cursorColor: Color(0xff3AA0CB),
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white)),
                hintText: 'Username',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            margin: EdgeInsets.symmetric(horizontal: 40),
            height: 40,
            child: TextField(
              style: TextStyle(fontFamily: 'Poppins'),
              showCursor: true,
              cursorColor: Color(0xff3AA0CB),
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white)),
                hintText: 'Password',
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 60),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              height: 35,
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xff1889BA))),
                  onPressed: () {
                    CoolAlert.show(
                        context: context,
                        confirmBtnText: 'Ya',
                        text: 'Selamat datang, ${_controller.text}',
                        confirmBtnTextStyle: TextStyle(
                            fontFamily: 'Poppins', color: Colors.white),
                        type: CoolAlertType.confirm,
                        onConfirmBtnTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => TaxiPage(value: value)));
                        },
                        backgroundColor: Color(0xff3AA0CB),
                        title: 'Lanjut log in ?');
                  },
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ))),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Belum punya akun ? Klik ',
                  style: TextStyle(fontFamily: 'Poppins', color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignupPage();
                    }));
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
