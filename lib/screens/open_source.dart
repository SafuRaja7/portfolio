import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class OpenSource extends StatelessWidget {
  const OpenSource({super.key});

  _launchURL(String urlLink) async {
    if (await canLaunchUrl(Uri.parse(urlLink))) {
      await canLaunchUrl(Uri.parse(urlLink));
    } else {
      const Text('could not launch');
    }
  }

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
                "Open Source",
                style: GoogleFonts.satisfy(fontSize: height * 0.05),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            SizedBox(
              height: height * 0.5,
              width: width,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 15.0),
                itemCount: 6,
                separatorBuilder: (context, index) {
                  return VerticalDivider(
                    color: Colors.transparent,
                    width: width * 0.03,
                  );
                },
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const GitHubRepo(
                    assetsImage: 'assets/flutter.png',
                    repoName: 'GitHub Repo Name',
                    repoDesc: 'GitHub Repo Description',
                  );
                },
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            SizedBox(
              height: height * 0.06,
              width: width * 0.15,
              child: ElevatedButton(
                onPressed: () {
                  _launchURL("https://github.com/safuraja7");
                },
                child: const Text("See More"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GitHubRepo extends StatelessWidget {
  final String? assetsImage;
  final String? repoName;
  final String? repoDesc;

  const GitHubRepo({
    super.key,
    this.assetsImage,
    this.repoName,
    this.repoDesc,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        const OpenSource()._launchURL("https://github.com/safuraja7");
      },
      child: Container(
        height: height * 0.4,
        width: width * 0.3,
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
              assetsImage!,
              height: height * 0.05,
              width: width * 0.1,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              repoName!,
              style: GoogleFonts.satisfy(fontSize: height * 0.03),
            ),
            Text(repoDesc!)
          ],
        ),
      ),
    );
  }
}
