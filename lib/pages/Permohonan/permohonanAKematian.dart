import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sihati/pages/Permohonan/dtAktaKematian.dart';
import 'package:sihati/pages/Permohonan/permohonanAKelahiran.dart';
// import 'package:sihati/components/button_permohonan.dart';
// import 'package:sihati/pages/permohonan.dart';
// import 'package:sihati/pages/ajukanPermohonan/dataPemohon.dart';
import '../../components/search_button.dart';

class permohonanAKematian extends StatefulWidget {
  permohonanAKematian({super.key});

  @override
  State<permohonanAKematian> createState() => _permohonanAKematianState();
}

class _permohonanAKematianState extends State<permohonanAKematian> {
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
                  Text(
                    "Daftar Permohonan Saya",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 33,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 15, right: 5)),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 51,
                      width: 170,
                      // padding: EdgeInsets.all(20),
                      // margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Akta Kelahiran",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 51,
                      width: 170,
                      // padding: EdgeInsets.all(20),
                      // margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: Color(0xff3883F3),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Akta Kematian",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black54),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 33,
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
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 20),
                height: 100,
                width: 388,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffF4F4F4)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/logokominfo.png",
                          height: 41,
                          width: 31,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "FULAN",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Color(0xff3883F3)),
                            ),
                            Text(
                              "Nama Pelapor   : Fulani \nNIK Pelapor         : 0200202020202",
                              style: GoogleFonts.poppins(fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return dtAktaKematian();
                          }),
                        );
                      },
                      child: Container(
                        height: 38,
                        width: 87,
                        // padding: EdgeInsets.all(20),
                        // margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            color: Color(0xff3883F3),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            " Lihat\nDetail",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 9,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
