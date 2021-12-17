import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobseeker/constants.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: LightGrey,
            elevation: 0,
            leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.blue),
                onPressed: () {
                  Navigator.pop(context);
                }),
            centerTitle: true,
            title: Text('About Us',
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600))),
        body: SingleChildScrollView(
          child: SafeArea(
            minimum: EdgeInsets.all(SafePadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.only(top: SafePadding),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: SafePadding),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Jobseeker App',
                              style: GoogleFonts.lato(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700)),
                          Text('UAS - Pemrograman Mobile',
                              style: GoogleFonts.lato(
                                  color: DarkGrey,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700)),
                          Text('Kenneth Liem Hardadi',
                              style: GoogleFonts.lato(
                                  color: DarkGrey, fontSize: 16.0)),
                          Text('20195520004',
                              style: GoogleFonts.lato(
                                  color: DarkGrey,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

