import 'package:card_widget/card.dart';
import 'package:card_widget/list_card.dart';
import 'package:card_widget/model_card.dart';
import 'package:card_widget/systemtoolbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyContent extends StatefulWidget {
  const MyContent({super.key});

  @override
  State<MyContent> createState() => _MyContentState();
}

class _MyContentState extends State<MyContent> {
  @override
  Widget build(BuildContext context) {
    List<ModelCard2> ok = ModelCard2.getCardItem2();
    SystemToolBar.getDarkTheme();
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyCard(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Frequently Used",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const ListCard(),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("Service",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black))),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(
                  2,
                  (index) => Card(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: List.from([
                            BoxShadow(
                                blurRadius: 30,
                                offset: const Offset(0, 16),
                                spreadRadius: 0,
                                color:
                                    const Color(0xFF1B1F44).withOpacity(0.08))
                          ])),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: ok[index].backgroundCard,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.all(5),
                            child: Image.asset(
                              ok[index].asset,
                              width: 50,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            ok[index].title,
                            style: GoogleFonts.poppins(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
