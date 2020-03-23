import 'package:flutter/material.dart';
import 'package:flutter_login_signup/src/loginPage.dart';
import 'package:flutter_login_signup/src/screens/orders.dart';
import 'package:flutter_login_signup/src/utils/TextStyles.dart';
import 'package:flutter_login_signup/src/utils/consts.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: AppBar(
        backgroundColor: kwhite,
        title: BoldText("Profile", 25, kblack),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: kgreyDark,
                    radius: 50,
                    child: Icon(
                      Icons.person,
                      size: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        BoldText("Mohammad Galore", 20.0, kblack),
                        Row(
                          children: <Widget>[
                            NormalText("Delhi, India", kgreyDark, 16),
                            Icon(
                              Icons.location_on,
                              color: kgreyDark,
                              size: 15.0,
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            NormalText("admin@gmail.com", kgreyDark, 16),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            NormalText("+257649739292", kgreyDark, 16),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 2,
              color: kgreyFill,
            ),
            SizedBox(
              height: 30.0,
            ),
            ProfileItem(Icons.person, "My Address"),
            ProfileItem(Icons.credit_card, "My Orders"),
            ProfileItem(Icons.settings, "Settings"),
            ProfileItem(Icons.library_books, "Terms and Conditions"),
            ProfileItem(Icons.info, "About Us "),
            ProfileItem(Icons.exit_to_app, "Sign Out"),
          ],
        ),
      ),
    );
  }

  Widget ProfileItem(IconData icon, String text) {
    return InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Orders()));
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 9),
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                color: kdarkBlue,
                size: 40,
              ),
              SizedBox(
                width: 8,
              ),
              NormalText(text, kblack, 20.0)
            ],
          ),
        ));
  }
}
