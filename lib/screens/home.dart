import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/screens/contact.dart';
import 'package:my_portfolio/screens/experience.dart';
import 'package:my_portfolio/screens/home_page.dart';
import 'package:my_portfolio/screens/open_source.dart';
import 'package:my_portfolio/screens/skills.dart';
import 'package:my_portfolio/screens/tools.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final List<Widget> sections = [
      const HomePage(),
      const Skills(),
      const Experience(),
      const OpenSource(),
      const Tools(),
      const Contact(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '< Saif />',
          style: GoogleFonts.satisfy(fontSize: 32),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              animateToIndex(0);
            },
            child: const Text('Home'),
          ),
          ElevatedButton(
            onPressed: () {
              animateToIndex(1);
            },
            child: const Text('Skills'),
          ),
          ElevatedButton(
            onPressed: () {
              animateToIndex(2);
            },
            child: const Text('Experience'),
          ),
          ElevatedButton(
            onPressed: () {
              animateToIndex(3);
            },
            child: const Text('Open Source'),
          ),
          ElevatedButton(
            onPressed: () {
              animateToIndex(4);
            },
            child: const Text('Tools & Tech'),
          ),
          ElevatedButton(
            onPressed: () {
              animateToIndex(5);
            },
            child: const Text('Contact'),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: sections.length,
          controller: _scrollController,
          itemBuilder: (context, index) {
            return sections[index];
          },
        ),
      ),
    );
  }

  animateToIndex(int index) {
    _scrollController.animateTo(
      MediaQuery.of(context).size.height * index,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }
}
