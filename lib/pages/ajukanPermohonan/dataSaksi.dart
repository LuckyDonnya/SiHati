import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sihati/components/button.dart';
import 'package:sihati/components/button_permohonan.dart';
import 'package:sihati/components/textFileds.dart';
import 'package:sihati/pages/homepage.dart';
import 'package:sihati/pages/ajukanPermohonan/dataPelapor.dart';
import 'package:sihati/pages/ajukanPermohonan/unggahDokumen.dart';
import 'package:sihati/widgets/button_permohonan.dart';

// ignore: camel_case_types
class dataSaksi extends StatefulWidget {
  const dataSaksi({super.key});

  @override
  State<dataSaksi> createState() => _dataSaksiState();
}

class _dataSaksiState extends State<dataSaksi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return homepage();
                      }),
                    );
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Permohonan Akta Kelahiran",
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.bold),
                )
              ]),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 17, 20, 0),
                child: Container(
                  height: 26,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ButtonPermohonan(
                        textButton: "1. Data Pemohon",
                        btnColor: Color(0xff3883F3),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "2. Data Bayi",
                        btnColor: Color(0xff3883F3),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "3. Data Orang tua",
                        btnColor: Color(0xff3883F3),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "4. Data Pelapor",
                        btnColor: Color(0xff3883F3),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "5. Data Saksi",
                        btnColor: Color(0xffD9D9D9),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "6. Unggah Dokumen",
                        btnColor: Color(0xffD9D9D9),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "7. Konrifmasi 1",
                        btnColor: Color(0xffD9D9D9),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "8. Konfirmasi 2",
                        btnColor: Color(0xffD9D9D9),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "9. Konfirmasi 3",
                        btnColor: Color(0xffD9D9D9),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "10. Konfirmasi 4",
                        btnColor: Color(0xffD9D9D9),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "11. Konfirmasi 5",
                        btnColor: Color(0xffD9D9D9),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "12. Konfirmasi 6",
                        btnColor: Color(0xffD9D9D9),
                        ontap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textFiels(
                      label: "NIK Saksi Pertama",
                      hintText: "332616060807019",
                    ),
                    SizedBox(height: 8),
                    textFiels(
                      label: "Nama Saksi Pertama",
                      hintText: "Muhammad Fadlan",
                    ),
                    SizedBox(height: 8),
                    textFiels(
                      label: "Umur Saksi Pertama",
                      hintText: "30 thn",
                    ),
                    SizedBox(height: 8),
                    textFiels(
                      label: "Jenis Kelamin Saksi Pertama",
                      hintText: "Laki-laki",
                    ),
                    SizedBox(height: 8),
                    textFiels(
                      label: "Jenis Pekerjaan Saksi Pertama",
                      hintText: "PNS",
                    ),
                    SizedBox(height: 8),
                    textFiels(
                      label: "Alamat Lengkap Saksi Pertama",
                      hintText: "jl. blang bintang lama",
                    ),
                    SizedBox(height: 40),
                    textFiels(
                      label: "NIK Saksi Kedua",
                      hintText: "332616060807019",
                    ),
                    SizedBox(height: 8),
                    textFiels(
                      label: "Nama Saksi Kedua",
                      hintText: "Muhammad Fadlan",
                    ),
                    SizedBox(height: 8),
                    textFiels(
                      label: "Umur Saksi Kedua",
                      hintText: "30 thn",
                    ),
                    SizedBox(height: 8),
                    textFiels(
                      label: "Jenis Kelamin Saksi Kedua",
                      hintText: "Laki-laki",
                    ),
                    SizedBox(height: 8),
                    textFiels(
                      label: "Jenis Pekerjaan Saksi Kedua",
                      hintText: "PNS",
                    ),
                    SizedBox(height: 8),
                    textFiels(
                      label: "Alamat Lengkap Saksi Kedua",
                      hintText: "jl. blang bintang lama",
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Sebelumnya"),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return unggahDokumen();
                        }),
                      );
                    },
                    child: Text("Selanjutnya"),
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
