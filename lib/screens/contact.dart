import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width,
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Opacity(
                    opacity: 0.6,
                    child: Image.asset(
                      'assets/chat.png',
                      height: height * 0.3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    child: Text(
                      "Contact",
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
              ),
              Column(
                children: [
                  Row(
                    children: [
                      const ContactTile(
                        contactIcon: Icons.phone,
                        contactTitle: "Phone",
                        contactInfo: "+92 301 5580405",
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      const ContactTile(
                        contactIcon: Icons.mail,
                        contactInfo: "rajasaifi49@gmail.com",
                        contactTitle: "Email",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Row(
                    children: const [
                      ContactTile(
                        contactIcon: Icons.home,
                        contactTitle: "Address",
                        contactInfo: "Gujjar Khan, Pakistan",
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class ContactTile extends StatelessWidget {
  final String? contactTitle;
  final String? contactInfo;
  final IconData? contactIcon;

  const ContactTile({
    super.key,
    this.contactTitle,
    this.contactInfo,
    this.contactIcon,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.3,
      width: width * 0.2,
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
          Icon(contactIcon, size: height * 0.07),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            contactTitle!,
            style: GoogleFonts.satisfy(
                fontSize: height * 0.03, color: Colors.grey[500]),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(contactInfo!)
        ],
      ),
    );
  }
}
