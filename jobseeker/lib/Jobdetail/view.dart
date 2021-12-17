import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobseeker/constants.dart';

class JobsDetail extends StatelessWidget {
  final String jobPosition;
  final String companyName;
  final String location;
  final String salaryRange;
  final String logoName;

  JobsDetail(
      {required this.jobPosition,
      required this.companyName,
      required this.location,
      required this.salaryRange,
      required this.logoName});

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
            title: Text(companyName,
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
                      Image.asset(
                        'assets/$logoName',
                        scale: 1.5,
                      ),
                      SizedBox(width: SafePadding),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(jobPosition,
                              style: GoogleFonts.lato(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700)),
                          Text(companyName,
                              style: GoogleFonts.lato(
                                  color: DarkGrey,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700)),
                          Text(location,
                              style: GoogleFonts.lato(
                                  color: DarkGrey, fontSize: 16.0)),
                          Text(salaryRange,
                              style: GoogleFonts.lato(
                                  color: DarkGrey,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600))
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 1.5 * SafePadding),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Deskripsi Pekerjaan',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700)),
                      SizedBox(height: BasePadding),
                      Text(
                        'As the Lead Frontend Engineer at [Redacted], you will lead a team of engineers to ship delightful experiences to every customer and potential customer to visit [Redacted]’s site. We expect that you will be both mentor and team leader for your engineers. This means that you will help with technical decisions, coach the engineers reporting to you, and partner with stakeholders cross-functionally - and you will definitely be writing code. On a typical day, you can expect to to coach engineers to level up their technical and soft skills, to plan and scope future projects, and to help fix a small bug or guide a new feature development',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.lato(
                            color: Colors.black, fontSize: 16.0),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 1.5 * SafePadding),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Persyaratan',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700)),
                      SizedBox(height: BasePadding),
                      Text('•\tTerbiasa bekerja dibawah tekanan',
                          style: GoogleFonts.lato(
                              color: Colors.black, fontSize: 16.0)),
                      Text('•\tPandai Menggunakan Komputer',
                          style: GoogleFonts.lato(
                              color: Colors.black, fontSize: 16.0)),
                      Text('•\tBersedia lembur',
                          style: GoogleFonts.lato(
                              color: Colors.black, fontSize: 16.0)),
                    ],
                  ),
                ),
                SizedBox(height: 1.5 * SafePadding),
                Container(
                  padding: EdgeInsets.all(2 * SafePadding),
                  decoration: BoxDecoration(
                      color: LightGrey,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: SafePadding),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Colors.blue,
                            size: 28.0,
                          ),
                          SizedBox(width: 1.5 * SafePadding),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Deadline',
                                  style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500)),
                              SizedBox(height: BasePadding),
                              Text('26 Juni 2021',
                                  style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700))
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: SafePadding),
                      Row(
                        children: [
                          Icon(
                            Icons.picture_in_picture_alt,
                            color: Colors.blue,
                            size: 28.0,
                          ),
                          SizedBox(width: 1.5 * SafePadding),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Interview',
                                  style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500)),
                              SizedBox(height: BasePadding),
                              Text('27 Juni 2021',
                                  style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
