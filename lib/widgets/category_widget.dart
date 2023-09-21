import 'package:flutter/material.dart';

class CatergoryWidget extends StatelessWidget {
  CatergoryWidget(@required this.image, @required this.name);
  String? image;
  String? name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xfff0f0f0),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image(
                width: 70,
                height: 70,
                image: AssetImage(
                  image!,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          name!,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        )
      ],
    );
  }
}
