import '../pages/ItemPage.dart';
import 'package:flutter/material.dart';

class ProductListPage extends StatefulWidget {
  final Map<String, dynamic> product;

  ProductListPage({required this.product});

  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  String? sortOption;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> products = List.from(widget.product['products']);

    if (sortOption == 'ascending') {
      products.sort((a, b) => a['price'].compareTo(b['price']));
    } else if (sortOption == 'descending') {
      products.sort((a, b) => b['price'].compareTo(a['price']));
    }

    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text(widget.product['cat_name']),
        backgroundColor: Color(0xCC8C8CEC),
        actions: [
          IconButton(
            icon: Icon(Icons.sort),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Sıralama Seçenekleri'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text('Fiyata Göre Artan'),
                          onTap: () {
                            setState(() {
                              sortOption = 'ascending';
                            });
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: Text('Fiyata Göre Azalan'),
                          onTap: () {
                            setState(() {
                              sortOption = 'descending';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(5),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final item = products[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemPage(product: item),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.symmetric(
                vertical: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), 
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            "images/ProductImages/${item['id']}.jpg",
                            width: 150,
                            height: 150,
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${item['name']}',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 30),
                          Text(
                            '\$${item['price']}',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
