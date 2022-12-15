import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/social__icons_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  _launchURL(String urlLink) async {
    if (await canLaunchUrl(Uri.parse(urlLink))) {
      await canLaunchUrl(Uri.parse(urlLink));
    } else {
      const Text('Cannot launch the url');
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    "Hey!",
                    style: GoogleFonts.merienda(fontSize: height * 0.1),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Image.network(
                    "https://media.giphy.com/media/hvRJCLFzcasrR4ia7z/giphy.gif",
                    height: height * 0.1,
                  )
                ],
              ),
              Text(
                "I'm Saif Waheed",
                style: GoogleFonts.merienda(fontSize: height * 0.1),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Text(
                "A self taught Flutter Developer, tech enthusiast, open source\ncontributor and professional video editor. Currently\npursuing the degree of Computer Science from\nCOMSATS University, Islamabad.\n\nWould Love to Connect! :) ",
                style: TextStyle(
                    fontSize: height * 0.025, color: Colors.grey[400]),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      icon: Icon(
                        SocialIcons.facebookSquared,
                        size: height * 0.03,
                      ),
                      onPressed: () {
                        _launchURL('https://www.facebook.com/raja.saif.786');
                      }),
                  IconButton(
                      icon: Icon(SocialIcons.instagram, size: height * 0.03),
                      onPressed: () {
                        _launchURL('https://www.instagram.com/safuraja7/');
                      }),
                  IconButton(
                      icon: Icon(SocialIcons.twitter, size: height * 0.03),
                      onPressed: () {
                        _launchURL('https://twitter.com/safuraja7');
                      }),
                ],
              )
            ],
          ),
          CircleAvatar(
            maxRadius: height * 0.25,
            child: CircleAvatar(
              maxRadius: height * 0.245,
              backgroundImage: const AssetImage('assets/saif.jpeg'),
            ),
          ),
        ],
      ),
    );
  }
}