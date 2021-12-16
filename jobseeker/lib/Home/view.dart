import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobseeker/Joblist/view.dart';
import 'package:jobseeker/constants.dart';
import 'package:jobseeker/Jobdetail/view.dart';
import 'package:jobseeker/jobs.dart';
import 'package:jobseeker/Contact/view.dart';

class HomePage extends StatefulWidget {
  final String displayName;
  HomePage({required this.displayName});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Jobs> recommendedJobs = [
    Jobs(
        jobPosition: 'Tukang Kebun',
        companyName: 'Google',
        location: 'Tangerang',
        salaryRange: '\ 5.000.000',
        logoName: 'logo.png',
        savedJob: false),
    Jobs(
        jobPosition: 'Office Boy',
        companyName: 'Gojek',
        location: 'Jakarta',
        salaryRange: '\ 5.000.000',
        logoName: 'logo2.png',
        savedJob: false),
    Jobs(
        jobPosition: 'Supervisor',
        companyName: 'Tokopedia',
        location: 'Medan',
        salaryRange: '\ 5.000.000',
        logoName: 'logo.png',
        savedJob: false)
  ];

  List<Jobs> recentJobs = [
    Jobs(
        jobPosition: 'HRD',
        companyName: 'Apple',
        location: 'Bali',
        salaryRange: '\ 5.000.000',
        logoName: 'logo2.png',
        savedJob: false),
    Jobs(
        jobPosition: 'Manager',
        companyName: 'Shopee',
        location: 'Cirebon',
        salaryRange: '\ 5.000.000',
        logoName: 'logo.png',
        savedJob: false)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('testaja@gmail.com'),
              accountName: Text(widget.displayName),
            ),
            ListTile(
              onTap: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage(displayName: widget.displayName);
              })),
              title: Text('Home'),
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
            ),
            ListTile(
              onTap: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                return jobList(displayName: widget.displayName);
              })),
              title: Text('Jobs List'),
              leading: CircleAvatar(
                child: Icon(Icons.list),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/'),
              title: Text('Log out'),
              leading: CircleAvatar(
                child: Icon(Icons.verified_user),
              ),
            ),
            ListTile(
              onTap: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Contact();
              })),
              title: Text('AboutUs'),
              leading: CircleAvatar(
                child: Icon(Icons.verified_user),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: LightGrey,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: RichText(
            text: TextSpan(
                text: 'Job',
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w800),
                children: <TextSpan>[
              TextSpan(
                  text: 'seeker',
                  style: GoogleFonts.poppins(
                      color: Colors.blue, fontWeight: FontWeight.w800))
            ])),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(
                  SafePadding, 2 * SafePadding, SafePadding, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hii ${widget.displayName},',
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w800)),
                  SizedBox(height: 2.0),
                  Text('Mari temukan pekerjaanmu',
                      style: GoogleFonts.poppins(
                          color: DarkGrey,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500))
                ],
              ),
            ),
            SizedBox(height: 1.5 * SafePadding),
            Container(
              padding: EdgeInsets.symmetric(horizontal: SafePadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Terbaru',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 2 * BasePadding),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: recentJobs.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return JobsDetail(
                              jobPosition: recentJobs[index].jobPosition,
                              companyName: recentJobs[index].companyName,
                              location: recentJobs[index].location,
                              salaryRange: recentJobs[index].salaryRange,
                              logoName: recentJobs[index].logoName,
                            );
                          }));
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: SafePadding),
                          padding: EdgeInsets.all(SafePadding),
                          decoration: BoxDecoration(
                              border: Border.all(color: LightGrey)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/${recentJobs[index].logoName}',
                                      scale: 2.0,
                                    ),
                                    SizedBox(width: SafePadding),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(recentJobs[index].jobPosition,
                                            style: GoogleFonts.lato(
                                                color: Colors.black,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w700)),
                                        SizedBox(height: 2.0),
                                        Text(recentJobs[index].companyName,
                                            style: GoogleFonts.lato(
                                                color: DarkGrey,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w700)),
                                        SizedBox(height: 4.0),
                                        Text(recentJobs[index].location,
                                            style: GoogleFonts.lato(
                                              color: DarkGrey,
                                            )),
                                        SizedBox(height: 4.0),
                                        Text(recentJobs[index].salaryRange,
                                            style: GoogleFonts.lato(
                                                color: DarkGrey,
                                                fontWeight: FontWeight.w600))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            SizedBox(height: 1.5 * SafePadding),
            Container(
              padding: EdgeInsets.symmetric(horizontal: SafePadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rekomendasi',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 2 * BasePadding),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: recommendedJobs.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return JobsDetail(
                              jobPosition: recommendedJobs[index].jobPosition,
                              companyName: recommendedJobs[index].companyName,
                              location: recommendedJobs[index].location,
                              salaryRange: recommendedJobs[index].salaryRange,
                              logoName: recommendedJobs[index].logoName,
                            );
                          }));
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: SafePadding),
                          padding: EdgeInsets.all(SafePadding),
                          decoration: BoxDecoration(
                              border: Border.all(color: LightGrey)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/${recommendedJobs[index].logoName}',
                                      scale: 2.0,
                                    ),
                                    SizedBox(width: SafePadding),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(recommendedJobs[index].jobPosition,
                                            style: GoogleFonts.lato(
                                                color: Colors.black,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w700)),
                                        SizedBox(height: 2.0),
                                        Text(recommendedJobs[index].companyName,
                                            style: GoogleFonts.lato(
                                                color: DarkGrey,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w700)),
                                        SizedBox(height: 4.0),
                                        Text(recommendedJobs[index].location,
                                            style: GoogleFonts.lato(
                                              color: DarkGrey,
                                            )),
                                        SizedBox(height: 4.0),
                                        Text(recommendedJobs[index].salaryRange,
                                            style: GoogleFonts.lato(
                                                color: DarkGrey,
                                                fontWeight: FontWeight.w600))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
