import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sihati/menu.dart';
import 'package:sihati/pages/setting.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(children: [
            Padding(padding: EdgeInsets.only(left: 175)),
            Text(
              "Profile",
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 130,
            ),
            InkWell(
              child: Icon(Icons.settings),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return settings();
                  }),
                );
              },
            ),
          ]),
          SizedBox(
            height: 80,
          ),
          Column(
            children: [
              Image.asset("assets/person.png"),
              Text(
                "Dono Kasino",
                style: GoogleFonts.poppins(fontSize: 20),
              )
            ],
          ),
          SizedBox(
            height: 43,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(
                "Informasi Pribadi",
                style: GoogleFonts.poppins(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.0),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Nama                              : "),
                    Text("Dono Kasino",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(
                  height: 11,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 3,
                        color: Colors.grey[90],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Email                               : "),
                    Text("coba@gmail.com",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(
                  height: 11,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 3,
                        color: Colors.grey[90],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("NO Handphone              : "),
                    Text("084499118822",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(
                  height: 11,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 3,
                        color: Colors.grey[90],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("NIK                                   : "),
                    Text("2020202022020",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(
                  height: 11,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 3,
                        color: Colors.grey[90],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Tanggal Lahir                 : "),
                    Text("Fulani",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(
                  height: 11,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 3,
                        color: Colors.grey[90],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Jenis Kelamin                 : "),
                    Text("", style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(
                  height: 11,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 3,
                        color: Colors.grey[90],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Jenis Pekerjaan             : "),
                    Text("", style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(
                  height: 11,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 3,
                        color: Colors.grey[90],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Alamat Lengkap             : "),
                    Text("", style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
