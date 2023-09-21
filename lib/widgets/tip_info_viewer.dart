import 'package:flutter/material.dart';

class TipInfoViewerWidget extends StatelessWidget {
  TipInfoViewerWidget(
      {@required this.des, @required this.imageUrl, @required this.title});
  String? title;
  String? des;
  String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imageUrl!),
          Text(
            title!,
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 32),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            des!,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 18),
          ),
        ],
      ),
    );
  }
}
