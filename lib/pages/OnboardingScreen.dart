import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sihati/pages/login.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _pages = [
    OnboardingPage(
      title: 'SELAMAT DATANG DI SIHATI ONLINE',
      description: '',
      description2: "",
      imagePath: 'assets/people.png',
      imagePath2: "assets/sihationline.png",
    ),
    OnboardingPage(
      title: 'TENTANG APLIKASI',
      description:
          'SIHATI ONLINE merupakan sebuah inovasi dari Dinas Kependudukan dan Pencatatan Sipil Kota Banda Aceh yang bertujuan untuk memberikan kemudahan bagi masyarakat Kota Banda Aceh untuk melakukan pengurusan dokumen kependudukan berupa Akta Kelahiran dan Akta Kematian secara online.',
      description2: "SiHati Online Kota Banda Aceh",
      imagePath: 'assets/laptop.png',
      imagePath2: "assets/sihationline.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff94AFFF),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _pages.length,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemBuilder: (context, index) {
                return _pages[index];
              },
            ),
          ),
          // SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildPageIndicator(),
          ),
          SizedBox(height: 20.0),
          _currentPage != _pages.length - 1
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        minimumSize: Size(206, 60),
                      ),
                      onPressed: () {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      child: Text(
                        'Lanjut',
                        style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 99, 99, 99),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(bottom: 40, top: 10),
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        minimumSize: Size(206, 60),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return login();
                          },
                        ));
                      },
                      child: Text(
                        'Mulai',
                        style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 99, 99, 99),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
        ],
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < _pages.length; i++) {
      indicators.add(
        i == _currentPage ? _indicator(true) : _indicator(false),
      );
    }
    return indicators;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String description2;
  final String imagePath;
  final String imagePath2;

  OnboardingPage(
      {required this.title,
      required this.description,
      required this.description2,
      required this.imagePath,
      required this.imagePath2});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Image.asset(
                imagePath2,
                height: 52,
                width: 170,
              ),
            ],
          ),
          SizedBox(height: 95),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            description2,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 13, color: Colors.black54),
          ),
          SizedBox(height: 25),
          Image.asset(
            imagePath,
            height: 300,
            width: 320,
          ),
          SizedBox(height: 14.0),
          Container(
            padding: EdgeInsets.only(left: 13, right: 13),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 13.0, color: Colors.black54),
            ),
          ),

          // SizedBox(height: 30.0),
        ],
      ),
    );
  }
}
