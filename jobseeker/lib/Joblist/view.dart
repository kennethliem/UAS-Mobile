import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobseeker/Jobdetail/view.dart';
import 'package:jobseeker/constants.dart';
import 'package:jobseeker/jobs.dart';
import 'package:jobseeker/Home/view.dart';
import 'package:jobseeker/Contact/view.dart';

class jobList extends StatefulWidget {
  final String displayName;
  jobList({required this.displayName});

  @override
  _JobListState createState() => _JobListState();
}

class _JobListState extends State<jobList> {
  List<Jobs> allJobs = [
    Jobs(
        jobPosition: 'Frontend Developer',
        companyName: 'Google',
        location: 'Tangerang',
        salaryRange: '\ 5.000.000',
        logoName: 'google.png',
        savedJob: false),
    Jobs(
        jobPosition: 'Frontend Developer',
        companyName: 'Gojek',
        location: 'Jakarta',
        salaryRange: '\ 5.000.000',
        logoName: 'gojek.png',
        savedJob: false),
    Jobs(
        jobPosition: 'Frontend Developer',
        companyName: 'Tokopedia',
        location: 'Medan',
        salaryRange: '\ 5.000.000',
        logoName: 'tokopedia.png',
        savedJob: false),
    Jobs(
        jobPosition: 'Frontend Developer',
        companyName: 'Apple',
        location: 'Bali',
        salaryRange: '\ 5.000.000',
        logoName: 'apple.png',
        savedJob: false),
    Jobs(
        jobPosition: 'Frontend Developer',
        companyName: 'Shopee',
        location: 'Cirebon',
        salaryRange: '\ 5.000.000',
        logoName: 'shopee.png',
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
            SizedBox(height: 1.5 * SafePadding),
            Container(
              padding: EdgeInsets.symmetric(horizontal: SafePadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Daftar Pekerjaan Yang Tersedia',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 2 * BasePadding),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: allJobs.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return JobsDetail(
                              jobPosition: allJobs[index].jobPosition,
                              companyName: allJobs[index].companyName,
                              location: allJobs[index].location,
                              salaryRange: allJobs[index].salaryRange,
                              logoName: allJobs[index].logoName,
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
                                      'assets/${allJobs[index].logoName}',
                                      scale: 2.0,
                                    ),
                                    SizedBox(width: SafePadding),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(allJobs[index].jobPosition,
                                            style: GoogleFonts.lato(
                                                color: Colors.black,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w700)),
                                        SizedBox(height: 2.0),
                                        Text(allJobs[index].companyName,
                                            style: GoogleFonts.lato(
                                                color: DarkGrey,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w700)),
                                        SizedBox(height: 4.0),
                                        Text(allJobs[index].location,
                                            style: GoogleFonts.lato(
                                              color: DarkGrey,
                                            )),
                                        SizedBox(height: 4.0),
                                        Text(allJobs[index].salaryRange,
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

class JobList {}
