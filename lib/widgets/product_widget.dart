import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  ProductWidget({
    @required this.image,
    @required this.name,
    @required this.rate,
    @required this.rating,
    @required this.time,
    @required this.typeFood,
    @required this.typeRes,
  });
  String? image;
  String? name;
  String? rate;
  String? rating;
  String? time;
  String? typeRes;
  String? typeFood;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(image!))),
              ),
              Positioned(
                right: 1,
                bottom: 1,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Text(
                      time!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            name!,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Row(
                children: [
                  Icon(Icons.star, color: Colors.red),
                  Text(
                    rate!,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.red),
                  ),
                ],
              ),
              Text('/($rating ratings)   $typeRes -  $typeFood - ')
            ],
          )
        ],
      ),
    );
  }
}
