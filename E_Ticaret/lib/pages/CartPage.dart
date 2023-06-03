import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/CartData.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sepet"),
        backgroundColor: Color(0xCC8C8CEC),
      ),

      body: ListView.builder(
        itemCount: CartItem.cartItems.length,
        itemBuilder: (context, index) {
          CartItem item = CartItem.cartItems[index];
          return Container(
            height: 130,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.only(right: 15),
                  child: Image.asset("images/ProductImages/${item.id}.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.name.toString(),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                      Text(
                        "\$${item.price}",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(flex: 4),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    CartItem.removeCartItem(item);
                                  });
                                },
                                child: Icon(CupertinoIcons.trash_fill,
                                    size: 14, color: Colors.red),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(5, 5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10), // Butonu yuvarlak yapmak için
                                  ),
                                  padding: EdgeInsets.all(2),
                                  backgroundColor: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                //padding: EdgeInsets.all(4),

                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if (item.quantity > 1) {
                                        item.quantity--;
                                      } else {
                                        CartItem.removeCartItem(item);
                                      }
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(8, 8),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          15), // Butonu yuvarlak yapmak için
                                    ),
                                    padding: EdgeInsets.all(0),
                                    backgroundColor: Color(0xFF4C53A5),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  item.quantity.toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Color(0xFF4C53A5),
                                  ),
                                ),
                              ),
                              Container(
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      item.quantity++;
                                    });
                                  },
                                  child: Icon(
                                    Icons.add,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(8, 8),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          15), // Butonu yuvarlak yapmak için
                                    ),
                                    padding: EdgeInsets.all(0),
                                    backgroundColor: Color(0xFF4C53A5),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          height: 130,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Toplam",
                    style: TextStyle(
                      color: Color(0xFF4C53A5),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\$${CartItem.calculateTotalPrice().toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000F97),
                    ),
                  )
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF000F97),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Alışverişi Tamamla",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ), //CartBottomNavBar(),
    );
  }
}
