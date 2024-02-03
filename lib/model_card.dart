import 'package:flutter/material.dart';

class CardItem {
  final Color backgroundCard;
  final String title, foto;

  CardItem(
      {required this.backgroundCard, required this.title, required this.foto});

  static List<CardItem> getCardItem() {
    List<CardItem> list = [
      CardItem(
          backgroundCard: const Color(0xFF38D79F).withOpacity(0.2),
          title: "Mobile\nRecharge",
          foto: "assets/items/Phone.png"),
      CardItem(
          backgroundCard: const Color(0xFFFF6E66).withOpacity(0.2),
          title: "Bill\nPayments",
          foto: "assets/items/Vector.png"),
      CardItem(
          backgroundCard: const Color(0xFFFFC633).withOpacity(0.2),
          title: "Bank\nTransfer",
          foto: "assets/items/Filled.png"),
      CardItem(
          backgroundCard: const Color(0xFF3642DA).withOpacity(0.2),
          title: "Request\nMoney",
          foto: "assets/items/Coins, Money, Plus, Add.png"),
      CardItem(
          backgroundCard: const Color(0xFFDA36CA).withOpacity(0.2),
          title: "Transaction\nHistory",
          foto: "assets/items/Chart.png")
    ];
    return list;
  }
}

class ModelCard2 {
  final Color backgroundCard;
  final String asset, title;
  ModelCard2(
      {required this.backgroundCard, required this.asset, required this.title});
  static List<ModelCard2> getCardItem2() {
    List<ModelCard2> list = [
      ModelCard2(
          backgroundCard: const Color(0xFFFDEEEA),
          asset: "assets/Group.png",
          title: "Open Account"),
      ModelCard2(
          backgroundCard: const Color(0xFFE4F3F4),
          asset: "assets/creditcards.png",
          title: "Manage Cards"),
    ];
    return list;
  }
}
