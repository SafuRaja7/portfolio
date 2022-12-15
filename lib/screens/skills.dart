import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

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
                "What I Do",
                style: GoogleFonts.satisfy(fontSize: height * 0.05),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              "Not a Professional, But I can be of some help to you :)",
              style: TextStyle(
                  fontSize: height * 0.018,
                  letterSpacing: 1.0,
                  color: Colors.grey[700]),
            ),
            SizedBox(
              height: height * 0.15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/work.png',
                ),
                Column(
                  children: [
                    service('Mobile App Development', mobDevDesc, context),
                    service('Front-End Development', frontEndDesc, context),
                    service('Video Editing', videoEditingDesc, context),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  final mobDevDesc =
      "I've been working with Flutter with quite a few months now and I can get you mobile apps for android in no time. Considering iOS development, I don't own an MacBook for now so that's why cannot develop apps for App Store. Hopefully, this piece of puzzle will be filled in future :)";
  final frontEndDesc =
      "Considering the Front-End Development, I'm quite experienced with HTML5, CSS3 and BOOTSTRAP. Worked with a lot of front-end projects.";
  final videoEditingDesc =
      "Apart from my Tech interest, I'm really well expereienced with Video Editing. I've been working with market required softwares like Adobe Premiere Pro. Can get you promo videos, tik-tok edits, memes etc.";

  Widget service(
      String workTitle, String workDescription, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.3,
        child: ListTile(
          title: Text(
            workTitle,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.025,
            ),
          ),
          subtitle: Text(
            workDescription,
            style: const TextStyle(letterSpacing: 1.0, height: 1.5),
          ),
        ),
      ),
    );
  }
}

class WorkImage extends StatelessWidget {
  const WorkImage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Text(
          "Lets' Build Together...!",
          style: GoogleFonts.satisfy(height: height * 0.03),
        ),
        Image.asset(
          'assets/work.png',
          height: height * 0.05,
        )
      ],
    );
  }
}
