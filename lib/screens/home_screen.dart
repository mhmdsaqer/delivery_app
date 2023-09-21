import 'package:delivery_app/constants.dart';
import 'package:delivery_app/widgets/category_widget.dart';
import 'package:delivery_app/widgets/product_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Delivered to',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Current Location',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_downward,
                            color: Colors.red,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SliverAppBar(
              pinned: true, // Make the TextField row fixed
              backgroundColor: Colors.white,
              expandedHeight: 80.0, // Adjust the height as needed
              flexibleSpace: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: 'Search...',
                          filled: true,
                          fillColor: Colors.grey[200],
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.red,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 150.0, // Adjust the height as needed
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Constants.categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: CatergoryWidget(
                          Constants.categories[index]['image'],
                          Constants.categories[index]['name']),
                    );
                  },
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    child: ProductWidget(
                        image: Constants.products[index]['image'],
                        name: Constants.products[index]['name'],
                        rate: Constants.products[index]['rate'],
                        rating: Constants.products[index]['rating'],
                        time: Constants.products[index]['time'],
                        typeFood: Constants.products[index]['typeFood'],
                        typeRes: Constants.products[index]['typeRes']),
                  );
                },
                childCount: Constants.products.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
