import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sihati/components/button.dart';
import 'package:sihati/components/textField.dart';
import 'package:sihati/menu.dart';
import 'package:sihati/pages/login.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool? _isChecked = false;

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final nikController = TextEditingController();
  final nohpController = TextEditingController();
  final kpasswordController = TextEditingController();
  final controller = TextEditingController();

  void _toggleCheckbox(bool value) {
    setState(() {
      _isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
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
              SizedBox(
                height: 40,
              ),
              Text(
                "Selamat Datang",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "Di Aplikasi SiHati Online Kota Banda Aceh",
                style: GoogleFonts.poppins(fontSize: 12, color: Colors.black54),
              ),
              SizedBox(
                height: 40,
              ),
              MyTextField(
                  controller: usernameController,
                  hintText: "Nama Lengkap",
                  obscuretext: false),
              SizedBox(
                height: 10,
              ),
              MyTextField(
                  controller: emailController,
                  hintText: "Email",
                  obscuretext: false),
              SizedBox(
                height: 10,
              ),
              MyTextField(
                  controller: nikController,
                  hintText: "NIK (No KTP)",
                  obscuretext: false),
              SizedBox(
                height: 10,
              ),
              MyTextField(
                  controller: nohpController,
                  hintText: "NO HP",
                  obscuretext: false),
              SizedBox(
                height: 10,
              ),
              MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obscuretext: true),
              SizedBox(
                height: 10,
              ),
              MyTextField(
                  controller: kpasswordController,
                  hintText: "Konfirmasi Password",
                  obscuretext: true),
              // SizedBox(height: 10),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 6)),
                  Checkbox(
                    value: _isChecked,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = value;
                      });
                    },
                  ),
                  Column(
                    children: [
                      Text(
                        'Dengan ini saya menyatakan kebenaran data yang diisikan',
                        style: GoogleFonts.poppins(fontSize: 11),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),

              MyButton(
                ontap: () {
                  if (_isChecked == true) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return menu();
                      }),
                    );
                  } else {
                    return;
                  }
                },
                nameBtn: "Sign Up",
              ),
              SizedBox(height: 35),
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
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return login();
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
