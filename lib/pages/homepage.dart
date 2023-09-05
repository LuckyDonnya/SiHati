import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sihati/components/button_permohonan.dart';
import 'package:sihati/pages/login.dart';
import '../components/search_button.dart';

class homepage extends StatefulWidget {
  homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 252, 246, 246),

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
                  )
                ],
              ),
              SizedBox(
                height: 75,
              ),
              MySearch(
                controller: controller,
                hintText: "Cari Layanan Sekarang",
                obscuretext: false,
                Widget1: Icon(
                  Icons.search,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              button_permohonan(
                  name: "Akta Kelahiran",
                  name2:
                      "Akta Kelahiran merupakan legalitas yang\nmembuktikan seseorang benar telah lahir."),
              SizedBox(
                height: 20,
              ),
              button_permohonan(
                  name: "Akta Kematian",
                  name2:
                      "Akta Kelahiran merupakan legalitas yang\nmembuktikan seseorang benar telah lahir.")
            ],
          ),
        ),
      ),
    );
  }
}
