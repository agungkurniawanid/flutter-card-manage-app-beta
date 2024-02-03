import 'package:card_widget/model_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListCard extends StatefulWidget {
  const ListCard({super.key});

  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
    List<CardItem> itemsCard = CardItem.getCardItem();
    return Container(
        width: double.infinity,
        height: 150,
        alignment: Alignment.center,
        color: Colors.transparent,
        child: ListView.separated(
            separatorBuilder: (context, index) {
              return Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: itemsCard[index].backgroundCard,
                            borderRadius: BorderRadius.circular(20.0)),
                        width: 80,
                        padding: const EdgeInsets.all(20.0),
                        child: Center(
                          child: Image.asset(
                            itemsCard[index].foto,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        itemsCard[index].title,
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ));
            },
            itemCount: itemsCard.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const SizedBox(
                width: 20,
              );
            }));
  }
}
