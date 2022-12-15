import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width,
      height: height,
      child: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              "Experience",
              style: GoogleFonts.satisfy(fontSize: height * 0.05),
            ),
          ),
          SizedBox(
            height: height * 0.15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              ExpContainer(
                expTitle: "Flutter",
                expDesc: "Intern at Exact, Islamabad",
                imgAssetPath: "assets/flutter.png",
                expDetails:
                    "Worked with Cross platform applications in flutter i.e. Mobile including Android and iOS and Web application. Also handled REST APIs calls and database.\nIntegrated payment gateway like Stripe and VISA payment method.",
              ),
              ExpContainer(
                expTitle: "Video Editing",
                expDesc: "Movie Editor at Sani Studio, Islamabad",
                imgAssetPath: "assets/pp.png",
                expDetails:
                    "Worked for 3 months as video editor for various types of platforms e.g YouTube, Facebook ads, Instagram ads and other major editing like Wedding events, parties, gaming montages etc.",
              ),
              ExpContainer(
                expTitle: "Front End Development",
                expDesc: "Intern at The A Web, Islamabad",
                imgAssetPath: "assets/vs.png",
                expDetails:
                    "Intern as Front End Developer for 3 Months.\nWorked with HTML5, CSS, Bootstrap and little bit with React.js in Group.",
              )
            ],
          )
        ],
      )),
    );
  }
}

class ExpContainer extends StatelessWidget {
  final String? expTitle;
  final String? expDesc;
  final String? expDetails;
  final String? imgAssetPath;

  const ExpContainer({
    super.key,
    this.expTitle,
    this.expDesc,
    this.expDetails,
    this.imgAssetPath,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(10.0),
      height: height * 0.5,
      width: width * 0.2,
      decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(32.0),
          boxShadow: const [
            BoxShadow(
                color: Colors.black, blurRadius: 8.0, offset: Offset(0, 2.0))
          ]),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                imgAssetPath!,
                height: height * 0.1,
                width: width * 0.1,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              expTitle!,
              style: GoogleFonts.satisfy(fontSize: height * 0.03),
            ),
            Text(
              expDesc!,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              expDetails!,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
