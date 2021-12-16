import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobseeker/constants.dart';
import 'package:jobseeker/Home/view.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final textController = TextEditingController();
  late String displayName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.all(SafePadding),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Job',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 48.0,
                        fontWeight: FontWeight.w800),
                  ),
                  Text('seeker',
                      style: GoogleFonts.poppins(
                          color: Colors.blue,
                          fontSize: 48.0,
                          fontWeight: FontWeight.w800))
                ],
              ),
            ),
            SizedBox(height: 2 * SafePadding),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Masukan Identitas Anda',
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontWeight: FontWeight.w500)),
                  SizedBox(height: 2 * BasePadding),
                  Container(
                    height: 12 * BasePadding,
                    padding: EdgeInsets.symmetric(horizontal: SafePadding),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: LightGrey),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: TextField(
                      controller: textController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Masukan nama Anda'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2 * SafePadding),
            FlatButton(
                color: Colors.blue,
                onPressed: () {
                  setState(() {
                    displayName = textController.text;
                  });

                  if (displayName != '') {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomePage(displayName: displayName);
                    }));
                  } else {
                    return null;
                  }
                },
                child: Text('Lanjutkan',
                    style: GoogleFonts.lato(
                        color: Colors.white, fontWeight: FontWeight.w500)))
          ],
        )),
      ),
    );
  }
}
