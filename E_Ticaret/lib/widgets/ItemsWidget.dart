import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../database/FakeDatabase.dart';
import '../pages/ItemPage.dart'; // Import the FakeDatabase

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<int> productIds = [1, 10, 12, 18]; // Product IDs to show

    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int id in productIds)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        CupertinoIcons.sparkles,
                        color: Colors.yellowAccent,
                        size: 35,
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Color(0xFF4C53A5),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ItemPage(product: FakeDatabase.getProductById(id)),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "images/ProductImages/$id.jpg",
                      height: 110,
                      width: 110,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    FakeDatabase.getProductById(id)['name']
                        .toString(), // Use the product's title
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF4C53A5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${FakeDatabase.getProductById(id)['price'].toDouble()}", // Use the product's price
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                      Icon(Icons.add_shopping_cart, color: Color(0xFF4C53A5)),
                    ],
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}
