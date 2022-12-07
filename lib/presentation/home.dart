import 'package:archiver/presentation/add.dart';
import 'package:archiver/presentation/constants/colors.dart';
import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:archiver/presentation/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final temp = List.filled(
        20,
        AccordionSection(
          sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
          isOpen: false,
          leftIcon: const Icon(Icons.calendar_month, color: Colors.white),
          headerBackgroundColor: cardHeaderBg,
          headerBackgroundColorOpened: selectedBg,
          header: Text(
            'November, 2022',
            style: TextStyle(color: white),
          ),
          content: Image.asset(
            "assets/images/test.jpg",
            scale: 1,
          ),
          contentHorizontalPadding: 0,
          contentVerticalPadding: 0,
          contentBorderWidth: 0,
          // onOpenSection: () => print('onOpenSection ...'),
          // onCloseSection: () => print('onCloseSection ...'),
        ));
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: homeBackground,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text("Archiver"),
      ),
      drawer: Drawer(
        child: SizedBox(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Center(child: Text('Menu')),
              ),
              ListTile(
                title: const Text('Logout'),
                onTap: () {
                  SchedulerBinding.instance.addPostFrameCallback((_) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  });
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.center,
        height: 65,
        width: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: purpule,
        ),
        child: TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return addNewWindow(context);
                },
              );
            },
            child: Icon(
              Icons.add,
              color: white,
              size: 25,
            )),
      ),
      body: SafeArea(
        child: Accordion(
            maxOpenSections: 2,
            headerBackgroundColorOpened: cardHeaderBg,
            scaleWhenAnimating: true,
            openAndCloseAnimation: true,
            headerPadding: const EdgeInsets.all(15),
            sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
            sectionClosingHapticFeedback: SectionHapticFeedback.light,
            children: temp.map((e) => e).toList()),
      ),
    );
  }
}
