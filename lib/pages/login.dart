import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sihati/components/button.dart';
// import 'package:sihati/components/search_button.dart';
// import 'package:sihati/components/squar_tile.dart';
import 'package:sihati/components/textField.dart';
import 'package:sihati/menu.dart';
import 'package:sihati/pages/OnboardingScreen.dart';
import 'package:sihati/pages/signup.dart';
// import 'package:sihati/pages/homepage.dart';
// import 'package:sihati/pages/signup.dart';
// import 'package:sihati/menu.dart';

class login extends StatelessWidget {
  login({super.key});

//edit text
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final controller = TextEditingController();

//sign in
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Image.asset(
                    "assets/sihationline.png",
                    height: 52,
                    width: 170,
                  ),
                ],
              ),

              //logo
              SizedBox(height: 45),
              //welcome back
              Text(
                'Selamat Datang',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Di Aplikasi SiHati Online Kota Banda Aceh',
                style: GoogleFonts.poppins(fontSize: 12, color: Colors.black54),
              ),
              SizedBox(
                height: 60,
              ),

              MyTextField(
                controller: usernameController,
                hintText: "E - mail",
                obscuretext: false,
              ),

              SizedBox(
                height: 10,
              ),
              //password myseacrh

              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscuretext: true,
              ),

              SizedBox(height: 20),
              //login
              MyButton(
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return menu();
                    }),
                  );
                },
                nameBtn: "Login",
              ),
              SizedBox(height: 16),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Lupa Password ?',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Color(0xFF230A06),
                      ),
                    ),
                  ],
                ),
              ), //link next pages

              SizedBox(
                height: 280,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Anda belum memiliki akun ?",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return SignupPage();
                        }),
                      );
                    },
                    child: Text(
                      "Daftar",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
