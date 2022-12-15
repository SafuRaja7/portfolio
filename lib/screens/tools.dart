import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tools extends StatelessWidget {
  const Tools({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width,
      height: height,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: height * 0.25,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const ToolContainer(
                    toolImage: 'assets/flutter.png',
                    toolName: "Flutter",
                  ),
                  SizedBox(width: width * 0.02),
                  const ToolContainer(
                    toolImage: 'assets/dartLang.png',
                    toolName: "Dart",
                  ),
                  SizedBox(width: width * 0.02),
                  const ToolContainer(
                    toolImage: 'assets/firebase.png',
                    toolName: "Firebase",
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                children: [
                  const ToolContainer(
                    toolImage: 'assets/vs.png',
                    toolName: "VS Code",
                  ),
                  SizedBox(width: width * 0.02),
                  const ToolContainer(
                    toolImage: 'assets/as.png',
                    toolName: "Android Studio",
                  ),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Opacity(
                  opacity: 0.4,
                  child: Image.asset(
                    'assets/develop.png',
                    height: height * 0.5,
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: Text(
                  "Tools & Tech",
                  style: GoogleFonts.satisfy(fontSize: height * 0.05),
                ),
              ),
              SizedBox(
                width: width * 0.2,
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 1.0,
                    color: Colors.grey[600],
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ToolContainer extends StatelessWidget {
  final String? toolImage;
  final String? toolName;

  const ToolContainer({
    super.key,
    this.toolImage,
    this.toolName,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.2,
      width: width * 0.13,
      decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: const [
            BoxShadow(
                color: Colors.black, blurRadius: 8.0, offset: Offset(0, 2.0))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            toolImage!,
            height: height * 0.07,
            width: width * 0.07,
          ),
          SizedBox(height: height * 0.03),
          Text(
            toolName!,
            style: GoogleFonts.satisfy(fontSize: height * 0.03),
          )
        ],
      ),
    );
  }
}
