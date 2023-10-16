import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sihati/pages/login.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(children: [
            Padding(
                padding: EdgeInsets.only(
              right: 20,
            )),
            InkWell(
              child: Icon(Icons.keyboard_backspace),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              width: 115,
            ),
            Text(
              "Pengaturan",
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.bold),
            )
          ]),
          SizedBox(
            height: 27,
          ),
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                left: 20,
              )),
              Icon(Icons.lock_reset),
              SizedBox(
                width: 10,
              ),
              Text(
                "Ganti Sandi",
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              SizedBox(
                width: 225,
              ),
              InkWell(
                child: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Navigator.pop(context);
                },
              ),
            ],
          ),
          SizedBox(
            height: 19,
          ),
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                left: 20,
              )),
              Icon(Icons.lock),
              SizedBox(
                width: 10,
              ),
              Text(
                "Pernyataan Privasi",
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              SizedBox(
                width: 168,
              ),
              InkWell(
                child: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Navigator.pop(context);
                },
              ),
            ],
          ),
          SizedBox(
            height: 600,
          ),
          Row(children: [
            Padding(
                padding: EdgeInsets.only(
              right: 20,
            )),
            InkWell(
              child: Icon(Icons.logout),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return login();
                  }),
                );
              },
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Keluar",
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.bold),
            )
          ]),
        ],
      )),
    );
  }
}
